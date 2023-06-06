// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/button_icon_next.dart';
import 'package:spacebar_client/components/h1.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class JoinGuildPopup extends StatefulWidget {
  JoinGuildPopup({super.key, required this.appState});
  AppState appState;
  @override
  State<JoinGuildPopup> createState() => _JoinGuildPopupState();
}

class _JoinGuildPopupState extends State<JoinGuildPopup> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        decoration: BoxDecoration(
          color: ThemeColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: Flex(
          mainAxisSize: MainAxisSize.min,
          direction: Axis.vertical,
          children: [
            const H1(title: "Server Erstellen"),
            P(text: "Touch some grass!", color: ThemeColors.secundaryFont),
            const SpaceY(height: 20),
            ButtonIconNext(),
            const SpaceY(height: 20),
          ],
        ),
      ),
    );
  }
}
