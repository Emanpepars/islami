import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  String language = "en";
  void changeTheme(ThemeMode mode){
    themeMode = mode;
    notifyListeners();
  }
  void changeLanguage(String lang){
    language = lang;
    notifyListeners();
  }


}

