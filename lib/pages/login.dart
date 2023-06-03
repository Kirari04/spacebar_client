import 'package:flutter/material.dart';
import 'package:spacebar_client/api_wrapper/post_login.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/input.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/p_error.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/app_nav.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/login.dart';
import 'package:spacebar_client/models/login_error.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/pages/config.dart';

import '../components/button_icon.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<LoginPage> createState() => _LoginPageState(
        appState: appState,
      );
}

class _LoginPageState extends State<LoginPage> {
  AppState appState;
  _LoginPageState({
    required this.appState,
  });

  ApiRes<LoginRes, LoginResError>? data;
  String username = "";
  String password = "";
  bool isLoading = false;
  String internalError = "";
  LoginRes? loginSession;

  void login() {
    internalError = "";
    data = null;
    setState(() {
      isLoading = true;
    });
    apiPostLogin(appState, username, password)
        .then((value) => setState(() {
              isLoading = false;
              data = value;
              if (data?.response?.token == null) {
                internalError = "Response doesn't contain login token";
                return;
              }
              AuthData.saveSession(data!.response!).then((success) {
                if (success == null || !success) {
                  internalError = "Failed to save login token";
                  return;
                }
                AuthData.getSession().then((session) {
                  loginSession = session;
                  if (session != null) {
                    AppNav.goHome(appState);
                    appState.userAuthenticated = true;
                  }
                });
              }).catchError((onError) {
                isLoading = false;
                internalError = "Failed to save: ${onError.toString()}";
              });
            }))
        .catchError((onError) {
      setState(() {
        isLoading = false;
        internalError = onError.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    AuthData.getSession().then((session) {
      loginSession = session;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColorLight,
        child: Center(
          child: Container(
            width: 500,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: !appState.userTryAuthenticate
                  ? Padding(
                      padding: const EdgeInsets.all(20),
                      child: Stack(
                        children: [
                          const Align(
                            heightFactor: 1,
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(),
                          ),
                          Positioned(
                            right: 0,
                            top: 0,
                            child: ButtonIcon(
                              svg: "assets/settings.svg",
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (builder) =>
                                        ConfigPage(appState: appState),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const H1(title: "Willkommen zurück!"),
                        const P(
                          text: "Wir freuen uns so, dich wiederzusehen",
                          fontWeight: FontWeight.w200,
                        ),
                        const SpaceY(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Input(
                            text: "Username or E-Mail",
                            onChange: (p0) {
                              setState(() {
                                username = p0;
                              });
                            },
                          ),
                        ),
                        const SpaceY(height: 20),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Input(
                            text: "Passwort",
                            obscureText: true,
                            onChange: (p0) {
                              setState(() {
                                password = p0;
                              });
                            },
                          ),
                        ),

                        // Show Errors
                        const SpaceY(height: 20),
                        ...?data?.error?.errors?.login?.errors
                            ?.map((e) => PError(
                                  text: "Error: ${e.message}",
                                )),
                        PError(
                          text: internalError,
                        ),
                        const SpaceY(height: 20),

                        // Login & Abort buttons
                        Flex(
                          mainAxisSize: MainAxisSize.max,
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ButtonIcon(
                              svg: "assets/settings.svg",
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (builder) =>
                                        ConfigPage(appState: appState),
                                  ),
                                );
                              },
                            ),
                            Expanded(
                                child: Align(
                              alignment: Alignment.centerRight,
                              child: Button(
                                text: "Login",
                                isLoading: isLoading,
                                onPressed: login,
                              ),
                            )),
                          ],
                        )
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
