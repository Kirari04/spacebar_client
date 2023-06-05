import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/users_me.dart';

Future<ApiRes<UsersMe, String>> apiGetUsersMe(
  AppState appState,
) async {
  const logFuncName = "apiGetUsersMe";
  appState.addLogs(LogType.info, "run $logFuncName");
  final response = await http.get(
      Uri.parse('${appState.apiEndpoint}/users/@me'),
      headers: <String, String>{
        'Authorization': "Bearer ${appState.userLoginSession?.token}",
      });
  apiStatusHook(response.statusCode);
  if (response.statusCode != 200) {
    appState.addLogs(LogType.warning,
        "res $logFuncName: status:${response.statusCode} body:${response.body}");
    return ApiRes(
      statusCode: response.statusCode,
      message: "error",
      error: response.body,
    );
  }
  UsersMe? res;
  try {
    appState.addLogs(LogType.info, "parse $logFuncName");
    res = UsersMe.fromJson(jsonDecode(response.body));
  } catch (e) {
    appState.addLogs(LogType.warning, "parse error $logFuncName: $e");
  }

  appState.addLogs(LogType.info, "return $logFuncName");
  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: res,
  );
}
