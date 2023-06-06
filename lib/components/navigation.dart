// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation_button.dart';
import 'package:spacebar_client/components/navigation_line.dart';
import 'package:spacebar_client/models/app_nav.dart';
import 'package:spacebar_client/models/app_state.dart';

class Navigation extends StatefulWidget {
  Navigation({
    super.key,
    required this.appState,
  });

  AppState appState;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    Iterable<NavigationButton> guildList = [];
    if (widget.appState.usersMeGuildsList != null) {
      guildList =
          widget.appState.usersMeGuildsList!.map((e) => NavigationButton(
                title: "${e.name}",
                onPressed: () {
                  AppNav.goGuild(widget.appState, e);
                },
              ));
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      width: 80,
      decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
      child: SingleChildScrollView(
        child: Column(children: [
          NavigationButton(
            isOnline: widget.appState.getApiOnline(),
            showIsOnline: true,
            title: "Home",
            svg: 'assets/logo.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              AppNav.goMe(widget.appState);
            },
          ),
          const NavigationLine(
            height: 2,
          ),
          ...guildList,
          NavigationButton(
            title: "Add Server",
            svg: 'assets/plus.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              AppNav.goHome(widget.appState);
            },
          ),
        ]),
      ),
    );
  }
}
