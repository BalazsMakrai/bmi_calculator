import 'package:flutter/material.dart';

class Palette {
  static const MaterialColor purpleishBlack = MaterialColor(
    0xff0a0e21,
    // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff0a0e21), //10%
      100: Color(0xff232637), //20%
      200: Color(0xff3b3e4d), //30%
      300: Color(0xff545664), //40%
      400: Color(0xff6c6e7a), //50%
      500: Color(0xff858790), //60%
      600: Color(0xff9d9fa6), //70%
      700: Color(0xffb6b7bc), //80%
      800: Color(0xffcecfd3), //90%
      900: Color(0xffffffff), //100%
    },
  );
} // you can define define int 500 as the default shade and add your lighter tints above and darker tints below.
