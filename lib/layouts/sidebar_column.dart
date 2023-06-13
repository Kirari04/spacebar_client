// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/components/sub_navigation.dart';
import 'package:spacebar_client/models/app_state.dart';

class SidebarColumnLayout extends StatefulWidget {
  SidebarColumnLayout(
      {super.key,
      required this.appState,
      required this.slot,
      required this.sidebarItems});
  AppState appState;
  Widget slot;
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
        SubNavigation(
          items: widget.sidebarItems,
          appState: widget.appState,
        ),
        Expanded(child: widget.slot),
      ],
    );
  }
}
