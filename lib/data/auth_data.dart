import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacebar_client/models/app_state.dart';
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

  static logout(AppState appState) {
    deleteSession().then((value) {
      appState.setState!(() {
        appState.userLoginSession = null;
        appState.setUserAuthenticated(false);
      });
    });
  }

  static Future<LoginResponse> login(
      AppState appState, LoginRes? session) async {
    if (session == null) {
      return LoginResponse(message: "session is null", success: false);
    }
    await AuthData.saveSession(session);
    LoginRes? savedSession = await AuthData.getSession();

    if (savedSession == null) {
      return LoginResponse(message: "saved session is null", success: false);
    }
    appState.setState!(() {
      appState.userLoginSession = savedSession;
      appState.setUserAuthenticated(true);
    });
    return LoginResponse(message: "Success", success: true);
  }
}

class LoginResponse {
  final String message;
  final bool success;

  LoginResponse({required this.message, required this.success});
}
