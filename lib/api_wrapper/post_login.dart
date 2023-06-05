import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/login.dart';
import 'package:spacebar_client/models/login_error.dart';
import 'package:spacebar_client/models/res.dart';

Future<ApiRes<LoginRes, LoginResError>> apiPostLogin(
  AppState appState,
  String login,
  String password,
) async {
  const logFuncName = "apiPostLogin";
  appState.addLogs(LogType.info, "run $logFuncName");
  final response = await http.post(
    Uri.parse('${appState.apiEndpoint}/auth/login'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "login": login,
      "password": password,
      "undelete": false,
      "captcha_key": "",
      "login_source": "",
      "gift_code_sku_id": ""
    }),
  );

  apiStatusHook(response.statusCode);
  if (response.statusCode != 200) {
    appState.addLogs(LogType.warning,
        "res $logFuncName: status:${response.statusCode} body:${response.body}");
    LoginResError? res;
    try {
      appState.addLogs(LogType.info, "parse $logFuncName");
      res = LoginResError.fromJson(jsonDecode(response.body));
    } catch (e) {
      appState.addLogs(LogType.warning, "parse error $logFuncName: $e");
    }
    return ApiRes(
      statusCode: response.statusCode,
      message: "error",
      error: res,
    );
  }
  LoginRes? res;
  try {
    appState.addLogs(LogType.info, "parse $logFuncName");
    res = LoginRes.fromJson(jsonDecode(response.body));
  } catch (e) {
    appState.addLogs(LogType.warning, "parse error $logFuncName: $e");
  }

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: res,
  );
}
