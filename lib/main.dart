import 'package:flutter/material.dart';
import 'package:flutter_catalog_1/pages/LoginPage.dart';
import 'package:flutter_catalog_1/pages/home.dart';
import 'package:flutter_catalog_1/utils/MyRoute.dart';
import 'package:flutter_catalog_1/widgets/MyTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: "/",
      routes: {
        MyRoute.loginPage: (context) => LoginPage(),
        MyRoute.homePage: (context) => Home()
      },
    );
  }
}