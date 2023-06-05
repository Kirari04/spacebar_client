import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    this.backgroundColor,
    this.padding,
    required this.onPressed,
    this.isLoading,
  });

  final String text;
  final Color? backgroundColor;
  final double? padding;
  final void Function() onPressed;
  final bool? isLoading;

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
            backgroundColor: MaterialStateProperty.all(
                backgroundColor ?? Theme.of(context).primaryColorLight),
          ),
          child: Padding(
            padding: EdgeInsets.all(padding ?? 10),
            child: AnimatedOpacity(
              opacity: loads() ? 0 : 1,
              duration: const Duration(milliseconds: 400),
              child: Text(text),
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
