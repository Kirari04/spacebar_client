import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spacebar_client/components/p.dart';
import 'package:spacebar_client/components/space_x.dart';
import 'package:spacebar_client/components/status_icon.dart';
import 'package:spacebar_client/components/sub_navigation_button_image.dart';
import 'package:spacebar_client/models/app_state.dart';
import 'package:spacebar_client/models/colors.dart';

class SubNavigationMeButton extends StatefulWidget {
  SubNavigationMeButton({
    super.key,
    required this.appState,
    required this.title,
    this.subtitle,
    this.image,
    this.svg,
    this.statusEnabled = true,
    this.status = "offline",
  });
  AppState appState;
  String title;
  String? subtitle;
  String? image;
  String? svg;
  String status;
  bool statusEnabled;

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
                  children: [
                    Stack(
                      children: [
                        SubNavigationButtonImage(
                          image: widget.image,
                          svg: widget.svg,
                        ),
                        !widget.statusEnabled
                            ? const SizedBox.shrink()
                            : Positioned(
                                right: 0,
                                bottom: 0,
                                child: StatusIcon(
                                  status: widget.status,
                                ),
                              )
                      ],
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
