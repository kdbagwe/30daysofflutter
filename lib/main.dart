import 'package:flutter/material.dart';
import 'package:flutter_catalog_1/pages/LoginPage.dart';
import 'package:flutter_catalog_1/pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      color: Colors.white,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.lime,
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => Home()
      },
    );
  }
}