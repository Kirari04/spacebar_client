import 'package:flutter/material.dart';

class NavigationLine extends StatelessWidget {
  const NavigationLine({super.key, required this.height, this.widthFactor});

  final double height;
  final double? widthFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      child: Center(
        heightFactor: 0,
        child: FractionallySizedBox(
          widthFactor: widthFactor ?? .8,
          child: Container(
            height: height,
            color: Theme.of(context).primaryColorLight,
          ),
        ),
      ),
    );
  }
}
