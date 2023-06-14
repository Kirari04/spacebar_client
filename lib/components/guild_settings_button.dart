// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class GuildSettingsButton extends StatefulWidget {
  GuildSettingsButton({
    super.key,
    required this.text,
    this.onTap,
    this.color,
    this.hoverColor,
    this.hoverBg,
    this.svg,
  });
  String text;
  String? svg;
  void Function()? onTap;
  Color? color;
  Color? hoverColor;
  Color? hoverBg;
  @override
  State<GuildSettingsButton> createState() => _GuildSettingsButtonState();
}

class _GuildSettingsButtonState extends State<GuildSettingsButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap ?? () {},
      onHover: (doesHover) {
        setState(() {
          isHovered = doesHover;
        });
      },
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
        decoration: BoxDecoration(
            color: isHovered
                ? (widget.hoverBg ?? ThemeColors.primaryColor)
                : ThemeColors.primaryColorDark,
            borderRadius: BorderRadius.circular(2)),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: P(
                text: widget.text,
                fontSize: 14,
                color: !isHovered
                    ? (widget.color ?? ThemeColors.primaryFont)
                    : (widget.hoverColor ?? ThemeColors.primaryFont),
              ),
            ),
            SizedBox(
              height: 20,
              width: 20,
              child: widget.svg != null
                  ? SvgPicture.asset(
                      widget.svg!,
                      fit: BoxFit.contain,
                      color: !isHovered
                          ? (widget.color ?? ThemeColors.primaryFont)
                          : (widget.hoverColor ?? ThemeColors.primaryFont),
                      colorBlendMode: BlendMode.srcIn,
                      cacheColorFilter: true,
                    )
                  : Image.asset(
                      "assets/no-image.png",
                      cacheWidth: 20,
                      cacheHeight: 20,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
