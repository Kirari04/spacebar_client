import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/layouts/chat_column.dart';
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
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ChatColumnLayout(
          appState: widget.appState,
          slot: const Center(
            child: H1(
              title: "@Me Page",
            ),
          ),
        ),
      ),
    );
  }
}
