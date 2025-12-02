import 'package:favorite_place/themes/color_schemes.dart';
import 'package:favorite_place/themes/text_themes.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorSchemes.light,
    textTheme: TextThemes.light,
  );

  static ThemeData darkTheme = ThemeData.from(
    useMaterial3: true,
    colorScheme: ColorSchemes.dark,
    textTheme: TextThemes.dark
  );
}