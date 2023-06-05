import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/users_me_channels.dart';

Future<ApiRes<UsersMeChannels, String>> apiGetUsersMeChannels(
  AppState appState,
) async {
  final response = await http.get(
      Uri.parse('${appState.apiEndpoint}/users/@me/channels'),
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
    response: UsersMeChannels.fromJson(jsonDecode(response.body)),
  );
}
