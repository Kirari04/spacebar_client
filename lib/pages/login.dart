// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
import 'package:spacebar_client/models/i10n.dart';
import 'package:spacebar_client/models/login.dart';
import 'package:spacebar_client/models/login_error.dart';
import 'package:spacebar_client/models/res.dart';
import 'package:spacebar_client/models/theme_colors.dart';

import '../components/button_icon.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              child: !widget.appState.userTryAuthenticate ||
                      !widget.appState.getApiOnline()
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
                              defaultColor: Colors.transparent,
                              onTap: () {
                                AppNav.goConfig(widget.appState, context);
                              },
                            ),
                          )
                        ],
                      ),
                    )
                  : IndexedStack(
                      index: 0,
                      children: [
                        LoginPageSpacebar(appState: widget.appState),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}

class LoginPageSpacebar extends StatefulWidget {
  LoginPageSpacebar({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<LoginPageSpacebar> createState() => _LoginPageSpacebarState();
}

class _LoginPageSpacebarState extends State<LoginPageSpacebar> {
  ApiRes<LoginRes, LoginResError>? data;
  String username = "";
  String password = "";
  bool isLoading = false;
  String internalError = "";
  LoginRes? loginSession;

  void login() {
    TextInput.finishAutofillContext();
    internalError = "";
    data = null;
    setState(() {
      isLoading = true;
    });
    apiPostLogin(widget.appState, username, password)
        .then((value) => setState(() {
              isLoading = false;
              data = value;
              if (data?.response?.token == null) {
                if (data!.error!.errors!.login!.errors!.isEmpty) {
                  internalError = I10n.of(context)!.resNoLoginToken;
                }
                return;
              }

              AuthData.login(widget.appState, data?.response).then((res) {
                if (!res.success) {
                  internalError = res.message;
                  return;
                }

                AppNav.goHome(widget.appState);
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
    return AutofillGroup(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          H1(title: I10n.of(context)!.loginTitle),
          P(
            text: I10n.of(context)!.loginSubtitle,
            fontWeight: FontWeight.w300,
          ),
          const SpaceY(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Input(
              autofillHints: const [
                AutofillHints.email,
                AutofillHints.username
              ],
              keyboardType: TextInputType.emailAddress,
              controller: widget.appState.userLoginUsernameInputController,
              text: I10n.of(context)!.email,
              onChange: (p0) {
                username = p0;
              },
            ),
          ),
          const SpaceY(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Input(
              autofillHints: const [AutofillHints.password],
              controller: widget.appState.userLoginPasswordInputController,
              text: I10n.of(context)!.password,
              obscureText: true,
              onChange: (p0) {
                password = p0;
              },
            ),
          ),

          // Show Errors
          const SpaceY(height: 20),
          ...?data?.error?.errors?.login?.errors?.map((e) => PError(
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
                defaultColor: Colors.transparent,
                onTap: () {
                  AppNav.goConfig(widget.appState, context);
                },
              ),
              Expanded(
                  child: Align(
                alignment: Alignment.centerRight,
                child: Button(
                  text: I10n.of(context)!.loginButton,
                  color: ThemeColors.primaryFont,
                  isLoading: isLoading,
                  onPressed: login,
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
