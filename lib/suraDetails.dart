import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Models/SuraDetailsModel.dart';
import 'home.dart';

class SuraDetails extends StatefulWidget {
  static const String routeName = 'suraname';

  const SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsModel;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, HomeScreen.routeName);
              },
              icon: const Icon(Icons.arrow_back),
              color: Colors.black,
            ),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(top: 50, right: 20, left: 20,bottom: 20,),
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20) ,
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0x71FFFFFF),
                      Colors.white,
                    ]
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      IconButton(
                          onPressed: (){},
                          icon: const Icon(
                            Icons.play_circle,color: Colors.black,
                          ),
                        iconSize: 30,
                          ),
                      Expanded(
                        child: Text(
                          "سورة ${args.name}",
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Theme.of(context).primaryColor,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 10,),
                            Text(
                              "${verses[index]} ( ${index+1} )",
                              style: Theme
                                  .of(context)
                                  .textTheme
                                  .bodyMedium,
                            ),
                          ],
                        );
                      },
                      itemCount: verses.length,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }

  //دي عملتها عشان اخد الفايلز
  Future<void> loadFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt',);
    setState(() {
      verses = sura.split('\n');
    });
  }
}
