import 'package:flutter/material.dart';
import 'package:islami/suraDetails.dart';


import 'MyThemeData.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyThemeData.lightTheme,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (c) =>  HomeScreen(),
        SuraDetails.routeName: (c) =>  SuraDetails(),
      }
    );
  }
}

