import 'dart:ui';

import 'package:flutter/material.dart';

class P extends StatelessWidget {
  const P({
    super.key,
    required this.text,
    this.fontWeight,
    this.overflow,
    this.fontSize,
  });

  final String text;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 18,
        overflow: overflow ?? TextOverflow.ellipsis,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}
