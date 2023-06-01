import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/navigation_line.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class SubNavigation extends StatefulWidget {
  SubNavigation({super.key, required this.appState});
  AppState appState;

  @override
  State<SubNavigation> createState() => _SubNavigationState();
}

class _SubNavigationState extends State<SubNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 200,
      decoration: BoxDecoration(color: ThemeColors().primaryColorMid),
      child: SingleChildScrollView(
        child: Column(children: [
          ...(List.filled(20, 1)).map((e) => Column(
                children: const [
                  SpaceY(height: 10),
                  P(
                    text: "~ Channel",
                    fontWeight: FontWeight.w200,
                  ),
                  SpaceY(height: 10),
                  NavigationLine(
                    height: 2,
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}
