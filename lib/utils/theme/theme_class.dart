import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/color_constants/color_constants.dart';

class AppThemes {
  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData = ThemeData(
    textTheme: TextTheme(
        button: GoogleFonts.montserrat(
          fontSize: 18,
          color: AppColors.authContainer,
          fontWeight: FontWeight.w200,
        ),
        headline1: GoogleFonts.montserrat(
          fontSize: 24,
          color: AppColors.black,
          fontWeight: FontWeight.w700,
        ),
        headline2: GoogleFonts.montserrat(
          fontSize: 18,
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        subtitle1: GoogleFonts.montserrat(
          fontSize: 14,
          color: AppColors.black,
          fontWeight: FontWeight.w100,
        )),
  );
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: TextTheme(
        button: GoogleFonts.montserrat(
          fontSize: 18,
          color: AppColors.authContainer,
          fontWeight: FontWeight.w200,
        ),
        headline1: GoogleFonts.montserrat(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        headline2: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w200,
        ),
      ),
      appBarTheme: AppBarTheme(
        color: colorScheme.primary,
        elevation: 0,
        brightness: colorScheme.brightness,
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFE91E6B),
    primaryVariant: Color(0xFF640AFF),
    secondary: Color(0xFF03DAC5),
    secondaryVariant: Color(0xFF0AE1C5),
    background: Color(0xFFF8F8F8),
    surface: Color(0xFFFAFBFB),
    onBackground: Color(0xDDF7F7F7),
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static final ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFE91E6B),
    primaryVariant: Color(0x50E91E6B),
    secondary: Color(0xFFE91E6B),
    secondaryVariant: Colors.yellow.shade900,
    background: Color(0xFF1E2630),
    surface: Color(0xff1E2746),
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: Colors.red,
    onError: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.white,
    brightness: Brightness.dark,
  );
}
