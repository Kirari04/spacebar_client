import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/api_wrapper/get_users_me_channels.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/layouts/chat_column.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/users_me_channels.dart';

class MePage extends StatefulWidget {
  MePage({
    super.key,
    required this.appState,
  });
  AppState appState;
  @override
  State<MePage> createState() => _MePageState();
}

class _MePageState extends State<MePage> {
  UsersMeChannels? usersMeChannels;

  @override
  void initState() {
    super.initState();

    apiGetUsersMeChannels(widget.appState).then((value) {
      setState(() {
        usersMeChannels = value.response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ChatColumnLayout(
          appState: widget.appState,
          slot: Center(
            child: Flex(
              direction: Axis.vertical,
              children: [
                const H1(
                  title: "@Me Page",
                ),
                P(text: "Username: ${widget.appState.userMeData?.username}"),
                P(text: "E-Mail: ${widget.appState.userMeData?.email}"),
                P(text: "Discriminator: ${widget.appState.userMeData?.discriminator}"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
