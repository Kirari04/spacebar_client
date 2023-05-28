import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation_button.dart';
import 'package:spacebar_client/components/navigation_line.dart';
import 'package:spacebar_client/pages/login.dart';

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
          NavigationButton(
            title: "Home",
            svg: 'assets/logo.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
          const NavigationLine(
            height: 2,
          ),
          ...([0, 1, 2].map((e) => NavigationButton(
                title: "title2",
                onPressed: () {},
              ))),
          NavigationButton(
            title: "Add Server",
            svg: 'assets/plus.svg',
            unrounded: true,
            padding: 10,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
