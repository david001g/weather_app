import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme() {
  Color darkPrimaryColor = Colors.black;
  Color darkPrimaryVariantColor = const Color(0xFF191919);
  Color darkFontColor = Colors.white;
  Color darkFontVariantColor = Colors.white60;
  Color buttonColor = Colors.white60;
  Color buttonLabelColor = Colors.white;

  return ThemeData(
    primaryColor: darkPrimaryColor,
    colorScheme: ColorScheme.dark(
      primary: darkPrimaryColor,
      secondary: darkPrimaryVariantColor,
      background: darkPrimaryVariantColor,
      error: Colors.red,
    ),
    scaffoldBackgroundColor: darkPrimaryVariantColor,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 14.sp,
        color: darkFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        color: darkFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 60.sp,
        color: darkFontColor,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20.sp,
        color: darkFontColor,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        color: darkFontColor,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 20.sp,
        color: buttonLabelColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: darkFontVariantColor,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: darkPrimaryVariantColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
    ),
  );
}
