import 'package:flutter/material.dart';
import 'Tabs/ahadethTab.dart';
import 'Tabs/quranTab.dart';
import 'Tabs/radioTab.dart';
import 'Tabs/sebhaTab.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
  static const String routeName = 'homePage';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> tabsList = [QuranTab(),AhadethTab(),SabhaTab(),RadioTab(),];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/background.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor: Theme.of(context).primaryColor,
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images/moshaf.png'),
                ),
                label: 'القرآن',
                backgroundColor: Theme.of(context).primaryColor,

              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images/ahadeth.png'),
                ),
                label: 'الأحاديث',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images/sebha.png'),
                ),
                label: 'التسبيح',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage('assets/images/radio.png'),
                ),
                label: 'الراديو',
                backgroundColor: Theme.of(context).primaryColor,
              ),
            ],
          ),
          body: tabsList[index],
        ),
      ),
    );
  }
}
