import 'package:flutter/material.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.backgroundColor,
    this.color,
    this.padding,
    required this.onPressed,
    this.isLoading,
    this.expandX,
  });

  final String text;
  final Color? backgroundColor;
  final Color? color;
  final double? padding;
  final void Function() onPressed;
  final bool? isLoading;
  final bool? expandX;

  bool loads() => (isLoading != null && isLoading == true);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextButton(
          onPressed: () {
            if (!loads()) {
              onPressed();
            }
          },
          style: ButtonStyle(
            mouseCursor: MaterialStateProperty.all(
              loads() ? MouseCursor.uncontrolled : null,
            ),
            minimumSize: expandX != null && expandX == true
                ? MaterialStateProperty.all(const Size(double.infinity, 0))
                : null,
            backgroundColor: MaterialStateProperty.all(
              backgroundColor ?? ThemeColors.primaryColorLight,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding ?? 10),
            child: AnimatedOpacity(
              opacity: loads() ? 0 : 1,
              duration: const Duration(milliseconds: 400),
              child: Text(
                text,
                style: TextStyle(color: color ?? ThemeColors.primaryColor),
              ),
            ),
          ),
        ),
        !loads()
            ? const SizedBox.shrink()
            : const Positioned(
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                  ),
                ),
              ),
      ],
    );
  }
}
