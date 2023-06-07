// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/models/app_state.dart';

import '../components/h1.dart';

class GuildPage extends StatefulWidget {
  GuildPage({super.key, required this.appState});

  AppState appState;

  @override
  State<GuildPage> createState() => _GuildPageState();
}

class _GuildPageState extends State<GuildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: Axis.vertical,
          children: [
            const H1(title: "Guild Page"),
            P(text: "${widget.appState.getActiveGuild()?.name}"),
            P(text: "${widget.appState.getActiveGuild()?.description}"),
            SelectableText(
                "${widget.appState.cdnEndpoint}/icons/${widget.appState.getActiveGuild()?.id}/${widget.appState.getActiveGuild()?.icon}"),
          ],
        ),
      ),
    );
  }
}
