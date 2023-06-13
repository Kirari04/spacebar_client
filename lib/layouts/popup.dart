// ignore_for_file: must_be_immutable

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
    return Visibility(
      visible: widget.appState.popupList.isNotEmpty,
      maintainAnimation: true,
      maintainState: true,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              widget.appState.setState!(() {
                widget.appState.popupListClose();
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: widget.appState.popupList.isNotEmpty
                  ? Colors.black87
                  : Colors.transparent,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: AnimatedOpacity(
              opacity: widget.appState.isFullScalePopupList ? 1 : 0,
              duration: const Duration(milliseconds: 250),
              child: AnimatedScale(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 250),
                scale: widget.appState.isFullScalePopupList ? 1 : .8,
                child: widget.appState.popupList.isNotEmpty
                    ? widget.appState.popupList.last
                    : const SizedBox.shrink(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
