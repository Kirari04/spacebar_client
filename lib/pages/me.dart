import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/models/app_state.dart';

class MePage extends StatefulWidget {
  MePage({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<MePage> createState() => _MePageState(appState: appState);
}

class _MePageState extends State<MePage> {
  _MePageState({
    required this.appState,
  });
  AppState appState;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: H1(title: "@Me Page"),
      ),
    );
  }
}
