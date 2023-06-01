import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation.dart';
import 'package:spacebar_client/data/auth.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/login.dart';

class DefaultLayout extends StatefulWidget {
  DefaultLayout({super.key, required this.appState});
  AppState appState;
  @override
  State<DefaultLayout> createState() => _DefaultLayoutState(
        appState: appState,
      );
}

class _DefaultLayoutState extends State<DefaultLayout> {
  AppState appState;

  _DefaultLayoutState({
    required this.appState,
  });
  LoginRes? loginSession;

  @override
  void initState() {
    super.initState();
    AuthData.getSession().then((session) {
      setState(() {
        loginSession = session;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColorLight,
        child: Flex(
          direction: Axis.horizontal,
          clipBehavior: Clip.hardEdge,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Navigation(
              appState: appState,
            ),
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                color: Colors.transparent,
                child: Text("ApiServer Online: ${appState.apiOnline}"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
