import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Models/hadethModel.dart';
import '../hadethDetails.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadethList.isEmpty) {
      loadFile();
    }

    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/hadeth_img.png" ,),
            ),
            Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.surface,
            ),
            Text(
              'الأحاديث',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(
              thickness: 1,
              color: Theme.of(context).colorScheme.surface,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Center(
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HadethDetails.routeName,
                          arguments: allAhadethList[index],
                        );
                      },
                      child: Text(
                        allAhadethList[index].title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                },
                itemCount: allAhadethList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
    setState(() {});
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

}
