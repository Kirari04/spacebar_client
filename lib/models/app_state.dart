import 'package:spacebar_client/api_wrapper/get_users_me.dart';
import 'package:spacebar_client/api_wrapper/ping.dart';

class AppState {
  bool apiOnline = false;
  String apiEndpoint;

  String appName;

  bool userAuthenticated = false;

  int defaultLayoutPageState = 0;

  void Function(void Function())? setState;
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
    this.apiOnline = false,
  });

  void run() {
    isApiOnlineLoop();
    isUserAuthenticatedLoop();
  }

  void isApiOnlineLoop() async {
    while (true) {
      apiGetPing(this).then((value) {
        if (value.statusCode == 200) {
          setState!(() {
            apiOnline = true;
          });
        } else {
          setState!(() {
            apiOnline = false;
          });
        }
      }).catchError((err) {
        setState!(() {
          apiOnline = false;
        });
      });
      await Future.delayed(Duration(seconds: apiOnline ? 30 : 5), () {});
    }
  }

  void isUserAuthenticatedLoop() async {
    while (true) {
      apiGetUsersMe(this).then((value) {
        if (value.statusCode == 200) {
          setState!(() {
            userAuthenticated = true;
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
      await Future.delayed(const Duration(seconds: 60), () {});
    }
  }
}
