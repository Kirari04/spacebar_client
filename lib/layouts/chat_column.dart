// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/components/sub_navigation.dart';
import 'package:spacebar_client/models/app_state.dart';

class ChatColumnLayout extends StatefulWidget {
  ChatColumnLayout({super.key, required this.appState, required this.slot});
  AppState appState;
  Widget slot;
  @override
  State<ChatColumnLayout> createState() => _ChatColumnLayoutState();
}

class _ChatColumnLayoutState extends State<ChatColumnLayout> {
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      clipBehavior: Clip.hardEdge,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SubNavigation(
          appState: widget.appState,
        ),
        Expanded(child: widget.slot),
      ],
    );
  }
}
