import 'package:flutter/material.dart';

Color CardBackgroundColor = Colors.black;
Color CardDescriptionColor = Colors.green.withOpacity(0.7);
Color CardTitleColor = Colors.green;
Color CardSpreadColor = Colors.tealAccent.withOpacity(0.45);
Color CardSpreadCurrentColor = Colors.tealAccent.withOpacity(0.45);
double CardPadding = 20;
double CardDescriptionFontSize = 15;
double CardTitleFontSize = 25;
double CardRadius = 10;
double HeadingFontSize = 60;
Color MainSpreadColor = Colors.white70;

const MaterialColor primaryBlack = MaterialColor(
  _blackPrimaryValue,
  <int, Color>{
    50: Color(0xFF575757),
    100: Color(0xFF484848),
    200: Color(0xFF2D2D2D),
    300: Color(0xFF212121),
    400: Color(0xFF0E0E0E),
    500: Color(_blackPrimaryValue),
    600: Color(0xFF000000),
    700: Color(0xFF000000),
    800: Color(0xFF000000),
    900: Color(0xFF000000),
  },
);
const int _blackPrimaryValue = 0xFF000000;
