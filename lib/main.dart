import 'package:codepur_flutter/loginpage.dart';
import 'package:codepur_flutter/widgets/themes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codepur_flutter/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // bringVegetables(bag: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      /* dark mode.
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
  */
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),

      //
      // home: const MyhomePage(),
      //
      routes: {
        '/':(context) => const MyhomePage(),//initial route use ("/") or ('/')
        '/home': (context) => const MyhomePage(),
        '/login': (context) => const LoginPage(),
    },
    );
  }

  /*
  bringVegetables({required bool bag,int taka=100}){
    //take cycle

    //Go to Sec 16
     }
 */



}
