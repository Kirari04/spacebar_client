import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation.dart';
import 'package:spacebar_client/data/auth.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/login.dart';
import 'package:spacebar_client/pages/home.dart';
import 'package:spacebar_client/pages/login.dart';
import 'package:spacebar_client/pages/me.dart';

class DefaultLayout extends StatefulWidget {
  DefaultLayout({super.key, required this.appState, required this.slot});
  AppState appState;
  Widget slot;
  @override
  State<DefaultLayout> createState() => _DefaultLayoutState(
        appState: appState,
        slot: slot,
      );
}

class _DefaultLayoutState extends State<DefaultLayout> {
  AppState appState;
  Widget slot;

  _DefaultLayoutState({
    required this.appState,
    required this.slot,
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
        child: IndexedStack(
          index: appState.userAuthenticated ? 1 : 0,
          children: [
            Flex(
              direction: Axis.horizontal,
              clipBehavior: Clip.hardEdge,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: LoginPage(appState: appState),
                  ),
                ),
              ],
            ),
            Flex(
              direction: Axis.horizontal,
              clipBehavior: Clip.hardEdge,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Navigation(
                  appState: appState,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: IndexedStack(
                      index: appState.defaultLayoutPageState,
                      children: [
                        HomePage(appState: appState),
                        MePage(appState: appState),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
