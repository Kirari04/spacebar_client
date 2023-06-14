// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/components/sub_navigation.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/popups/guild_settings.dart';

class SidebarColumnLayout extends StatefulWidget {
  SidebarColumnLayout({
    super.key,
    required this.appState,
    required this.slot,
    this.topSlot,
    required this.sidebarItems,
  });
  AppState appState;
  Widget slot;
  Widget? topSlot;
  List<Widget> sidebarItems;
  @override
  State<SidebarColumnLayout> createState() => _SidebarColumnLayoutState();
}

class _SidebarColumnLayoutState extends State<SidebarColumnLayout> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      clipBehavior: Clip.hardEdge,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            SubNavigation(
              items: widget.sidebarItems,
              topSlot: widget.topSlot,
              appState: widget.appState,
            ),
            Positioned.fill(
              top: 50,
              bottom: 70,
              child: Visibility(
                visible: widget.appState.showPupupGuildSettings,
                maintainState: true,
                maintainAnimation: true,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: GuildSettingsPopup(appState: widget.appState),
                ),
              ),
            )
          ],
        ),
        Expanded(child: widget.slot),
      ],
    );
  }
}
