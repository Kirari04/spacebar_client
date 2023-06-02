import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/p.dart';
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
    items.addAll(List.filled(100, 1).map(
      (e) => SubNavigationMeButton(
        appState: widget.appState,
        title: "Flo🅿🅿a, dalilol07, Dalilol",
        subtitle: "3 Mitglieder",
        image: "assets/example_profile.png",
        status: "stop",
        closable: true,
      ),
    ));
    return Container(
        height: MediaQuery.of(context).size.height,
        width: 250,
        decoration: BoxDecoration(color: ThemeColors().primaryColorMid),
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
                color: ThemeColors().primaryColorMidDark,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SubNavigationMeButton(
                          appState: widget.appState,
                          title: "Kirari",
                          subtitle: "Kirari21309#1230",
                          image: "assets/example_giphy.gif",
                          status: "online",
                          defaultColor: ThemeColors().primaryColorMidDark,
                          widthFactor: 1,
                          paddingTop: 0,
                        ),
                      ),
                    ),
                    ButtonIcon(
                      svg: "assets/settings.svg",
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
