import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacebar_client/models/login.dart';

class AuthData {
  static Future<bool?> saveSession(LoginRes session) async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.setString("authSession", jsonEncode(session));
  }

  static Future<LoginRes?> getSession() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      return LoginRes.fromJson(jsonDecode(prefs.getString("authSession")!));
    } catch (e) {
      return null;
    }
  }

  static Future<bool?> deleteSession() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove("authSession");
  }
}
