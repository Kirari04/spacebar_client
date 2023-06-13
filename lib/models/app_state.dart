import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacebar_client/api_wrapper/get_users_me.dart';
import 'package:spacebar_client/api_wrapper/ping.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/users_me.dart';
import 'package:spacebar_client/models/users_me_channels.dart';
import 'package:spacebar_client/models/users_me_guilds.dart';

import '../api_wrapper/get_users_me_channels.dart';
import '../api_wrapper/get_users_me_guilds.dart';
import 'login.dart';

enum LogType { info, warning, error }

class AppState {
  // API RELATED DATA
  bool _apiOnline = false;
  String apiEndpoint;
  String cdnEndpoint;

  // CLIENT RELATED DATA
  String appName;
  final LogType _logType = LogType.info;
  final bool _logStdOut = true;

  // USER RELATED STATE DATA
  String _logs = "";
  bool _userAuthenticated = false;
  bool userTryAuthenticate = false;
  LoginRes? userLoginSession;
  UsersMe? userMeData;
  UsersMeGuilds? _activeGuild;
  List<UsersMeGuilds>? usersMeGuildsList;
  List<UsersMeChannels>? usersMeChannelsList;

  // INPUT CONTROLLERS
  TextEditingController userLoginUsernameInputController =
      TextEditingController(text: "");
  TextEditingController userLoginPasswordInputController =
      TextEditingController(text: "");
  TextEditingController userConfigCdnServerInputController =
      TextEditingController(text: "");

  // PAGE INDEXES
  int defaultLayoutPageState = 0;
  int meLayoutPageState = 0;
  List<Widget> popupList = [];

  void popupListOpen(Widget popup) {
    setState!(() {
      popupList.add(popup);
    });
  }

  void popupListClose() {
    setState!(() {
      popupList = [];
    });
  }

  void popupListBack() {
    setState!(() {
      popupList.removeLast();
    });
  }

  // CALLBACKS
  void Function(void Function())? setState;

  // CONSTRUCKTOR
  AppState({
    required this.apiEndpoint,
    required this.cdnEndpoint,
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

  void setActiveGuild(UsersMeGuilds? openNewGuild) {
    if (openNewGuild != null) {
      _activeGuild = openNewGuild;
    }
  }

  UsersMeGuilds? getActiveGuild() {
    return _activeGuild;
  }

  bool getUserAuthenticated() {
    return _userAuthenticated;
  }

  void addLogs(LogType type, String logMessage) {
    if (_logStdOut && kDebugMode) {
      // ignore: avoid_print
      print("${DateTime.now().toIso8601String()} [$type] $logMessage\n");
    }
    if (_logType == LogType.info) {
      _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
    } else if (_logType == LogType.warning &&
        (type == LogType.warning || type == LogType.error)) {
      _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
    } else if (_logType == LogType.error && type == LogType.error) {
      _logs += "${DateTime.now().toIso8601String()} [$type] $logMessage\n";
    }
  }

  String getLogs() {
    return _logs;
  }

  void setUserAuthenticated(bool value) {
    _userAuthenticated = value;
    if (value == true) {
      updateMeData();
    }
  }

  // LOOP FUNCTIONS
  void run() {
    AuthData.getSession().then((value) async {
      userLoginSession = value;
      await _setVarsFromPref();
      _isApiOnlineLoop();
      _isUserAuthenticatedLoop();
    });
  }

  Future _setVarsFromPref() async {
    final prefs = await SharedPreferences.getInstance();
    String? apiEndpointSaved = prefs.getString("apiEndpoint");
    if (apiEndpointSaved != null) {
      setState!(() {
        apiEndpoint = apiEndpointSaved;
      });
    }
    String? cdnEndpointSaved = prefs.getString("cdnEndpoint");
    if (cdnEndpointSaved != null) {
      setState!(() {
        cdnEndpoint = cdnEndpointSaved;
      });
    }
  }

  void _isApiOnlineLoop() async {
    while (true) {
      isApiOnlineLoop();
      await Future.delayed(Duration(seconds: _apiOnline ? 15 : 2), () {});
    }
  }

  void isApiOnlineLoop() async {
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
  }

  void _isUserAuthenticatedLoop() async {
    while (true) {
      if (!getApiOnline()) {
        await Future.delayed(const Duration(seconds: 1), () {});
        continue;
      }
      isUserAuthenticatedLoop();
      await Future.delayed(const Duration(seconds: 30), () {});
    }
  }

  void isUserAuthenticatedLoop() async {
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
  }

//  Updating Async data
  void updateMeData() {
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
