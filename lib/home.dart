import 'package:flutter/material.dart';
import 'package:islami/Tabs/settingsTab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
  List<Widget> tabsList = [QuranTab(),AhadethTab(),SabhaTab(),const RadioTab(),const SettingsTab(),];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            Theme.of(context).colorScheme.brightness == Brightness.light?
            'assets/images/background.png': 'assets/images/dark_background.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          title: Text(
            AppLocalizations.of(context)!.appTitle,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          //backgroundColor: Theme.of(context).primaryColor,
          items: [
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/moshaf.png'),
              ),
              label: AppLocalizations.of(context)!.quran,
              backgroundColor: Theme.of(context).colorScheme.primary,

            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/ahadeth.png'),
              ),
              label: AppLocalizations.of(context)!.ahadeth,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/sebha.png'),
              ),
              label: AppLocalizations.of(context)!.sebha,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const ImageIcon(
                AssetImage('assets/images/radioIcon.png'),
              ),
              label: AppLocalizations.of(context)!.radio,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.settings),
              label: 'settings',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
        body: tabsList[index],
      ),
    );
  }
}
