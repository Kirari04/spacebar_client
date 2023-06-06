import 'package:flutter/material.dart';
import 'package:spacebar_client/layouts/default.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';
import 'package:spacebar_client/pages/home.dart';

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
    apiEndpoint: "http://localhost:3001/api",
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
        brightness: const ThemeColors().brightness,
        primaryColor: const ThemeColors().primaryColor,
        primaryColorLight: const ThemeColors().primaryColorLight,
        primaryColorDark: const ThemeColors().primaryColorDark,
        errorColor: const ThemeColors().errorColor,
      ),
      home: DefaultLayout(
        appState: appState,
        slot: HomePage(appState: appState),
      ),
    );
  }
}
