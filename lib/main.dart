import 'package:flutter/material.dart';
import 'package:islami/hadethDetails.dart';
import 'package:islami/suraDetails.dart';
import 'package:provider/provider.dart';
import 'MyThemeData.dart';
import 'Provider/mainProvider.dart';
import 'home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context)=> MainProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: provider.themeMode,
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (c) => HomeScreen(),
          SuraDetails.routeName: (c) => SuraDetails(),
          HadethDetails.routeName: (c) => HadethDetails(),
        });
  }
}
