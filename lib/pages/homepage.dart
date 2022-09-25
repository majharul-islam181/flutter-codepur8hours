import 'package:codepur_flutter/catalog.dart';
import 'package:codepur_flutter/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/itemWidget.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = 'majharul';

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Catalog App'),
        /*
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text('Catalog App',style: TextStyle(color: Colors.black),),
          */
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(5),
        itemCount: dummyList.length,
        itemBuilder: (BuildContext context, int index) {
          return IteamWidget(
            item1: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
