import 'package:flutter/material.dart';
import 'package:spacebar_client/api_wrapper/get_guilds_channels.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/users_me_guilds.dart';

import '../pages/config.dart';

@immutable
class AppNav {
  static void goHome(AppState appState) {
    _resetOnNav(appState);
    appState.addLogs(LogType.info, "AppNav goHome");
    appState.setState!(() {
      appState.defaultLayoutPageState = 0;
    });
  }

  static void goMe(AppState appState) {
    _resetOnNav(appState);
    appState.addLogs(LogType.info, "AppNav goMe");
    appState.updateMeData();
    appState.setState!(() {
      appState.defaultLayoutPageState = 1;
    });
  }

  static void goGuild({
    required AppState appState,
    required UsersMeGuilds newActiveGuild,
    bool noCache = false,
  }) async {
    _resetOnNav(appState);
    appState.addLogs(LogType.info, "AppNav goGuild ${newActiveGuild.id}");
    appState.setState!(() {
      appState.setActiveGuild(newActiveGuild);
      appState.setActiveGuildChannels([]);
      appState.defaultLayoutPageState = 2;
    });
    apiGetGuildsChannels(
            appState: appState, guildId: newActiveGuild.id!, noCache: noCache)
        .then((value) {
      if (value.response != null) {
        appState.setState!(() {
          appState.setActiveGuildChannels(value.response!);
        });
      }
    });
  }

  static void goConfig(AppState appState, BuildContext context) {
    _resetOnNav(appState);
    appState.addLogs(LogType.info, "AppNav goConfig");
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (builder) => ConfigPage(appState: appState),
      ),
    );
  }

  static void _resetOnNav(AppState appState) {
    appState.setState!(() {
      appState.showPupupGuildSettings = false;
    });
  }
}
