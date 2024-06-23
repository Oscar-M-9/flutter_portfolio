import 'package:flutter/material.dart' show Color, MaterialColor;

abstract class ColorsApp {
  static const Color appYellow = Color(0xFFFBCD5A);
  static const Color appLight = Color(0xFFFEFDF9);
  static const Color appGray = Color(0xFFE6E6E6);
  static const Color appGray2 = Color(0xFFB8B8B8);
  static const Color appGray3 = Color(0xFFA1A1A1);
  static const Color appDark = Color(0xFF333333);

  static const Color appLight2 = Color(0xFFF9F9F9);

  static const Color colorRajah = Color(0xFFffc17a);
  static const Color colorRajah50 = Color(0xFFfff7ed);
  static const Color colorRajah100 = Color(0xFFffeed4);
  static const Color colorRajah200 = Color(0xFFffd9a9);
  static const Color colorRajah300 = Color(0xFFffc17a);
  static const Color colorRajah400 = Color(0xFFfe9739);
  static const Color colorRajah500 = Color(0xFFfc7713);
  static const Color colorRajah600 = Color(0xFFed5c09);
  static const Color colorRajah700 = Color(0xFFc54409);
  static const Color colorRajah800 = Color(0xFF9c3610);
  static const Color colorRajah900 = Color(0xFF7e2f10);
  static const Color colorRajah950 = Color(0xFF441506);

  static const Color colorCornflowerBlue50 = Color(0xFFf1f5fd);
  static const Color colorCornflowerBlue100 = Color(0xFFdfeafa);
  static const Color colorCornflowerBlue200 = Color(0xFFc6daf7);
  static const Color colorCornflowerBlue300 = Color(0xFF9ec2f2);
  static const Color colorCornflowerBlue400 = Color(0xFF70a1ea);
  static const Color colorCornflowerBlue500 = Color(0xFF5d8ae5);
  static const Color colorCornflowerBlue600 = Color(0xFF3963d7);
  static const Color colorCornflowerBlue700 = Color(0xFF3050c5);
  static const Color colorCornflowerBlue800 = Color(0xFF2d42a0);
  static const Color colorCornflowerBlue900 = Color(0xFF293b7f);
  static const Color colorCornflowerBlue950 = Color(0xFF1d264e);

  static const Color colorSeagull50 = Color(0xFFeefafd);
  static const Color colorSeagull100 = Color(0xFFd3f1fa);
  static const Color colorSeagull200 = Color(0xFFade5f4);
  static const Color colorSeagull300 = Color(0xFF75d0eb);
  static const Color colorSeagull400 = Color(0xFF56bee1);
  static const Color colorSeagull500 = Color(0xFF1994c1);
  static const Color colorSeagull600 = Color(0xFF1877a2);
  static const Color colorSeagull700 = Color(0xFF1a6084);
  static const Color colorSeagull800 = Color(0xFF1e506c);
  static const Color colorSeagull900 = Color(0xFF1d435c);
  static const Color colorSeagull950 = Color(0xFF0e2b3e);

  static const Map<int, Color> swatch = {
    50: Color(0xFFfff7ed),
    100: Color(0xFFffeed4),
    200: Color(0xFFffd9a9),
    300: Color(0xFFffc17a),
    400: Color(0xFFfe9739),
    500: Color(0xFFfc7713),
    600: Color(0xFFed5c09),
    700: Color(0xFFc54409),
    800: Color(0xFF9c3610),
    900: Color(0xFF7e2f10),
    950: Color(0xFF441506),
  };

  static const MaterialColor primeColor = MaterialColor(0xFFffc17a, swatch);
}
