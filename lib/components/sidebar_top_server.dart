// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/sidebar_top.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class SidebarTopServer extends StatefulWidget {
  SidebarTopServer({super.key, required this.appState});
  AppState appState;
  @override
  State<SidebarTopServer> createState() => _SidebarTopServerState();
}

class _SidebarTopServerState extends State<SidebarTopServer> {
  @override
  Widget build(BuildContext context) {
    return SidebarTop(
      slot: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Flex(
              direction: Axis.vertical,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                P(
                  text: "${widget.appState.getActiveGuild()!.name}",
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          ButtonIcon(
            svg: widget.appState.showPupupGuildSettings
                ? "assets/close.svg"
                : "assets/expand.svg",
            padding: widget.appState.showPupupGuildSettings
                ? const EdgeInsets.all(5)
                : EdgeInsets.zero,
            defaultColor: ThemeColors.primaryColorMid,
            onTap: () {
              widget.appState.setState!(() {
                widget.appState.showPupupGuildSettings =
                    !widget.appState.showPupupGuildSettings;
              });
            },
          )
        ],
      ),
    );
  }
}
