import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/pages/login.dart';

class HomePage extends StatefulWidget {
  HomePage({
    super.key,
    required this.appState,
  });
  AppState appState;

  @override
  State<HomePage> createState() => _HomePageState(
        appState: appState,
      );
}

class _HomePageState extends State<HomePage> {
  AppState appState;

  _HomePageState({required this.appState});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => LoginPage(appState: appState),
              ),
            );
          },
          child: Text("Login"),
        )),
      ),
    );
  }
}
