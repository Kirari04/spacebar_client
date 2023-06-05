import 'package:spacebar_client/api_wrapper/get_users_me.dart';
import 'package:spacebar_client/api_wrapper/ping.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/users_me.dart';

import 'login.dart';

class AppState {
  bool apiOnline = false;
  String apiEndpoint;

  String appName;

  bool userAuthenticated = false;
  bool userTryAuthenticate = false;
  LoginRes? userLoginSession;
  UsersMe? userMeData;

  int defaultLayoutPageState = 0;

  void Function(void Function())? setState;
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
    this.apiOnline = false,
  });

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
        setState!(() {
          apiOnline = true;
        });
      }).catchError((err) {
        setState!(() {
          apiOnline = false;
        });
      });
      await Future.delayed(Duration(seconds: apiOnline ? 30 : 2), () {});
    }
  }

  void isUserAuthenticatedLoop() async {
    while (true) {
      if (!apiOnline) {
        await Future.delayed(const Duration(seconds: 1), () {});
        continue;
      }
      apiGetUsersMe(this).then((value) {
        setState!(() {
          userTryAuthenticate = true;
        });
        if (value.statusCode == 200) {
          setState!(() {
            userAuthenticated = true;
          });
          apiGetUsersMe(this).then((value) {
            setState!(() {
              userMeData = value.response;
            });
          });
        } else {
          setState!(() {
            userAuthenticated = false;
          });
        }
      }).catchError((err) {
        setState!(() {
          userAuthenticated = false;
        });
      });
      await Future.delayed(const Duration(seconds: 30), () {});
    }
  }
}
