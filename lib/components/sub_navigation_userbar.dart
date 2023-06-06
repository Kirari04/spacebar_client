// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/components/sub_navigation_me_button.dart';
import 'package:spacebar_client/models/app_state.dart';

import '../models/app_nav.dart';
import '../models/theme_colors.dart';
import 'button_icon.dart';

class SubNavigationUserbar extends StatefulWidget {
  SubNavigationUserbar({super.key, required this.appState});
  AppState appState;
  @override
  State<SubNavigationUserbar> createState() => _SubNavigationUserbarState();
}

class _SubNavigationUserbarState extends State<SubNavigationUserbar> {
  @override
  Widget build(BuildContext context) {
    return Flex(
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
              subtitle: "#${widget.appState.userMeData?.discriminator}",
              image: "assets/example_giphy.gif",
              status: widget.appState.userLoginSession?.settings?.status ??
                  "offline",
              defaultColor: const ThemeColors().primaryColorMidDark,
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
    );
  }
}
