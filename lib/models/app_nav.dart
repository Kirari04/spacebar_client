import 'package:flutter/material.dart';
import 'package:spacebar_client/models/app_state.dart';

import '../pages/config.dart';

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

  static void goConfig(AppState appState, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => ConfigPage(appState: appState),
      ),
    );
  }
}
