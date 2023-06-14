// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:spacebar_client/components/button.dart';
import 'package:spacebar_client/components/button_icon.dart';
import 'package:spacebar_client/components/input.dart';

class InputSave extends StatefulWidget {
  InputSave({
    super.key,
    this.value,
    this.onChange,
    this.onSave,
  });
  String? value;
  String Function(String)? onChange;
  void Function(String)? onSave;

  @override
  State<InputSave> createState() => _InputSaveState();
}

class _InputSaveState extends State<InputSave> {
  String value = "";
  bool showResetButton = false;
  TextEditingController ctrl = TextEditingController(text: "");

  @override
  void initState() {
    super.initState();
    if (widget.value != null) {
      value = widget.value!;
      ctrl.text = value;
    }
  }

  void onInput(String newValue) {
    value = newValue;
    if (widget.onChange != null) {
      widget.onChange!(newValue);
    }
    if (value != widget.value) {
      if (showResetButton != (value != widget.value)) {
        setState(() {
          showResetButton = (value != widget.value);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Expanded(
          child: Stack(
            children: [
              GestureDetector(
                onTap: () {
                  onInput(widget.value ?? "");
                },
                child: Input(
                  onChange: onInput,
                  controller: ctrl,
                ),
              ),
              !showResetButton
                  ? const SizedBox.shrink()
                  : Positioned.fill(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ButtonIcon(
                          svg: "assets/refresh.svg",
                          onTap: () {
                            setState(() {
                              value = widget.value ?? "";
                              ctrl.text = value;
                              showResetButton = false;
                            });
                          },
                        ),
                      ),
                    )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Button(
              text: "Save",
              onPressed: () {
                if (widget.onSave != null) {
                  widget.onSave!(value);
                }
              }),
        ),
      ],
    );
  }
}
