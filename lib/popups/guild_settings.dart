import 'package:flutter/material.dart';
import 'package:spacebar_client/components/guild_settings_button.dart';
import 'package:spacebar_client/components/navigation_line.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class GuildSettingsPopup extends StatefulWidget {
  GuildSettingsPopup({super.key, required this.appState});
  AppState appState;
  @override
  State<GuildSettingsPopup> createState() => _GuildSettingsPopupState();
}

class _GuildSettingsPopupState extends State<GuildSettingsPopup> {
  bool showChannels = true;

  List<Widget> defaultList = [];
  List<Widget> ownerList = [];

  List<List<Widget>> lists = [];
  int activeListIndex = 0;

  @override
  void initState() {
    super.initState();

    defaultList = [
      GuildSettingsButton(
        text: "Server-Boost",
        svg: "assets/diamond.svg",
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Leute einladen",
        svg: "assets/person_add.svg",
        color: ThemeColors.secundaryFontVibe,
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Alle Kanäle anzeigen",
        svg: showChannels
            ? "assets/check_box.svg"
            : "assets/check_box_blank.svg",
        onTap: () {
          setState(() {
            showChannels = !showChannels;
          });
        },
      ),
      const SpaceY(height: 5),
      GuildSettingsButton(
        text: "Benachrichtigungseinstellungen",
        svg: "assets/notifications.svg",
        onTap: () {},
      ),
      const SpaceY(height: 5),
      GuildSettingsButton(
        text: "Privatsphäreeinstellungen",
        svg: "assets/privacy_tip.svg",
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Serverprofil bearbeiten",
        svg: "assets/edit.svg",
        onTap: () {},
      ),
      const SpaceY(height: 5),
      GuildSettingsButton(
        text: "Server verlassen",
        svg: "assets/block.svg",
        color: ThemeColors.errorColor,
        hoverBg: ThemeColors.errorColor,
        onTap: () {},
      ),
    ];

    ownerList = [
      GuildSettingsButton(
        text: "Server-Boost",
        svg: "assets/diamond.svg",
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Leute einladen",
        svg: "assets/person_add.svg",
        color: ThemeColors.secundaryFontVibe,
        onTap: () {},
      ),
      GuildSettingsButton(
        text: "Servereinstellungen",
        svg: "assets/settings.svg",
        onTap: () {},
      ),
      GuildSettingsButton(
        text: "Kanal erstellen",
        svg: "assets/add_circle.svg",
        onTap: () {},
      ),
      GuildSettingsButton(
        text: "Kategorie erstellen",
        svg: "assets/create_new_folder.svg",
        onTap: () {},
      ),
      GuildSettingsButton(
        text: "Event erstellen",
        svg: "assets/calendar_add.svg",
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Alle Kanäle anzeigen",
        svg: showChannels
            ? "assets/check_box.svg"
            : "assets/check_box_blank.svg",
        onTap: () {
          setState(() {
            showChannels = !showChannels;
          });
        },
      ),
      const SpaceY(height: 5),
      GuildSettingsButton(
        text: "Benachrichtigungseinstellungen",
        svg: "assets/notifications.svg",
        onTap: () {},
      ),
      const SpaceY(height: 5),
      GuildSettingsButton(
        text: "Privatsphäreeinstellungen",
        svg: "assets/privacy_tip.svg",
        onTap: () {},
      ),
      const NavigationLine(height: 2, widthFactor: .9),
      GuildSettingsButton(
        text: "Serverprofil bearbeiten",
        svg: "assets/edit.svg",
        onTap: () {},
      ),
    ];

    lists = [
      defaultList,
      ownerList,
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (widget.appState.getActiveGuild()?.ownerId ==
        widget.appState.userMeData?.id) {
      activeListIndex = 1; //owner
    } else {
      activeListIndex = 0; //default
    }

    return AnimatedOpacity(
      curve: Curves.ease,
      duration: const Duration(milliseconds: 250),
      opacity: widget.appState.showPupupGuildSettings ? 1 : 0,
      child: AnimatedScale(
        curve: Curves.ease,
        duration: const Duration(milliseconds: 250),
        scale: widget.appState.showPupupGuildSettings ? 1 : .8,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: FractionallySizedBox(
            widthFactor: 1,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: ThemeColors.primaryColorDark,
                  boxShadow: [
                    BoxShadow(
                      color: ThemeColors.primaryColorLight,
                      blurRadius: 10,
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Flex(
                    direction: Axis.vertical,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: lists.length > activeListIndex
                        ? lists.elementAt(activeListIndex)
                        : [],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
