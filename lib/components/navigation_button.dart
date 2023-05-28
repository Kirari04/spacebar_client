import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationButton extends StatefulWidget {
  const NavigationButton({
    super.key,
    required this.title,
    this.image,
    this.svg,
    this.unrounded,
    this.padding,
    required this.onPressed,
  });

  final String title;
  final String? image;
  final String? svg;
  final bool? unrounded;
  final double? padding;
  final void Function() onPressed;

  @override
  State<NavigationButton> createState() => _NavigationButtonState();
}

class _NavigationButtonState extends State<NavigationButton> {
  bool focused = false;
  bool? isLoading = false;

  double borderRadius = 0;
  double borderRadiusMax = 0;
  double borderRadiusMin = 0;
  double imagePadding = 0;

  bool loads() => (isLoading != null && isLoading == true);

  @override
  void initState() {
    super.initState();
    borderRadiusMax =
        (widget.unrounded != null && widget.unrounded! == true) ? 20 : 50;
    borderRadiusMin = 10;
    borderRadius = borderRadiusMax;

    imagePadding = widget.padding != null ? widget.padding! : 0;

    if (widget.image != null && widget.svg != null) {
      throw "Can't have image and svg defined at the same time.";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
                borderRadius = isHover ? borderRadiusMin : borderRadiusMax;
              });
            },
            onTap: () {
              if (!loads()) {
                widget.onPressed();
              }
            },
            child: AnimatedContainer(
              curve: Curves.ease,
              duration: const Duration(milliseconds: 600),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: AspectRatio(
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
            ),
          ),
        ),
      ),
    );
  }
}
