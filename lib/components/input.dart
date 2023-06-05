import 'package:flutter/material.dart';
import 'package:spacebar_client/components/space_y.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.text,
    this.obscureText,
    required this.onChange,
    this.defaultValue,
  });

  final String text;
  final bool? obscureText;
  final void Function(String)? onChange;
  final String? defaultValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SpaceY(height: 10),
        TextField(
          controller: TextEditingController(text: defaultValue),
          onChanged: (value) {
            if (onChange != null) {
              onChange!(value);
            }
          },
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            filled: true,
            fillColor: Theme.of(context).primaryColorDark,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5)),
          ),
        )
      ],
    );
  }
}
