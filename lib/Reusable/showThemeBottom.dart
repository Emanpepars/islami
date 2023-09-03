import 'dart:core';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islami/Provider/mainProvider.dart';
import 'package:provider/provider.dart';

class ShowModalBottomTheme extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MainProvider>(context);
    bool isLight = provider.themeMode == ThemeMode.light; // Get the current theme mode from your provider
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color:  isLight ? Theme.of(context).colorScheme.primary : Colors.grey,
                    fontWeight: isLight ?FontWeight.bold : FontWeight.normal,
                      ),
                ),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: isLight ? Theme.of(context).colorScheme.primary : Colors.grey,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isLight ? Colors.grey : Theme.of(context).colorScheme.onSecondary,
                    fontWeight: isLight ?FontWeight.normal :FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Icon(
                    Icons.done,
                  color: isLight ? Colors.grey : Theme.of(context).colorScheme.onSecondary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
