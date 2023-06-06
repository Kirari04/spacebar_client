// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/sub_navigation_me_button.dart';
import 'package:spacebar_client/components/sub_navigation_userbar.dart';

import '../models/app_state.dart';
import '../models/theme_colors.dart';

class SubNavigation extends StatefulWidget {
  SubNavigation({super.key, required this.appState});
  AppState appState;

  @override
  State<SubNavigation> createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    items.add(
      SubNavigationMeButton(
        appState: widget.appState,
        title: "Friends",
        statusEnabled: false,
      ),
    );
    items.add(P(
      text: 'Direktnachrichten'.toUpperCase(),
      fontSize: 14,
    ));

    if (widget.appState.usersMeChannelsList != null) {
      items.addAll(
        widget.appState.usersMeChannelsList!.map(
          (usersMeChannel) => SubNavigationMeButton(
            appState: widget.appState,
            title: "${usersMeChannel.name}",
            subtitle: "${usersMeChannel.recipients!.map((e) => e.username)}",
            image: "assets/example_profile.png",
            status: "offline",
            closable: true,
          ),
        ),
      );
    }
    return Container(
        height: MediaQuery.of(context).size.height,
        width: 250,
        decoration: BoxDecoration(color: ThemeColors.primaryColorMid),
        child: Flex(
          direction: Axis.vertical,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      title: items.elementAt(index),
                    );
                  },
                ),
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
