import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/models/app_state.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.appState,
  });
  AppState appState;

  @override
  State<HomePage> createState() => _HomePageState(
        appState: appState,
      );
}

class _HomePageState extends State<HomePage> {
  AppState appState;

  _HomePageState({required this.appState});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: H1(title: "Home Page"),
      ),
    );
  }
}