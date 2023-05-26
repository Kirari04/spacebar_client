import 'package:flutter/material.dart';

class PError extends StatelessWidget {
  const PError({super.key, required this.text, this.color, this.fontSize});

  final String text;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize ?? 14,
        color: color ?? Theme.of(context).errorColor,
      ),
    );
  }
}
