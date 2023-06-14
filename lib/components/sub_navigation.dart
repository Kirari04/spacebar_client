// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/sub_navigation_userbar.dart';

import '../models/app_state.dart';
import '../models/theme_colors.dart';

class SubNavigation extends StatefulWidget {
  SubNavigation({
    super.key,
    required this.appState,
    required this.items,
    this.topSlot,
  });
  AppState appState;
  List<Widget> items = [];
  Widget? topSlot;

  @override
  State<SubNavigation> createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: 250,
        decoration: BoxDecoration(color: ThemeColors.primaryColorMid),
        child: Flex(
          direction: Axis.vertical,
          children: [
            widget.topSlot != null ? widget.topSlot! : const SizedBox.shrink(),
            Expanded(
              child: ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    minVerticalPadding: 0,
                    contentPadding: EdgeInsets.zero,
                    title: widget.items.elementAt(index),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: ThemeColors.primaryColorMidDark,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SubNavigationUserbar(appState: widget.appState),
              ),
            )
          ],
        ));
  }
}
