import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

Color primaryColor = const Color(0xFF343541);
Color activeColor = const Color(0xFF40414f);

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  backgroundColor: Color(0xFFA9A9A9),
  fontFamily: GoogleFonts.roboto().fontFamily,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: primaryColor),
    color: Colors.white,
    titleTextStyle: TextStyle(
        color: primaryColor,
      fontWeight: FontWeight.w600,
      fontSize: 17
    )
  ),
  cardColor: const Color(0xFFf7f7f8),
  inputDecorationTheme: const InputDecorationTheme(fillColor: Colors.white),
  iconTheme: IconThemeData(color: primaryColor),
  shadowColor: Colors.grey.withOpacity(0.5),
  primaryColorLight: Color(0xFF3e3f4b),
  textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(
          fontSize: 30,
          fontWeight: FontWeight.w800,
          color: const Color(0xff343541)),
      displayMedium: GoogleFonts.roboto(
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: const Color(0xff343541)),
      displaySmall: GoogleFonts.roboto(
        fontSize: 18,
        color: const Color(0xff343541),
      ),
      bodyLarge: GoogleFonts.roboto(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: const Color(0xff343541)),
      bodyMedium: GoogleFonts.roboto(
        color: const Color(0xff343541),
        fontSize: 10,
        fontWeight: FontWeight.w400,
      )),
);

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF4E598C),
  scaffoldBackgroundColor: const Color(0xFF4E598C),
  primaryColorLight: Color(0xFF3e3f4b),
  appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      color: activeColor,
      titleTextStyle: TextStyle(
          // color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 17
      )
  ),
  fontFamily: GoogleFonts.roboto().fontFamily,
  cardColor: const Color(0xFF3e3f4b),
  inputDecorationTheme:
  const InputDecorationTheme(fillColor: Color(0xFF3e3f4b)),
  iconTheme: const IconThemeData(color: Colors.white),
  shadowColor: Colors.black54.withOpacity(0.3),
  textTheme: TextTheme(
      displayLarge: GoogleFonts.roboto(
          fontSize: 30, fontWeight: FontWeight.w800, color: Colors.white),
      displaySmall: GoogleFonts.roboto(
        fontSize: 18,
        color: Colors.white,
      ),
      bodyLarge: GoogleFonts.roboto(
          fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
      bodyMedium: GoogleFonts.roboto(
        color: Colors.white54,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      )),
);
