// PostGuilds
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/api_wrapper/hook_status_code.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/post_guilds.dart';
import 'package:spacebar_client/models/res.dart';

Future<ApiRes<PostGuilds?, String>> apiPostGuilds(
    AppState appState, String guildName, String? icon) async {
  const logFuncName = "apiPapiPostGuildsostGuilds";
  appState.addLogs(LogType.info, "run $logFuncName");
  final response = await http.post(
    Uri.parse('${appState.apiEndpoint}/guilds'),
    headers: <String, String>{
      'Authorization': "Bearer ${appState.userLoginSession?.token}",
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, dynamic>{
      "name": guildName,
      "region": "",
      "icon": icon ?? "",
      "channels": [
        {
          "name": "coffee",
          "type": 0,
          "topic": "",
          "icon": "",
          "bitrate": 0,
          "user_limit": 0,
          "rate_limit_per_user": 0,
          "position": 0,
          "permission_overwrites": [
            {"id": "", "type": 0, "allow": "", "deny": ""}
          ],
          "parent_id": "",
          "id": "",
          "nsfw": false,
          "rtc_region": "",
          "default_auto_archive_duration": 0,
          "default_reaction_emoji": "",
          "flags": 0,
          "default_thread_rate_limit_per_user": 0,
          "video_quality_mode": 0
        }
      ],
      "guild_template_code": "",
      "system_channel_id": "",
      "rules_channel_id": ""
    }),
  );
  apiStatusHook(response.statusCode);
  if (response.statusCode != 201) {
    appState.addLogs(LogType.warning,
        "res $logFuncName: status:${response.statusCode} body:${response.body}");
    return ApiRes(
      statusCode: response.statusCode,
      message: "error",
      error: response.body,
    );
  }

  PostGuilds? res;
  try {
    appState.addLogs(LogType.info, "parse $logFuncName");
    res = PostGuilds.fromJson(jsonDecode(response.body));
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
