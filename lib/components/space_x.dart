import 'package:flutter/material.dart';

class SpaceX extends StatelessWidget {
  const SpaceX({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
