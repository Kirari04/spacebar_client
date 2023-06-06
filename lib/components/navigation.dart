// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/app_nav.dart';
import '../models/app_state.dart';
import '../models/theme_colors.dart';
import 'navigation_button.dart';
import 'navigation_line.dart';

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
    List<Widget> guildList = [];
    guildList.add(
      NavigationButton(
        defaultHighlighted: false,
        isHighlightable: true,
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
    );
    guildList.add(const NavigationLine(
      height: 2,
    ));
    if (widget.appState.usersMeGuildsList != null) {
      guildList.addAll(
        widget.appState.usersMeGuildsList!.map(
          (e) => NavigationButton(
            isActive: (e.id == widget.appState.getActiveGuild()?.id &&
                widget.appState.defaultLayoutPageState == 2),
            isHighlightable: true,
            title: "${e.name}",
            onPressed: () {
              AppNav.goGuild(widget.appState, e);
            },
          ),
        ),
      );
    }

    guildList.add(
      NavigationButton(
        isCircle: true,
        primaryColor: const ThemeColors().successColorDark,
        primaryBackgroundColor: const ThemeColors().primaryColorLight,
        secundaryColor: Colors.white,
        secundaryBackgroundColor: const ThemeColors().successColorDark,
        title: "Add Server",
        svg: 'assets/plus.svg',
        unrounded: true,
        padding: 14,
        onPressed: () {
          AppNav.goHome(widget.appState);
        },
      ),
    );

    return Container(
      clipBehavior: Clip.none,
      height: MediaQuery.of(context).size.height,
      width: 80,
      decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: Column(
          children: guildList,
        ),
      ),
    );
  }
}
