// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class NavigationButton extends StatefulWidget {
  NavigationButton({
    super.key,
    required this.title,
    this.image,
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

    imagePadding = widget.padding != null ? widget.padding! : 0;

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
            ? (widget.secundaryColor ?? Colors.white)
            : (widget.primaryColor ?? Colors.white),
        colorBlendMode: BlendMode.srcIn,
        cacheColorFilter: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          child: Center(
            child: FractionallySizedBox(
              widthFactor: .9,
              child: InkWell(
                hoverColor: Colors.black,
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
                child: AnimatedContainer(
                  curve: Curves.ease,
                  duration: const Duration(milliseconds: 400),
                  decoration: BoxDecoration(
                    color: (hovered
                            ? widget.secundaryBackgroundColor
                            : widget.primaryBackgroundColor) ??
                        Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(borderRadius),
                  ),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    AspectRatio(
                      aspectRatio: 1 / 1,
                      child: widget.image == null && widget.svg == null
                          ? Padding(
                              padding: EdgeInsets.all(focused ? 10 + 2 : 10),
                              child: const Image(
                                  image: AssetImage("assets/no-image.png")),
                            )
                          : Padding(
                              padding: EdgeInsets.all(
                                  focused ? imagePadding + 2 : imagePadding),
                              child: widget.svg != null
                                  ? getSvg()
                                  : Image(
                                      image: AssetImage(widget.image!),
                                      fit: BoxFit.fill,
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
                                        ? const ThemeColors().successColor
                                        : const ThemeColors().errorColor,
                                    blurRadius: 10,
                                    blurStyle: BlurStyle.outer,
                                  )
                                ],
                                color: widget.isOnline
                                    ? const ThemeColors().successColor
                                    : const ThemeColors().errorColor,
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
        ),
        !widget.isHighlightable
            ? const SizedBox.shrink()
            : Positioned(
                left: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: widget.isActive ? 40 : defaultHighlighHeight,
                  width: 5,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
