import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@immutable
class ThemeColors {
  static var brightness = Brightness.dark;
  static var primaryColor = const Color.fromARGB(255, 71, 77, 157);
  static var primaryColorLight = const Color.fromARGB(255, 38, 38, 38);
  static var primaryColorLightLight = const Color.fromARGB(255, 59, 59, 59);
  static var primaryColorMid = const Color.fromARGB(255, 32, 32, 32);
  static var primaryColorMidDark = const Color.fromARGB(255, 27, 27, 27);
  static var primaryColorDark = const Color.fromARGB(255, 24, 24, 24);
  static var errorColor = const Color.fromARGB(255, 230, 49, 49);
  static var warningColor = const Color.fromARGB(255, 230, 133, 49);
  static var successColor = const Color.fromARGB(255, 49, 202, 72);
  static var successColorDark = const Color.fromARGB(255, 41, 170, 61);
  static var primaryFont = const Color.fromARGB(255, 255, 255, 255);
  static var secundaryFont = const Color.fromARGB(255, 188, 220, 250);
  static var secundaryFontVibe = const Color.fromARGB(255, 87, 94, 194);
}
