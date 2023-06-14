// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class SidebarTop extends StatefulWidget {
  SidebarTop({super.key, required this.slot, this.bgColor});
  Color? bgColor;
  Widget slot;
  @override
  State<SidebarTop> createState() => _SidebarTopState();
}

class _SidebarTopState extends State<SidebarTop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 50,
      decoration: BoxDecoration(
        color: widget.bgColor ?? ThemeColors.primaryColorMid,
        border: Border(
          bottom: BorderSide(
            color: ThemeColors.primaryColorDark,
            width: 1,
          ),
        ),
      ),
      child: widget.slot,
    );
  }
}
