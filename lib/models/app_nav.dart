import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar_client/models/app_state.dart';

@immutable
class AppNav {
  static void goHome(AppState appState) {
    appState.setState!(() {
      appState.defaultLayoutPageState = 0;
    });
  }

  static void goMe(AppState appState) {
    appState.setState!(() {
      appState.defaultLayoutPageState = 1;
    });
  }
}
