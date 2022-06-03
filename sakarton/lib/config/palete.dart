import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor smilyPurple = MaterialColor(
    0xFFB393F3, // 0%  this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch
    <int, Color>{
      50: Color(0xFFfeb701), //10%
      100: Color(0xFFfeb701), //20%
      200: Color(0xFFfeb701), //30%
      300: Color(0xFFfeb701), //40%
      400: Color(0xFFfeb701), //50%
      500: Color(0xFFfeb701), //60%
      600: Color(0xFFfeb701), //70%
      700: Color(0xFFfeb701), //80%
      800: Color(0xFFfeb701), //90%
      900: Color(0xFFfeb701), //100%
    },
  );

  static const Color smilyOrange = Color(0xFFfeb701);

  static const Color smilyWhite = Color(0xFFffffff);

  static const Color smilyBlack = Color(0xFF000000);

}