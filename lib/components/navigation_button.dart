// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class NavigationButton extends StatefulWidget {
  NavigationButton({
    super.key,
    required this.title,
    this.image,
    this.networkImage,
    this.svg,
    this.unrounded,
    this.padding,
    required this.onPressed,
    this.isOnline = false,
    this.showIsOnline = false,
    this.isActive = false,
    this.isCircle = false,
    this.isHighlightable = false,
    this.defaultHighlighted = true,
    this.primaryColor,
    this.secundaryColor,
    this.primaryBackgroundColor,
    this.secundaryBackgroundColor,
  });

  final String title;
  final String? image;
  final String? networkImage;
  final String? svg;
  final bool? unrounded;
  final double? padding;
  final void Function() onPressed;
  bool isActive = false;
  bool isHighlightable = false;
  bool defaultHighlighted = true;
  bool isOnline = false;
  bool showIsOnline = false;
  bool isCircle = false;
  Color? primaryColor;
  Color? primaryBackgroundColor;
  Color? secundaryColor;
  Color? secundaryBackgroundColor;

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  bool focused = false;
  bool hovered = false;
  bool? isLoading = false;

  double borderRadius = 0;
  double borderRadiusMax = 0;
  double borderRadiusMin = 0;
  double imagePadding = 0;
  double defaultHighlighHeight = 0;

  bool loads() => (isLoading != null && isLoading == true);

  @override
  void initState() {
    super.initState();
    if (widget.isCircle) {
      borderRadiusMax = 50;
    } else {
      if (widget.unrounded != null && widget.unrounded! == true) {
        borderRadiusMax = 20;
      } else {
        borderRadiusMax = 50;
      }
    }

    borderRadiusMin = 15;
    borderRadius = borderRadiusMax;
    defaultHighlighHeight = (widget.defaultHighlighted ? 10 : 0);

    imagePadding = widget.padding ?? 0;

    if (widget.image != null && widget.svg != null) {
      throw "Can't have image and svg defined at the same time.";
    }
  }

  Widget getSvg() {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      child: SvgPicture.asset(
        key: ValueKey<bool>(hovered),
        widget.svg!,
        fit: BoxFit.contain,
        color: hovered
            ? (widget.secundaryColor ?? ThemeColors.primaryFont)
            : (widget.primaryColor ?? ThemeColors.primaryFont),
        colorBlendMode: BlendMode.srcIn,
        cacheColorFilter: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: .9,
              child: InkWell(
                onTapDown: (details) {
                  setState(() {
                    focused = true;
                  });
                },
                onTapUp: (details) {
                  setState(() {
                    focused = false;
                  });
                },
                onHover: (isHover) {
                  setState(() {
                    hovered = isHover;
                    borderRadius = isHover ? borderRadiusMin : borderRadiusMax;
                    defaultHighlighHeight =
                        isHover ? 25 : (widget.defaultHighlighted ? 10 : 0);
                  });
                },
                onTap: () {
                  if (!loads()) {
                    widget.onPressed();
                  }
                },
                child: Stack(alignment: Alignment.centerLeft, children: [
                  AnimatedContainer(
                    curve: Curves.ease,
                    duration: const Duration(milliseconds: 400),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: (hovered
                              ? widget.secundaryBackgroundColor
                              : widget.primaryBackgroundColor) ??
                          ThemeColors.primaryColor,
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: widget.image == null &&
                              widget.svg == null &&
                              widget.networkImage == null
                          ? Padding(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/no-image.png",
                                cacheWidth: 50,
                                cacheHeight: 50,
                              ),
                            )
                          : Padding(
                              padding: EdgeInsets.all(imagePadding),
                              child: widget.svg != null
                                  // SVG IMAGE
                                  ? getSvg()
                                  : widget.networkImage != null
                                      // NETWORK IMAGE
                                      ? Image.network(
                                          widget.networkImage!,
                                          fit: BoxFit.fill,
                                          cacheWidth: 50,
                                          cacheHeight: 50,
                                        )
                                      // LOCALE IMAGE
                                      : Image.asset(
                                          widget.image!,
                                          fit: BoxFit.fill,
                                          cacheWidth: 50,
                                          cacheHeight: 50,
                                        ),
                            ),
                    ),
                  ),
                  !widget.showIsOnline
                      ? const SizedBox.shrink()
                      : Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: widget.isOnline
                                      ? ThemeColors.successColor
                                      : ThemeColors.errorColor,
                                  blurRadius: 10,
                                  blurStyle: BlurStyle.outer,
                                )
                              ],
                              color: widget.isOnline
                                  ? ThemeColors.successColor
                                  : ThemeColors.errorColor,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(99),
                              ),
                            ),
                          ))
                ]),
              ),
            ),
          ),
        ),
        !widget.isHighlightable
            ? const SizedBox.shrink()
            : Positioned(
                left: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: widget.isActive ? 40 : defaultHighlighHeight,
                  width: 5,
                  decoration: BoxDecoration(
                    color: ThemeColors.primaryFont,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
        // const Positioned(
        //   right: -10,
        //   child: Text("Test Server Name"),
        // ),
      ],
    );
  }
}
