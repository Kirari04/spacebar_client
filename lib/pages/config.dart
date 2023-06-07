// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/input.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

import '../components/h1.dart';
import '../models/login.dart';

class ConfigPage extends StatefulWidget {
  ConfigPage({super.key, required this.appState});
  AppState appState;

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  TextEditingController? apiEndpointController;
  TextEditingController? cdnEndpointController;

  SharedPreferences? prefs;
  String apiEndpoint = "";
  String cdnEndpoint = "";
  LoginRes? loginRes;
  String logs = "";
  @override
  void initState() {
    super.initState();
    initVars();

    loginRes = widget.appState.userLoginSession;
    logs = widget.appState.getLogs();
  }

  void initVars() async {
    if (apiEndpoint == "") {
      apiEndpoint = widget.appState.apiEndpoint;
      apiEndpointController = TextEditingController(text: apiEndpoint);
    }

    if (cdnEndpoint == "") {
      cdnEndpoint = widget.appState.cdnEndpoint;
      cdnEndpointController = TextEditingController(text: cdnEndpoint);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Container(
                width: 500,
                decoration: BoxDecoration(
                  color: ThemeColors.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Flex(
                    direction: Axis.vertical,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          const Expanded(
                              child: H1(title: "Client Configuration")),
                          Button(
                            onPressed: () {
                              Navigator.of(context).maybePop();
                            },
                            text: 'Zurück',
                          )
                        ],
                      ),
                      // ApiServer
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            child: Input(
                                text: "ApiServer",
                                controller: apiEndpointController,
                                onChange: (changes) {
                                  apiEndpoint = changes;
                                }),
                          ),
                          Button(
                            onPressed: () {
                              widget.appState.setState!(() {
                                widget.appState.apiEndpoint = apiEndpoint;
                                prefs!.setString("apiEndpoint", apiEndpoint);
                              });
                            },
                            text: 'Speichern',
                          ),
                        ],
                      ),
                      // cdnEndpoint
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          Expanded(
                            child: Input(
                                text: "CdnServer",
                                controller: cdnEndpointController,
                                onChange: (changes) {
                                  cdnEndpoint = changes;
                                }),
                          ),
                          Button(
                            onPressed: () {
                              widget.appState.setState!(() {
                                widget.appState.cdnEndpoint = cdnEndpoint;
                                prefs!.setString("cdnEndpoint", cdnEndpoint);
                              });
                            },
                            text: 'Speichern',
                          ),
                        ],
                      ),
                      loginRes == null
                          ? const SizedBox.shrink()
                          : Flex(
                              direction: Axis.horizontal,
                              children: [
                                Expanded(
                                  child: Input(
                                      text: "ApiToken",
                                      defaultValue: loginRes?.token,
                                      onChange: ((p0) {})),
                                )
                              ],
                            ),
                      Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const H1(title: "Logs"),
                          SizedBox(
                            height: 400,
                            child: SingleChildScrollView(
                              child: Text(
                                logs,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Flex(
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const H1(title: "User"),
                          Button(
                            text: "Logout",
                            onPressed: () {
                              AuthData.logout(widget.appState);
                              Navigator.of(context).maybePop();
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
