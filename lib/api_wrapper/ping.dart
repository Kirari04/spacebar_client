import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/ping.dart';
import 'package:spacebar_client/models/res.dart';

Future<ApiRes<PingRes, dynamic>> apiGetPing(
  AppState appState,
) async {
  final response = await http.get(Uri.parse('${appState.apiEndpoint}/ping'));
  apiStatusHook(response.statusCode);
  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: PingRes.fromJson(jsonDecode(response.body)),
  );
}
