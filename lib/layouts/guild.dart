import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/p.dart';
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
    if (widget.appState.getActiveGuildChannels() != null) {
      sidebarItems.addAll(widget.appState.getActiveGuildChannels().map((e) {
        return P(text: "# ${e.name}");
      }));
    }
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SidebarColumnLayout(
          appState: widget.appState,
          slot: IndexedStack(
            index: widget.appState.guildLayoutPageState,
            children: [
              GuildPage(appState: widget.appState),
            ],
          ),
          sidebarItems: sidebarItems,
        ),
      ),
    );
  }
}
