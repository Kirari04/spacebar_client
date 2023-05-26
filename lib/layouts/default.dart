import 'package:flutter/material.dart';
import 'package:spacebar_client/components/navigation.dart';

class DefaultLayout extends StatefulWidget {
  const DefaultLayout({super.key});

  @override
  State<DefaultLayout> createState() => _DefaultLayoutState();
}

class _DefaultLayoutState extends State<DefaultLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColorLight,
        child: Flex(
          direction: Axis.horizontal,
          clipBehavior: Clip.hardEdge,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Navigation(),
          ],
        ),
      ),
    );
  }
}
