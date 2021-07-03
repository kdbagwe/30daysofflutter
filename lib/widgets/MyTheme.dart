import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.yellow,
    fontFamily: GoogleFonts.lato().fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0.0
    )
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
    brightness: Brightness.dark
  );
}