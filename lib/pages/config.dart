import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/input.dart';
import 'package:spacebar_client/data/auth_data.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/colors.dart';

import '../components/h1.dart';
import '../models/login.dart';

class ConfigPage extends StatefulWidget {
  ConfigPage({super.key, required this.appState});
  AppState appState;

  @override
  State<ConfigPage> createState() => _ConfigPageState();
}

class _ConfigPageState extends State<ConfigPage> {
  String apiEndpoint = "";
  LoginRes? apiToken;
  @override
  Widget build(BuildContext context) {
    if (apiEndpoint == "") {
      apiEndpoint = widget.appState.apiEndpoint;
    }
    if (apiToken != null) {
      AuthData.getSession().then((value) => apiToken = value);
    }
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Container(
            width: 500,
            decoration: BoxDecoration(
              color: ThemeColors().primaryColor,
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
                      const Expanded(child: H1(title: "Client Configuration")),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).maybePop();
                        },
                        child: const Text("Zurück"),
                      )
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Input(
                            text: "ApiServer",
                            value: apiEndpoint,
                            onChange: (changes) {
                              apiEndpoint = changes;
                            }),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          widget.appState.setState!(() {
                            widget.appState.apiEndpoint = apiEndpoint;
                          });
                        },
                        child: const Text("Speichern"),
                      )
                    ],
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Input(
                            text: "ApiToken",
                            value: apiToken?.token ?? "",
                            onChange: (changes) {
                              apiToken?.token = changes;
                            }),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          widget.appState.setState!(() {
                            if (apiToken != null) {
                              AuthData.saveSession(apiToken!);
                            }
                          });
                        },
                        child: const Text("Speichern"),
                      )
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
