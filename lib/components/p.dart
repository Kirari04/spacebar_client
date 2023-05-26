import 'package:flutter/material.dart';

class P extends StatelessWidget {
  const P({super.key, required this.text, this.fontWeight});

  final String text;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}
