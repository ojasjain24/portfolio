import 'dart:math';

import 'package:flutter/material.dart';

Color CardBackgroundColor = Colors.black;
Color CardDescriptionColor = Colors.lime.withOpacity(0.7);
Color CardTitleColor = Colors.green;
Color CardSpreadColor = Colors.green.withOpacity(0.6);
Color CardSpreadCurrentColor = Colors.cyan.withOpacity(0.6);
double CardPadding = 20;
double CardDescriptionFontSize = 15;
double CardTitleFontSize = 25;
double CardRadius = 10;
double HeadingFontSize = 60;
Color MainSpreadColor =
    Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF000000),
    100: Color(0xFF000000),
    200: Color(0xFF000000),
    300: Color(0xFF000000),
    400: Color(0xFF000000),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;
