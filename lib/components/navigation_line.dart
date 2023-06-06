import 'package:flutter/material.dart';

class NavigationLine extends StatelessWidget {
  const NavigationLine({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Center(
        heightFactor: 1,
        child: FractionallySizedBox(
          heightFactor: 1,
          widthFactor: .8,
          child: Container(
            color: Theme.of(context).primaryColorLight,
          ),
        ),
      ),
    );
  }
}
