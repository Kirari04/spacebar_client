// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/theme_colors.dart';

class StatusIcon extends StatefulWidget {
  StatusIcon({
    super.key,
    this.status = "offline",
  });

  String status;

  @override
  State<StatusIcon> createState() => _StatusIconState();
}

class _StatusIconState extends State<StatusIcon> {
  Color color = const ThemeColors().primaryColorLightLight;

  @override
  Widget build(BuildContext context) {
    switch (widget.status) {
      case "offline":
        color = const ThemeColors().primaryColorLightLight;
        break;
      case "sleep":
        color = const ThemeColors().warningColor;
        break;
      case "stop":
        color = const ThemeColors().errorColor;
        break;
      case "online":
        color = const ThemeColors().successColor;
        break;
      default:
    }

    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: const ThemeColors().primaryColorMid,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Center(
        child: Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(99),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                color: color,
              )
            ],
          ),
          child: widget.status == "online"
              ? const SizedBox.shrink()
              : Center(
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: const ThemeColors().primaryColorMid,
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
