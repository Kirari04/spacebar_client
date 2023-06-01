import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/models/ping.dart';

class AppState {
  bool apiOnline = false;
  String apiEndpoint;
  String appName;

  final rootNavigatorKey = GlobalKey<NavigatorState>();
  final mainNavigatorKey = GlobalKey<NavigatorState>();
  BuildContext? mainNavigationContext;

  void Function(void Function())? setState;
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
    this.apiOnline = false,
    this.mainNavigationContext,
  });

  void run() {
    isApiOnlineLoop();
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
}
