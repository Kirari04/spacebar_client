import 'package:flutter/widgets.dart';
import 'package:spacebar_client/api_wrapper/get_users_me.dart';
import 'package:spacebar_client/api_wrapper/ping.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/users_me.dart';

import 'login.dart';

class AppState {
  bool _apiOnline = false;
  String apiEndpoint;

  String appName;

  bool _userAuthenticated = false;
  bool userTryAuthenticate = false;
  LoginRes? userLoginSession;
  UsersMe? userMeData;

  TextEditingController userLoginUsernameInputController =
      TextEditingController(text: "");
  TextEditingController userLoginPasswordInputController =
      TextEditingController(text: "");

  int defaultLayoutPageState = 0;

  void Function(void Function())? setState;
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
  });

  bool getApiOnline() {
    return _apiOnline;
  }

  void setApiOnline(bool value) {
    _apiOnline = value;
  }

  bool getUserAuthenticated() {
    return _userAuthenticated;
  }

  void setUserAuthenticated(bool value) {
    _userAuthenticated = value;
    if (value == true) {
      apiGetUsersMe(this).then((value) {
        if (value.response != userMeData) {
          setState!(() {
            userMeData = value.response;
          });
        }
      });
    }
  }

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
