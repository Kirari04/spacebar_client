import 'package:flutter/material.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/users_me_guilds.dart';

import '../pages/config.dart';

@immutable
class AppNav {
  static void goHome(AppState appState) {
    appState.addLogs(LogType.info, "AppNav goHome");
    appState.setState!(() {
      appState.defaultLayoutPageState = 0;
    });
  }

  static void goMe(AppState appState) {
    appState.addLogs(LogType.info, "AppNav goMe");
    appState.updateMeData();
    appState.setState!(() {
      appState.defaultLayoutPageState = 1;
    });
  }

  static void goGuild(AppState appState, UsersMeGuilds newActiveGuild) {
    appState.addLogs(LogType.info, "AppNav goGuild");
    appState.setState!(() {
      appState.setActiveGuild(newActiveGuild);
      appState.defaultLayoutPageState = 2;
    });
  }

  static void goConfig(AppState appState, BuildContext context) {
    appState.addLogs(LogType.info, "AppNav goConfig");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => ConfigPage(appState: appState),
      ),
    );
  }
}
