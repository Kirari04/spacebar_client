// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/button_icon_next.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';
import 'package:spacebar_client/popups/join_guild_create.dart';

class JoinGuildPopup extends StatefulWidget {
  JoinGuildPopup({super.key, required this.appState});
  AppState appState;
  @override
  State<JoinGuildPopup> createState() => _JoinGuildPopupState();
}

class _JoinGuildPopupState extends State<JoinGuildPopup> {
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
                const H1(title: "Server Erstellen"),
                P(text: "Touch some grass!", color: ThemeColors.secundaryFont),
                const SpaceY(height: 20),
                ButtonIconNext(
                    title: "Selbst Erstellen",
                    onTap: () {
                      widget.appState.popupListOpen(
                          JoinGuildCreate(appState: widget.appState));
                    }),
                const SpaceY(height: 20),
                Align(
                  alignment: Alignment.centerLeft,
                  child: P(
                    text: "Mit einer Vorlage starten".toUpperCase(),
                    color: ThemeColors.secundaryFont,
                    fontSize: 12,
                  ),
                ),
                const SpaceY(height: 10),
                ButtonIconNext(title: "Gaming", onTap: () {}),
                ButtonIconNext(title: "Schulklub", onTap: () {}),
                ButtonIconNext(title: "Lerngruppe", onTap: () {}),
                const SpaceY(height: 20),
                const H1(
                  title: "Hast du schon eine Einladung?",
                  textAlign: TextAlign.center,
                ),
                const SpaceY(height: 10),
                Button(
                  text: "Tritt einem Server bei",
                  onPressed: () {},
                  color: ThemeColors.secundaryFont,
                  backgroundColor: ThemeColors.primaryColorLightLight,
                  expandX: true,
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
