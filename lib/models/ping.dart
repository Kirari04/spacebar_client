import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spacebar_client/models/config.dart' as config;
import 'package:spacebar_client/models/res.dart';

Future<ApiRes<PingRes, dynamic>> apiGetPing() async {
  final response = await http.get(Uri.parse('${config.apiEndpoint}/ping'));

  return ApiRes(
    statusCode: response.statusCode,
    message: "ok",
    response: PingRes.fromJson(jsonDecode(response.body)),
  );
}

class PingRes {
  String? ping;
  PingResInstance? instance;

  PingRes({this.ping, this.instance});

  PingRes.fromJson(Map<String, dynamic> json) {
    ping = json["ping"];
    instance = json["instance"] == null
        ? null
        : PingResInstance.fromJson(json["instance"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["ping"] = ping;
    if (instance != null) {
      _data["instance"] = instance?.toJson();
    }
    return _data;
  }
}

class PingResInstance {
  String? id;
  String? name;
  String? description;
  String? image;
  String? correspondenceEmail;
  String? correspondenceUserId;
  String? frontPage;
  String? tosPage;

  PingResInstance(
      {this.id,
      this.name,
      this.description,
      this.image,
      this.correspondenceEmail,
      this.correspondenceUserId,
      this.frontPage,
      this.tosPage});

  PingResInstance.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    description = json["description"];
    image = json["image"];
    correspondenceEmail = json["correspondenceEmail"];
    correspondenceUserId = json["correspondenceUserID"];
    frontPage = json["frontPage"];
    tosPage = json["tosPage"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    _data["description"] = description;
    _data["image"] = image;
    _data["correspondenceEmail"] = correspondenceEmail;
    _data["correspondenceUserID"] = correspondenceUserId;
    _data["frontPage"] = frontPage;
    _data["tosPage"] = tosPage;
    return _data;
  }
}
