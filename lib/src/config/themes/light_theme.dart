import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme() {
  Color lightPrimaryColor = Colors.white;
  Color lightSecondaryColor = const Color(0xFFf2f2f2);
  Color lightFontColor = Colors.black87;
  Color lightFontVariantColor = Colors.black54;
  Color buttonColor = Colors.white;
  Color buttonLabelColor = Colors.teal;

  return ThemeData(
    primaryColor: lightPrimaryColor,
    colorScheme: ColorScheme.light(
      primary: lightPrimaryColor,
      secondary: lightSecondaryColor,
      error: Colors.red,
    ),
    scaffoldBackgroundColor: lightSecondaryColor,
    fontFamily: GoogleFonts.robotoCondensed().fontFamily,
    textTheme: TextTheme(
      bodySmall: TextStyle(
        fontSize: 14.sp,
        color: lightFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontSize: 20.sp,
        color: lightFontVariantColor,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(
        fontSize: 60.sp,
        color: lightFontColor,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: TextStyle(
        fontSize: 20.sp,
        color: lightFontColor,
        fontWeight: FontWeight.bold,
      ),
      titleSmall: TextStyle(
        fontSize: 14.sp,
        color: lightFontColor,
        fontWeight: FontWeight.bold,
      ),
      labelMedium: TextStyle(
        fontSize: 20.sp,
        color: buttonLabelColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    iconTheme: IconThemeData(
      color: lightFontVariantColor,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: buttonColor,
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
