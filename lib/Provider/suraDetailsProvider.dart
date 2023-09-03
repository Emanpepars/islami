import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SuraDetailsProvider extends ChangeNotifier{
  List<String> verses = [];
  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt',);
      verses = sura.split('\n');
      notifyListeners();
  }
}