import 'dart:math';

import 'package:flutter/material.dart';

Color CardBackgroundColor = Colors.black;
Color CardDescriptionColor = Colors.lime.withOpacity(0.7);
Color CardTitleColor = Colors.green;
Color CardSpreadColor = Colors.green.withOpacity(0.6);
double CardPadding = 20;
double CardDescriptionFontSize = 15;
double CardTitleFontSize = 25;
double CardRadius = 10;
Color MainSpreadColor =
    Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
