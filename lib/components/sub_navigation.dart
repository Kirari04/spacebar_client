// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/sub_navigation_me_button.dart';
import 'package:spacebar_client/data/auth_data.dart';

import '../models/app_nav.dart';
import '../models/app_state.dart';
import '../models/colors.dart';
import '../models/users_me_channels.dart';

class SubNavigation extends StatefulWidget {
  SubNavigation({super.key, required this.appState, this.usersMeChannels});
  AppState appState;
  UsersMeChannels? usersMeChannels;

  @override
  State<SubNavigation> createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation> {
  String userState = "offline";
  List<Widget> items = [];

  @override
  void initState() {
    super.initState();

    AuthData.getSession().then((value) {
      if (value != null) {
        setState(() {
          userState = "${value.settings!.status}";
        });
      }
    });
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

    if (widget.usersMeChannels != null &&
        widget.usersMeChannels!.recipients != null) {
      items.addAll(
        widget.usersMeChannels!.recipients!.map(
          (recipient) => SubNavigationMeButton(
            appState: widget.appState,
            title: "${recipient.username}",
            subtitle: "${recipient.discriminator}",
            image: "assets/example_profile.png",
            status: "offline",
            closable: true,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                          title: "${widget.appState.userMeData?.username}",
                          subtitle:
                              "#${widget.appState.userMeData?.discriminator}",
                          image: "assets/example_giphy.gif",
                          status: userState,
                          defaultColor: ThemeColors().primaryColorMidDark,
                          widthFactor: 1,
                          paddingTop: 0,
                        ),
                      ),
                    ),
                    ButtonIcon(
                      svg: "assets/settings.svg",
                      onTap: () {
                        AppNav.goConfig(widget.appState, context);
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
