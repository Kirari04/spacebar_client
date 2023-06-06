// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/theme_colors.dart';

class ButtonIcon extends StatefulWidget {
  ButtonIcon({
    super.key,
    this.svg,
    this.defaultColor,
    this.hoverColor,
    this.onTap,
  });
  final String? svg;
  Color? defaultColor;
  Color? hoverColor;
  void Function()? onTap;

  @override
  State<ButtonIcon> createState() => _ButtonIconState();
}

class _ButtonIconState extends State<ButtonIcon> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onTap != null) {
          widget.onTap!();
        }
      },
      onHover: (doesHover) => setState(() {
        isHovered = doesHover;
      }),
      child: Container(
        decoration: BoxDecoration(
          color: isHovered
              ? (widget.hoverColor ?? ThemeColors.primaryColorLightLight)
              : (widget.defaultColor ?? ThemeColors.primaryColorMidDark),
          borderRadius: BorderRadius.circular(5),
        ),
        clipBehavior: Clip.hardEdge,
        height: 35,
        width: 35,
        child: widget.svg == null
            ? const Padding(
                padding: EdgeInsets.all(5),
                child: Image(image: AssetImage("assets/no-image.png")),
              )
            : Padding(
                padding: const EdgeInsets.all(5),
                child: SvgPicture.asset(
                  widget.svg!,
                  fit: BoxFit.contain,
                  color: ThemeColors.primaryFont,
                  colorBlendMode: BlendMode.srcIn,
                  cacheColorFilter: true,
                ),
              ),
      ),
    );
  }
}
