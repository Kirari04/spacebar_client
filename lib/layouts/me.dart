import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/layouts/chat_column.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/pages/me.dart';

class MeLayout extends StatefulWidget {
  MeLayout({super.key, required this.appState});
  AppState appState;

  @override
  State<MeLayout> createState() => _MeLayoutState();
}

class _MeLayoutState extends State<MeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ChatColumnLayout(
          appState: widget.appState,
          slot: IndexedStack(
            index: widget.appState.meLayoutPageState,
            children: [
              MePage(appState: widget.appState),
            ],
          ),
        ),
      ),
    );
  }
}
