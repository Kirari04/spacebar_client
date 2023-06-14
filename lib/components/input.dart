import 'package:flutter/material.dart';
import 'package:spacebar_client/components/space_y.dart';
import 'package:spacebar_client/models/theme_colors.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    this.text,
    this.obscureText,
    required this.onChange,
    this.onEditingComplete,
    this.defaultValue,
    this.controller,
    this.backgroundColor,
    this.backgroundHoverColor,
    this.readonly,
    this.autofillHints,
    this.keyboardType,
  });

  final String? text;
  final bool? obscureText;
  final bool? readonly;
  final void Function(String)? onChange;
  final void Function()? onEditingComplete;
  final String? defaultValue;
  final TextEditingController? controller;
  final Color? backgroundColor;
  final Color? backgroundHoverColor;
  final Iterable<String>? autofillHints;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        text == null
            ? const SizedBox.shrink()
            : Align(
                alignment: Alignment.topLeft,
                child: Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
        text == null ? const SizedBox.shrink() : const SpaceY(height: 10),
        TextField(
          autofillHints: autofillHints,
          keyboardType: keyboardType,
          readOnly: readonly ?? false,
          controller: controller ?? TextEditingController(text: defaultValue),
          onChanged: (value) {
            if (onChange != null) {
              onChange!(value);
            }
          },
          onEditingComplete: () {
            if (onEditingComplete != null) {
              onEditingComplete!();
            }
          },
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            filled: true,
            fillColor: backgroundColor ?? ThemeColors.primaryColorDark,
            hoverColor: backgroundHoverColor ?? ThemeColors.primaryColorLight,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5)),
          ),
        )
      ],
    );
  }
}
