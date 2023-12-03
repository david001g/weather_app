import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeClass{

  /// Light Theme
  Color lightPrimaryColor = Colors.white;
  Color lightSecondaryColor = Colors.white60;
  Color lightFontColor = Colors.black87;
  Color lightFontVariantColor = Colors.black54;

  /// Dark Theme
  Color darkPrimaryColor = Colors.black;
  Color darkPrimaryVariantColor = Colors.black26;
  Color darkFontColor = Colors.white;
  Color darkFontVariantColor = Colors.white60;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeClass().lightPrimaryColor,
    colorScheme: ColorScheme.light(
      primary: ThemeClass().lightPrimaryColor,
      secondary: ThemeClass().lightSecondaryColor,
      error: Colors.red,
    ),
    scaffoldBackgroundColor: ThemeClass().lightPrimaryColor,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 14,
        color: ThemeClass().lightFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 20,
        color: ThemeClass().lightFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 60,
        color: ThemeClass().lightFontColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: ThemeClass().lightFontVariantColor,
    ),

  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeClass().darkPrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: ThemeClass().darkPrimaryColor,
      secondary: ThemeClass().darkPrimaryVariantColor,
      background: ThemeClass().darkPrimaryVariantColor,
      error: Colors.red,
    ),
    scaffoldBackgroundColor: ThemeClass().darkPrimaryVariantColor,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 12,
        color: ThemeClass().darkFontColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        color: ThemeClass().darkFontColor,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        color: ThemeClass().darkFontColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: ThemeClass().darkFontColor,
    ),
  );
}
