import 'package:flutter/material.dart';

import '../Reusable/showLanguageBottom.dart';
import '../Reusable/showThemeBottom.dart';

class SettingTabProvider extends ChangeNotifier{
  void showModalBottomThemes(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalBottomTheme(),
    );
    notifyListeners();
  }
  void showModalBottomLanguage(context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalBottomThemeLanguage(),
    );
    notifyListeners();

  }

}