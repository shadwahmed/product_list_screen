import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyThemeData {
  static const primaryColor = Color(0xff004182);

  static ThemeData lightTheme = ThemeData(
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.poppins(
          color: Color.fromRGBO(6, 0, 79, 1),
          fontWeight: FontWeight.w400,
          fontSize: 11.sp,
        ),
        bodyMedium: GoogleFonts.poppins(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 11.sp,
        ),
        bodySmall: GoogleFonts.poppins(
          color: primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 10.sp,
        )),
    brightness: Brightness.light,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black87,
      )
  );
}
