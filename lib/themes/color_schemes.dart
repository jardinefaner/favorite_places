import 'package:flutter/material.dart';

const Color kSeedColor = Colors.red;

class ColorSchemes {
  static ColorScheme light = ColorScheme.fromSeed(
    seedColor: kSeedColor,
    brightness: Brightness.light,
  );

  static ColorScheme dark = ColorScheme.fromSeed(
    seedColor: kSeedColor,
    brightness: Brightness.dark,
  );
}
