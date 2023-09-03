import 'dart:core';
import 'package:flutter/material.dart';
import 'package:islami/Provider/mainProvider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ShowModalBottomThemeLanguage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.en,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color:  provider.language == "en" ? provider.themeMode==ThemeMode.light? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSecondary : Colors.grey,
                    fontWeight: provider.language == "en"  ?FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: provider.language == "en" ? provider.themeMode==ThemeMode.light? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSecondary : Colors.grey,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.ar,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: provider.language == "ar" ? provider.themeMode==ThemeMode.light? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSecondary : Colors.grey,
                    fontWeight: provider.language == "ar"  ?FontWeight.normal :FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: provider.language == "ar" ? provider.themeMode==ThemeMode.light? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSecondary : Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
