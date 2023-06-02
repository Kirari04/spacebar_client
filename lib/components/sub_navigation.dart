import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar_client/components/sub_navigation_me_button.dart';

import '../models/app_state.dart';
import '../models/colors.dart';

class SubNavigation extends StatefulWidget {
  SubNavigation({super.key, required this.appState});
  AppState appState;

  @override
  State<SubNavigation> createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation> {
  @override
  Widget build(BuildContext context) {
    var items = List.filled(1000, 1).map((e) => SubNavigationMeButton(
          appState: widget.appState,
          title: "Flo🅿🅿a, dalilol07, Dalilol",
          subtitle: "3 Mitglieder",
        ));
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 250,
      decoration: BoxDecoration(color: ThemeColors().primaryColorMid),
      child: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: items.first,
        ),
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.zero,
            title: items.elementAt(index),
          );
        },
      ),
    );
  }
}
