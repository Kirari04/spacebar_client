// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/sub_navigation_me_button.dart';
import 'package:spacebar_client/layouts/sidebar_column.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/pages/me.dart';

class MeLayout extends StatefulWidget {
  MeLayout({super.key, required this.appState});
  AppState appState;

  @override
  State<MeLayout> createState() => _MeLayoutState();
}

class _MeLayoutState extends State<MeLayout> {
  @override
  Widget build(BuildContext context) {
    List<Widget> sidebarItems = [];
    sidebarItems.add(Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SubNavigationMeButton(
        appState: widget.appState,
        title: "Friends",
        statusEnabled: false,
      ),
    ));
    sidebarItems.add(Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: P(
          text: 'Direktnachrichten'.toUpperCase(),
          fontSize: 14,
        )));

    if (widget.appState.usersMeChannelsList != null) {
      sidebarItems.addAll(
        widget.appState.usersMeChannelsList!.map(
          (usersMeChannel) => Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: SubNavigationMeButton(
              appState: widget.appState,
              title: "${usersMeChannel.name}",
              subtitle: "${usersMeChannel.recipients!.map((e) => e.username)}",
              image: "assets/example_profile.png",
              status: "offline",
              closable: true,
            ),
          ),
        ),
      );
    }
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SidebarColumnLayout(
          sidebarItems: sidebarItems,
          appState: widget.appState,
          slot: IndexedStack(
            index: widget.appState.meLayoutPageState,
            children: [
              MePage(appState: widget.appState),
            ],
          ),
        ),
      ),
    );
  }
}
