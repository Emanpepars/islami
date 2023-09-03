import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import '../Models/hadethModel.dart';

class AhadetProvider extends ChangeNotifier{
  List<HadethModel> allAhadethList = [];
  Future<void> loadFile() async {
    String ahadeth = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> ahadethList = ahadeth.split("#");
    for (int i = 0; i < ahadethList.length; i++) {
      int listIndexFirstLine = ahadethList[i].trim().indexOf('\n');
      String title = ahadethList[i].trim().substring(
        0,
        listIndexFirstLine,
      );
      String content = ahadethList[i].trim().substring(
        listIndexFirstLine + 1,
      );
      // print(content);
      HadethModel hadethModel = HadethModel(title, content);
      allAhadethList.add(hadethModel);
    }
    notifyListeners();
  }

}
// rootBundle.loadString('key').then((value) {
//   List<String> ahadethList = value.split("#");
//     for (int i = 0; i < ahadethList.length; i++) {
//       int listIndexFirstLine = ahadethList[i].trim().indexOf('\n');
//       String title = ahadethList[i].trim().substring(
//             0,
//             listIndexFirstLine,
//           );
//       String content = ahadethList[i].trim().substring(
//             listIndexFirstLine + 1,
//           );
//       print(content);
//       HadethModel hadethModel = HadethModel(title, content);
//       allAhadethList.add(hadethModel);
//     }
//     setState(() {});
// }
