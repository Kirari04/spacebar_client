import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/colors.dart';

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
  Color color = ThemeColors().primaryColorLightLight;

  @override
  Widget build(BuildContext context) {
    switch (widget.status) {
      case "offline":
        color = ThemeColors().primaryColorLightLight;
        break;
      case "sleep":
        color = ThemeColors().warningColor;
        break;
      case "stop":
        color = ThemeColors().errorColor;
        break;
      case "online":
        color = ThemeColors().successColor;
        break;
      default:
    }

    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: ThemeColors().primaryColorMid,
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
                      color: ThemeColors().primaryColorMid,
                      borderRadius: BorderRadius.circular(99),
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
