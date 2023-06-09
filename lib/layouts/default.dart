// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/layouts/guild.dart';
import 'package:spacebar_client/layouts/me.dart';
import 'package:spacebar_client/layouts/popup.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/login.dart';
import 'package:spacebar_client/pages/login.dart';

import '../pages/home.dart';

class DefaultLayout extends StatefulWidget {
  DefaultLayout({super.key, required this.appState});
  AppState appState;
  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
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
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).primaryColorLight,
            child: IndexedStack(
              index: widget.appState.getUserAuthenticated() ? 1 : 0,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: LoginPage(appState: widget.appState),
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
                      appState: widget.appState,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: IndexedStack(
                          index: widget.appState.defaultLayoutPageState,
                          children: [
                            HomePage(appState: widget.appState),
                            MeLayout(appState: widget.appState),
                            GuildLayout(appState: widget.appState),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PopupLayout(appState: widget.appState),
          ),
        ],
      ),
    );
  }
}
