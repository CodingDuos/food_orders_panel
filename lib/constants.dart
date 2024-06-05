import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

//Padding + Margin
const kPaddingMargin = EdgeInsets.all(20);
TextTheme textTheme = TextTheme(
  displayLarge: GoogleFonts.roboto(
      fontSize: 48.sp,
      fontWeight: FontWeight.w700,
      color: const Color.fromARGB(255, 3, 3, 3)),
  displayMedium: GoogleFonts.poppins(
      fontSize: 58, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  displaySmall: GoogleFonts.poppins(fontSize: 46, fontWeight: FontWeight.w400),
  headlineMedium: GoogleFonts.poppins(
      fontSize: 33, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headlineSmall: GoogleFonts.poppins(fontSize: 23, fontWeight: FontWeight.w400),
  titleLarge: GoogleFonts.poppins(
      color: Colors.black,
      fontSize: 22,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.15),
  titleMedium: GoogleFonts.poppins(
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: const Color.fromARGB(255, 2, 2, 2)),
  titleSmall: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyLarge: GoogleFonts.poppins(
      fontSize: 15, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyMedium: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  labelLarge: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: const Color.fromARGB(255, 19, 143, 120),
    backgroundColor: const Color.fromARGB(255, 19, 143, 120),
  ),
  bodySmall: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  labelSmall: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
ButtonStyle btnStyle(Color txtColor, Color bgColor) {
  return ButtonStyle(
      foregroundColor: MaterialStateProperty.all(txtColor),
      backgroundColor: MaterialStateProperty.all(bgColor));
}

Color primarycolor = const Color(0xff25655E);
