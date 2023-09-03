import 'package:flutter/material.dart';
import 'package:islami/hadethDetails.dart';
import 'package:islami/suraDetails.dart';
import 'package:provider/provider.dart';
import 'MyThemeData.dart';
import 'Provider/mainProvider.dart';
import 'home.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        localizationsDelegates: const [
          AppLocalizations.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'), // English
          Locale('ar'), // arabic
        ],
        locale: Locale(provider.language),
        routes: {
          HomeScreen.routeName: (c) => HomeScreen(),
          SuraDetails.routeName: (c) =>  SuraDetails(),
          HadethDetails.routeName: (c) => const HadethDetails(),
        });
  }
}
