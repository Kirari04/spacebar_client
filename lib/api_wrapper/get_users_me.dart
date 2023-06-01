import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/users_me.dart';

Future<ApiRes<UsersMe, bool>> apiGetUsersMe(
  AppState appState,
) async {
  var session = await AuthData.getSession();
  final response = await http.get(
      Uri.parse('${appState.apiEndpoint}/users/@me'),
      headers: <String, String>{
        'Authorization': "Bearer ${session?.token}",
      });
  apiStatusHook(response.statusCode);
  if (response.statusCode != 200) {
    return ApiRes(
      statusCode: response.statusCode,
      message: "Error",
      error: true,
    );
  }

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: UsersMe.fromJson(jsonDecode(response.body)),
  );
}
