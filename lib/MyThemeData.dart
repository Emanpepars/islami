import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  //اكتر لون بيتكرر ف الاسكرين
  static const Color lightColor = Color(0xFFB7935F);
  static const Color darkColor = Color(0xFF141A2E);
  static const Color yellowColor = Color(0xFFFACC1D);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: lightColor,
          onPrimary: Colors.white,
          onPrimaryContainer: Colors.white,
          onSecondaryContainer: Color(0x70FFFFFF),
        // secondary >> num of tasbeh
          secondary: Color(0xB8CCB17F),
          // text in page details
          onSecondary: Colors.black,
          error: Colors.red,
          onError: Colors.transparent,
          // background >> tasbeh
          background: lightColor,
          onBackground: Colors.white,
        // surface >> divider color
        surface: lightColor,
        // onSurface >> divider, icon  color in page details
        onSurface: Colors.black,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: lightColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
      ));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: darkColor,
        onPrimary: Colors.black,
        onPrimaryContainer: darkColor,
        onSecondaryContainer: Color(0x8E141A2E),
        // secondary >> num of tasbeh
        secondary: darkColor,
        onSecondary: yellowColor,
        error: Colors.red,
        onError: Colors.transparent,
        // background >> tasbeh
        background: yellowColor,
        onBackground: Colors.black,
        // surface >> divider color
        surface: yellowColor,
        onSurface: yellowColor,
      ),
      textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          color: Colors.white,
        ),
        bodySmall: GoogleFonts.elMessiri(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkColor,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Color(0xFFFACC1D),
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.white),
      ));
}
