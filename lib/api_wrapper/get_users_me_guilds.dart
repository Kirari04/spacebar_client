import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/users_me_guilds.dart';

Future<ApiRes<List<UsersMeGuilds>, String>> apiGetUsersMeGuilds(
  AppState appState,
) async {
  final response = await http.get(
      Uri.parse('${appState.apiEndpoint}/users/@me/guilds'),
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

  List<UsersMeGuilds> res = [];
  List<dynamic> jsonResult = jsonDecode(response.body);
  for (var value in jsonResult) {
    res.add(UsersMeGuilds.fromJson(value));
  }

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: res,
  );
}
