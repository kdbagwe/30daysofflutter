import 'package:flutter/material.dart';
import 'package:flutter_catalog_1/widgets/MyDrawer.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    var day = 30;
    var name = "Kaustubh's";

    return Scaffold(
      appBar: AppBar(
        title: Text("$name App")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $day Days of flutter app")
        )
      ),
      drawer: MyDrawer(),
    );
  }
}