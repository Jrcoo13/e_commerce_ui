import 'package:flutter/material.dart';

class AppColor {
  
  final Color white = HexColor('#f8f9fa');
  // final Color black = HexColor('#333333');
  final Color black = HexColor('#282828');
  final Color grey = HexColor('#333333');
  final Color lightgrey1 = HexColor('#e4e5f1');
  final Color lightgrey2 = HexColor('#f2f5ff');
  final Color grey200 = HexColor('#E4E6EB');

  //dark mode color pallete
  final Color black1 = HexColor('#18191A');
  final Color black2 = HexColor('#242526');
  final Color black3 = HexColor('#3A3B3C');

  //app color
  final Color PRIMARY_COLOR = HexColor('#6C63FF');
  final Color COLOR_SUCCESS = HexColor('#00BF8E');
  final Color COLOR_WARNING = HexColor('#F7C94B');
  final Color COLOR_DANGER = HexColor('#F75842');
  final Color COLOR_INFO_DARK = HexColor('#7D8DA1');
  final Color COLOR_WHITE = HexColor('#FFF');
  final Color COLOR_BG1 = HexColor('#1F2641');
  final Color COLOR_BG2 = HexColor('#2E3267');
  final Color COLOR_BG3 = HexColor('#424890');
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if(hexColor.length == 6){
      hexColor = 'FF$hexColor';
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

