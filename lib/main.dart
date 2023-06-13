import 'package:flutter/material.dart';
import 'package:spacebar_client/layouts/default.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

extension ColorSchemeExtension on ColorScheme {
  Color get successColor => const Color(0xFF28a745);
}

class _MyAppState extends State<MyApp> {
  AppState appState = AppState(
    apiEndpoint: "https://api.old.server.spacebar.chat/api",
    cdnEndpoint: "https://cdn.old.server.spacebar.chat",
    appName: "Spacebar Client",
  );
  @override
  void initState() {
    super.initState();
    appState.run();
    appState.setState = (void Function() func) {
      setState(func);
    };
  }

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appState.appName,
      theme: ThemeData(
        brightness: ThemeColors.brightness,
        primaryColor: ThemeColors.primaryColor,
        primaryColorLight: ThemeColors.primaryColorLight,
        primaryColorDark: ThemeColors.primaryColorDark,
        errorColor: ThemeColors.errorColor,
      ),
      home: DefaultLayout(
        appState: appState,
      ),
    );
  }
}
