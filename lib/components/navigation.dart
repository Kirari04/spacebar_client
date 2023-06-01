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
  State<Navigation> createState() => _NavigationState(
        appState: appState,
      );
}

class _NavigationState extends State<Navigation> {
  AppState appState;
  _NavigationState({
    required this.appState,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 80,
      decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
      child: SingleChildScrollView(
        child: Column(children: [
          NavigationButton(
            isOnline: appState.apiOnline,
            showIsOnline: true,
            title: "Home",
            svg: 'assets/logo.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              AppNav.goMe(appState);
            },
          ),
          const NavigationLine(
            height: 2,
          ),
          ...([0, 1, 2].map((e) => NavigationButton(
                title: "title2",
                onPressed: () {},
              ))),
          NavigationButton(
            title: "Add Server",
            svg: 'assets/plus.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              AppNav.goHome(appState);
            },
          ),
        ]),
      ),
    );
  }
}
