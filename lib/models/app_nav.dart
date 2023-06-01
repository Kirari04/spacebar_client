import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar_client/models/app_state.dart';

@immutable
class AppNav {
  static void go(AppState appState, Widget slot) {
    Navigator.maybeOf(appState.mainNavigationContext!)!.push(
      MaterialPageRoute(
        builder: (context) => slot,
      ),
    );
  }
}
