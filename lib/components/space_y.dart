import 'package:flutter/material.dart';

class SpaceY extends StatelessWidget {
  const SpaceY({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
