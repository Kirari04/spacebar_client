import 'package:flutter/widgets.dart';
import 'package:spacebar_client/api_wrapper/get_users_me.dart';
import 'package:spacebar_client/api_wrapper/get_users_me_channels.dart';
import 'package:spacebar_client/api_wrapper/ping.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/users_me.dart';
import 'package:spacebar_client/models/users_me_channels.dart';
import 'package:spacebar_client/models/users_me_guilds.dart';

import '../api_wrapper/get_users_me_guilds.dart';
import 'login.dart';

enum LogType { info, warning, error }

class AppState {
  // API RELATED DATA
  bool _apiOnline = false;
  String apiEndpoint;

  // CLIENT RELATED DATA
  String appName;
  LogType _logType = LogType.info;
  bool _logStdOut = true;

  // USER RELATED STATE DATA
  String _logs = "";
  bool _userAuthenticated = false;
  bool userTryAuthenticate = false;
  LoginRes? userLoginSession;
  UsersMe? userMeData;
  List<UsersMeGuilds>? usersMeGuildsList;
  List<UsersMeChannels>? usersMeChannelsList;

  // INPUT CONTROLLERS
  TextEditingController userLoginUsernameInputController =
      TextEditingController(text: "");
  TextEditingController userLoginPasswordInputController =
      TextEditingController(text: "");

  // PAGE INDEXES
  int defaultLayoutPageState = 0;

  // CALLBACKS
  void Function(void Function())? setState;

  // CONSTRUCKTOR
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
  });

  // GETTERS AND SETTERS FOR PRIVATE VARIABLES
  bool getApiOnline() {
    return _apiOnline;
  }

  void setApiOnline(bool value) {
    _apiOnline = value;
  }

  bool getUserAuthenticated() {
    return _userAuthenticated;
  }

  void addLogs(LogType type, String logMessage) {
    print("${DateTime.now().toIso8601String()} [$type] $logMessage\n");
    setState!(() {
      if (_logType == LogType.info) {
        _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
      } else if (_logType == LogType.warning &&
          (type == LogType.warning || type == LogType.error)) {
        _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
      } else if (_logType == LogType.error && type == LogType.error) {
        _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
      }
    });
  }

  String getLogs() {
    return _logs;
  }

  void setUserAuthenticated(bool value) {
    _userAuthenticated = value;
    print("run setUserAuthenticated: ${userLoginSession?.token}");
    if (value == true) {
      apiGetUsersMe(this).then((value) {
        if (value.response != userMeData) {
          setState!(() {
            userMeData = value.response;
          });
        }
      });
      apiGetUsersMeGuilds(this).then((value) {
        if (value.response != usersMeGuildsList) {
          setState!(() {
            usersMeGuildsList = value.response;
          });
        }
      });
      apiGetUsersMeChannels(this).then((value) {
        if (value.response != usersMeChannelsList) {
          setState!(() {
            usersMeChannelsList = value.response;
          });
        }
      });
    }
  }

  // LOOP FUNCTIONS
  void run() {
    AuthData.getSession().then((value) {
      userLoginSession = value;
      isApiOnlineLoop();
      isUserAuthenticatedLoop();
    });
  }

  void isApiOnlineLoop() async {
    while (true) {
      apiGetPing(this).then((value) {
        if (_apiOnline != true) {
          setState!(() {
            _apiOnline = true;
          });
        }
      }).catchError((err) {
        if (_apiOnline != false) {
          setState!(() {
            _apiOnline = false;
          });
        }
      });
      await Future.delayed(Duration(seconds: _apiOnline ? 30 : 2), () {});
    }
  }

  void isUserAuthenticatedLoop() async {
    while (true) {
      if (!getApiOnline()) {
        await Future.delayed(const Duration(seconds: 1), () {});
        continue;
      }
      apiGetUsersMe(this).then((value) {
        if (userTryAuthenticate != true) {
          setState!(() {
            userTryAuthenticate = true;
          });
        }
        if (value.statusCode == 200) {
          if (getUserAuthenticated() != true) {
            setState!(() {
              setUserAuthenticated(true);
            });
          }
        } else {
          if (getUserAuthenticated() != false) {
            setState!(() {
              setUserAuthenticated(false);
            });
          }
        }
      }).catchError((err) {
        if (getUserAuthenticated() != false) {
          setState!(() {
            setUserAuthenticated(false);
          });
        }
      });
      await Future.delayed(const Duration(seconds: 30), () {});
    }
  }
}
