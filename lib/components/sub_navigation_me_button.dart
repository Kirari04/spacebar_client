import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/space_x.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/colors.dart';

class SubNavigationMeButton extends StatefulWidget {
  SubNavigationMeButton({
    super.key,
    required this.appState,
    required this.title,
    this.subtitle,
  });
  AppState appState;
  String title;
  String? subtitle;
  String? image;
  String? svg;

  @override
  State<SubNavigationMeButton> createState() => _SubNavigationMeButtonState();
}

class _SubNavigationMeButtonState extends State<SubNavigationMeButton> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: .9,
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: InkWell(
            onTap: () {},
            onHover: (doHover) => setState(() {
              isHovered = doHover;
            }),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isHovered
                    ? ThemeColors().primaryColorLight
                    : ThemeColors().primaryColorMid,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Flex(
                  direction: Axis.horizontal,
                  clipBehavior: Clip.hardEdge,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: ThemeColors().primaryColor,
                          borderRadius: BorderRadius.circular(99)),
                      height: 40,
                      child: widget.image == null && widget.svg == null
                          ? const Padding(
                              padding: EdgeInsets.all(10),
                              child: Image(
                                  image: AssetImage("assets/no-image.png")),
                            )
                          : Padding(
                              padding: EdgeInsets.all(10),
                              child: widget.svg != null
                                  ? SvgPicture.asset(
                                      widget.svg!,
                                      fit: BoxFit.contain,
                                    )
                                  : Image(
                                      image: AssetImage(widget.image!),
                                      fit: BoxFit.fill,
                                    ),
                            ),
                    ),
                    const SpaceX(width: 10),
                    Expanded(
                      child: Flex(
                        direction: Axis.vertical,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          P(text: widget.title),
                          widget.subtitle != null
                              ? P(
                                  text: widget.subtitle!,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 12,
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
