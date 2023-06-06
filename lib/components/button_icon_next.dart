import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class ButtonIconNext extends StatefulWidget {
  const ButtonIconNext({super.key});

  @override
  State<ButtonIconNext> createState() => _ButtonIconNextState();
}

class _ButtonIconNextState extends State<ButtonIconNext> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (e) {
        print("hoveres");
        setState(() {
          hovered = e;
        });
      },
      onTap: () {},
      child: AnimatedContainer(
        key: ValueKey<bool>(hovered),
        duration: const Duration(milliseconds: 1000),
        height: 60,
        decoration: BoxDecoration(
          color: hovered
              ? ThemeColors.primaryColorDark
              : ThemeColors.primaryColorLightLight,
          border: Border.all(
            color: ThemeColors.primaryColorLight,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Flex(
            clipBehavior: Clip.hardEdge,
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: SvgPicture.asset(
                  "assets/logo.svg",
                  height: 25,
                  fit: BoxFit.contain,
                  color: ThemeColors.primaryFont,
                  colorBlendMode: BlendMode.srcIn,
                  cacheColorFilter: true,
                ),
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: P(
                      text: "Selbst Erstellen",
                    ),
                  ),
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/right.svg",
                  height: 40,
                  fit: BoxFit.contain,
                  color: ThemeColors.primaryFont,
                  colorBlendMode: BlendMode.srcIn,
                  cacheColorFilter: true,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
