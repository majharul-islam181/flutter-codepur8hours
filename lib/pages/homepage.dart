import 'package:codepur_flutter/widgets/drawer.dart';
import 'package:flutter/material.dart';

class MyhomePage extends StatelessWidget {
  const MyhomePage({Key? key}) : super(key: key);
  final int days=30;
  final String name = 'majharul';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Catolog App'),
        /*
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text('Catalog App',style: TextStyle(color: Colors.black),),
          */
      ),
      body: Center(
        child: Container(
          child: Text('Welco $days!'),
        )
      ),
      drawer: MyDrawer(),

    );
  }
}
