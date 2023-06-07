// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spacebar_client/models/app_state.dart';

class PopupLayout extends StatefulWidget {
  PopupLayout({super.key, required this.appState});
  AppState appState;
  @override
  State<PopupLayout> createState() => _PopupLayoutState();
}

class _PopupLayoutState extends State<PopupLayout> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            widget.appState.setState!(() {
              widget.appState.popupListClose();
            });
          },
          child: Container(
            height: widget.appState.popupList.isEmpty
                ? 0
                : MediaQuery.of(context).size.height,
            width: widget.appState.popupList.isEmpty
                ? 0
                : MediaQuery.of(context).size.width,
            color: Colors.black87,
          ),
        ),
        widget.appState.popupList.isNotEmpty
            ? SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: widget.appState.popupList.last,
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
