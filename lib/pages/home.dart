import 'package:flutter/material.dart';
import 'package:flutter_catalog_1/models/category.dart';
import 'package:flutter_catalog_1/widgets/ItemWidget.dart';
import 'package:flutter_catalog_1/widgets/MyDrawer.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    var day = 30;
    var name = "Kaustubh's";
    final dummy = List.generate(50, (index) => Category.items[0]);


    return Scaffold(
      appBar: AppBar(
        title: Text("$name App")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummy.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummy[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}