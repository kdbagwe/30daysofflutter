import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog_1/models/catalog.dart';
import 'package:flutter_catalog_1/widgets/ItemWidget.dart';
import 'package:flutter_catalog_1/widgets/MyDrawer.dart';

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override

  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalog = await rootBundle.loadString("assets/files/catalog.json");
    final catalogDecode = jsonDecode(catalog);
    var products = catalogDecode["products"];
    Catalog.items = List.from(products)
      .map<Item>((item) => Item.fromMap(item))
      .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    
    var name = "Kaustubh's";
    //final dummy = List.generate(50, (index) => Category.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("$name App")
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (Catalog.items.isNotEmpty) ? ListView.builder(
          itemCount: Catalog.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: Catalog.items[index]);
          },
        ) : Center(
          child: CircularProgressIndicator()
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}