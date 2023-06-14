import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/sidebar_top_server.dart';
import 'package:spacebar_client/layouts/sidebar_column.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/pages/guild.dart';

class GuildLayout extends StatefulWidget {
  GuildLayout({super.key, required this.appState});
  AppState appState;
  @override
  State<GuildLayout> createState() => _GuildLayoutState();
}

class _GuildLayoutState extends State<GuildLayout> {
  @override
  Widget build(BuildContext context) {
    List<Widget> sidebarItems = [];
    Widget? topSlot;
    if (widget.appState.getActiveGuild() != null) {
      topSlot = SidebarTopServer(appState: widget.appState);
    }

    if (widget.appState.getActiveGuildChannels().isNotEmpty) {
      sidebarItems.addAll(widget.appState.getActiveGuildChannels().map((e) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: P(text: "# ${e.name}"),
        );
      }));
    }
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SidebarColumnLayout(
          topSlot: topSlot,
          sidebarItems: sidebarItems,
          appState: widget.appState,
          slot: IndexedStack(
            index: widget.appState.guildLayoutPageState,
            children: [
              GuildPage(appState: widget.appState),
            ],
          ),
        ),
      ),
    );
  }
}
