import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/users_me.dart';

Future<ApiRes<UsersMe, String>> apiGetUsersMe(
  AppState appState,
) async {
  final response = await http.get(
      Uri.parse('${appState.apiEndpoint}/users/@me'),
      headers: <String, String>{
        'Authorization': "Bearer ${appState.userLoginSession?.token}",
      });
  apiStatusHook(response.statusCode);
  if (response.statusCode != 200) {
    return ApiRes(
      statusCode: response.statusCode,
      message: "error",
      error: response.body,
    );
  }

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: UsersMe.fromJson(jsonDecode(response.body)),
  );
}
