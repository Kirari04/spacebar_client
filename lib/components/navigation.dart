import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation_button.dart';
import 'package:spacebar_client/components/navigation_line.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 80,
      decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
      child: SingleChildScrollView(
        child: Column(children: [
          const NavigationButton(
            title: "Home",
            svg: 'assets/logo.svg',
            unrounded: true,
            padding: 10,
          ),
          const NavigationLine(
            height: 2,
          ),
          ...([0, 1, 2, 3, 4, 5, 6, 7, 8]
              .map((e) => const NavigationButton(title: "title2")))
        ]),
      ),
    );
  }
}
