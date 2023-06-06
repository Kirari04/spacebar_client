import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class ThemeColors {
  final brightness = Brightness.dark;
  final primaryColor = const Color.fromARGB(255, 71, 77, 157);
  final primaryColorLight = const Color.fromARGB(255, 38, 38, 38);
  final primaryColorMid = const Color.fromARGB(255, 32, 32, 32);
  final primaryColorMidDark = const Color.fromARGB(255, 27, 27, 27);
  final primaryColorDark = const Color.fromARGB(255, 24, 24, 24);
  final errorColor = const Color.fromARGB(255, 230, 49, 49);
  final successColor = const Color.fromARGB(255, 49, 202, 72);
  final successColorDark = const Color.fromARGB(255, 41, 170, 61);

  const ThemeColors();
}
