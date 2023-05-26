import 'package:flutter/material.dart';
import 'package:spacebar_client/layouts/default.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color.fromARGB(255, 71, 77, 157),
        primaryColorLight: const Color.fromARGB(255, 38, 38, 38),
        primaryColorDark: const Color.fromARGB(255, 24, 24, 24),
        errorColor: const Color.fromARGB(255, 230, 49, 49),
      ),
      home: const DefaultLayout(),
    );
  }
}
