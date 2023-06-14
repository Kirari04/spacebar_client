// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/models/app_state.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.appState,
  });
  AppState appState;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: H1(title: "#Home"),
      ),
    );
  }
}
