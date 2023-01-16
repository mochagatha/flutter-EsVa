import 'package:flutter/material.dart';

hexStringToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  return Color(int.parse(hexColor, radix: 16));
}
const kPrimaryClr = Color(0xffd99156);
const kWhiteClr = Color.fromARGB(255, 255, 255, 255);
const kBlackClr = Color.fromARGB(255, 0, 0, 0);