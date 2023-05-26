import 'package:flutter/material.dart';
import 'package:spacebar_client/api/login.dart';
import 'package:spacebar_client/api/login_error.dart';
import 'package:spacebar_client/api/res.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/input.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/p_error.dart';
import 'package:spacebar_client/components/space_x.dart';
import 'package:spacebar_client/data/auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
    apiPostLogin(username, password)
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
                    Navigator.of(context).pop();
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
                borderRadius: const BorderRadius.all(Radius.circular(8))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
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
                      Button(
                        text: "Abbrechen",
                        onPressed: () {
                          Navigator.of(context).pop((pop) {});
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
