import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyThemeData {
  static const primaryColor = Color(0xff004182);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 14.sp,
        ),
        bodyMedium: GoogleFonts.poppins(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp,
        ),
        bodySmall: GoogleFonts.poppins(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 11.sp,
        )),
    brightness: Brightness.light,
  );
}
