import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextThemes {
  static TextTheme _buildTextTheme(TextTheme base) {
    final bodyTheme = GoogleFonts.robotoTextTheme(base);
    final displayTheme = GoogleFonts.bebasNeueTextTheme(base);

    return displayTheme.copyWith(
      bodyLarge: bodyTheme.bodyLarge,
      bodyMedium: bodyTheme.bodyMedium,
      bodySmall: bodyTheme.bodySmall,
    );
  }

  static TextTheme light = _buildTextTheme(ThemeData.light().textTheme);
  static TextTheme dark = _buildTextTheme(ThemeData.dark().textTheme);
}
