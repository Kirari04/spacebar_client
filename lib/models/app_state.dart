import 'package:spacebar_client/models/ping.dart';

class AppState {
  bool apiOnline = false;
  String apiEndpoint;
  String appName;
  void Function(void Function())? setState;
  AppState({
    required this.apiEndpoint,
    required this.appName,
    this.setState,
    this.apiOnline = false,
  });

  void run() {
    isApiOnlineLoop();
  }

  void isApiOnlineLoop() async {
    while (true) {
      print("running ping: $apiOnline");
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
