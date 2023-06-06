import 'package:flutter/material.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class P extends StatelessWidget {
  const P({
    super.key,
    required this.text,
    this.fontWeight,
    this.overflow,
    this.fontSize,
    this.color,
  });

  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? fontSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 18,
        overflow: overflow ?? TextOverflow.ellipsis,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? ThemeColors.primaryFont,
      ),
    );
  }
}
