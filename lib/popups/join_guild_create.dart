// ignore_for_file: must_be_immutable

import 'dart:convert';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacebar_client/api_wrapper/get_users_me_guilds.dart';
import 'package:spacebar_client/api_wrapper/post_guilds.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/input.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/p_error.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/app_nav.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class JoinGuildCreate extends StatefulWidget {
  JoinGuildCreate({super.key, required this.appState});
  AppState appState;
  @override
  State<JoinGuildCreate> createState() => _JoinGuildCreateState();
}

class _JoinGuildCreateState extends State<JoinGuildCreate> {
  bool isLoading = false;
  String guildName = "";
  Uint8List? icon;
  String? iconExt;
  bool iconIsSvg = false;
  TextEditingController guildNameInput = TextEditingController(text: "");
  String? error;

  @override
  void initState() {
    super.initState();
    guildName = "Server von ${widget.appState.userMeData?.username}";
    guildNameInput.text = guildName;
  }

  String uint8ListTob64(Uint8List uint8list) {
    String base64String = base64Encode(uint8list);
    String header = "data:image/png;base64,";
    return header + base64String;
  }

  void chooseFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
        withData: true,
        type: FileType.custom,
        allowedExtensions: ["jpg", "jpeg", "png", "svg", "gif"]);
    if (result != null) {
      setState(() {
        iconIsSvg = (result.files.first.extension! == "svg");
        icon = result.files.first.bytes;
        iconExt = result.files.first.extension!;
        error = "Picked: ${(icon != null)}";
      });
    } else {
      icon = null;
      iconExt = null;
    }
  }

  String validGuildName() {
    String filtered = guildName.replaceAll(RegExp("[^A-Za-z0-9 ]"), '');
    return filtered.substring(0, filtered.length > 40 ? 40 : filtered.length);
  }

  void addGuild() {
    error = null;
    setState(() {
      isLoading = true;
    });
    String? base64Icon;
    if (icon != null) {
      base64Icon = uint8ListTob64(icon!);
    }
    apiPostGuilds(widget.appState, validGuildName(), base64Icon).then((value) {
      if (value.error == null) {
        apiGetUsersMeGuilds(widget.appState).then((newGuildList) {
          if (newGuildList.response != widget.appState.usersMeGuildsList) {
            widget.appState.setState!(() {
              widget.appState.usersMeGuildsList = newGuildList.response;
            });
            for (var usersMeGuild in widget.appState.usersMeGuildsList!) {
              if (usersMeGuild.id == value.response?.id) {
                AppNav.goGuild(widget.appState, usersMeGuild);
              }
            }
            widget.appState.popupListClose();
          }
        });
      } else {
        setState(() {
          isLoading = false;
        });
        error = value.error;
      }
    }).catchError((err) {
      setState(() {
        isLoading = false;
      });
      error = "$err";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 400,
            decoration: BoxDecoration(
              color: ThemeColors.primaryColorMid,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: ThemeColors.primaryColorDark,
                  blurRadius: 10,
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Flex(
              mainAxisSize: MainAxisSize.min,
              direction: Axis.vertical,
              children: [
                const H1(title: "Passe deinen Server an"),
                P(
                    text: "Don't forget about touching grass!",
                    color: ThemeColors.secundaryFont),
                const SpaceY(height: 20),
                Container(
                  height: 100,
                  width: 100,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    color: ThemeColors.primaryColorLight,
                  ),
                  child: icon == null
                      ? const SizedBox.shrink()
                      : iconIsSvg
                          ? SvgPicture.memory(icon!, fit: BoxFit.cover)
                          : Image.memory(icon!, fit: BoxFit.cover),
                ),
                const SpaceY(height: 10),
                Button(
                    text: "Choose FIle",
                    onPressed: () {
                      chooseFile();
                    }),
                const SpaceY(height: 10),
                Align(
                  alignment: Alignment.centerLeft,
                  child: P(
                    text: "Servername".toUpperCase(),
                    color: ThemeColors.secundaryFont,
                    fontSize: 12,
                  ),
                ),
                const SpaceY(height: 10),
                Input(
                  readonly: isLoading,
                  controller: guildNameInput,
                  onChange: (s) {
                    setState(() {
                      guildName = s;
                    });
                  },
                  backgroundHoverColor: ThemeColors.primaryColorLightLight,
                ),
                const SpaceY(height: 10),
                error == null
                    ? const SizedBox.shrink()
                    : PError(text: "$error"),
                const SpaceY(height: 10),
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Button(
                            text: "Zurück",
                            onPressed: () {
                              widget.appState.popupListBack();
                            }),
                      ),
                    ),
                    Button(
                      isLoading: isLoading,
                      text: "Erstellen",
                      onPressed: () {
                        addGuild();
                      },
                      backgroundColor: ThemeColors.primaryColor,
                      color: ThemeColors.primaryFont,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: ButtonIcon(
              svg: "assets/close.svg",
              onTap: () {
                widget.appState.popupListClose();
              },
            ),
          )
        ],
      ),
    );
  }
}
