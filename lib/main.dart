import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('de'),
      ],
      theme: ThemeData(
        fontFamily: "Poppins",
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
