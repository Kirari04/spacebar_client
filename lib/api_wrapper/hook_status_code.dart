import 'package:spacebar_client/data/auth_data.dart';

void apiStatusHook(int statusCode) {
  switch (statusCode) {
    case 401:
      AuthData.deleteSession();
      break;
    default:
  }
}
