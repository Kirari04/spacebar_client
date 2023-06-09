// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/models/app_state.dart';

class MePage extends StatefulWidget {
  MePage({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Flex(
        direction: Axis.vertical,
        children: [
          const H1(
            title: "@Me Page",
          ),
          P(text: "Username: ${widget.appState.userMeData?.username}"),
          P(text: "E-Mail: ${widget.appState.userMeData?.email}"),
          P(text: "Discriminator: ${widget.appState.userMeData?.discriminator}"),
          P(text: "guilds: ${widget.appState.usersMeGuildsList?.length}"),
          P(text: "channels: ${widget.appState.usersMeChannelsList?.length}"),
        ],
      ),
    );
  }
}
