import 'package:flutter/material.dart';
import 'package:islami/Reusable/showLanguageBottom.dart';

import '../Reusable/showThemeBottom.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
           Text(
            'Theming',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showModalBottomThemes();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.background,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Light',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodySmall,

              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
              showModalBottomLanguage();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.background,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'عربي',
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.bodySmall,

              ),
            ),
          ),
        ],
      ),
    );
  }

  void showModalBottomThemes() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalBottomTheme(),
    );
  }void showModalBottomLanguage() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalBottomThemeLanguage(),
    );
  }
}
