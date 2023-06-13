import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/guilds_channels.dart';
import 'package:spacebar_client/models/res.dart';

Future<ApiRes<List<GuildsChannels>, String>> apiGetGuildsChannels({
  required AppState appState,
  required String guildId,
  Duration cacheExpire = const Duration(minutes: 10),
  bool noCache = false,
}) async {
  final cacheKey = "apiGetGuildsChannels-$guildId";
  const logFuncName = "apiGetGuildsChannels";
  appState.addLogs(LogType.info, "run $logFuncName");

  String jsonResponse = "";
  if (appState.prefs!.containsKey(cacheKey) && !noCache) {
    jsonResponse = appState.prefs!.getString(cacheKey)!;
  } else {
    final response = await http.get(
        Uri.parse('${appState.apiEndpoint}/guilds/$guildId/channels'),
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
    jsonResponse = response.body;

    if (!noCache) {
      appState.prefs!.setString(cacheKey, jsonResponse);
      Future.delayed(cacheExpire, () {
        appState.prefs!.remove(cacheKey);
      });
    }
    if (noCache) {
      appState.prefs!.remove(cacheKey);
    }
  }

  List<GuildsChannels> res = [];
  try {
    appState.addLogs(LogType.info, "parse $logFuncName");
    List<dynamic> jsonResult = jsonDecode(jsonResponse);
    for (var value in jsonResult) {
      res.add(GuildsChannels.fromJson(value));
    }
  } catch (e) {
    appState.addLogs(LogType.warning, "parse error $logFuncName: $e");
  }

  appState.addLogs(LogType.info, "return $logFuncName");
  return ApiRes(
    statusCode: 200,
    message: "ok",
    response: res,
  );
}
