import 'dart:core';

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
            },
            child: Row(
              children: [
                Text(
                  'Light',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color:  isLight ? Theme.of(context).colorScheme.primary : Colors.black,
                    fontWeight: FontWeight.bold,
                      ),
                ),
                const Spacer(),
                Icon(
                  Icons.done,
                  color: isLight ? Theme.of(context).colorScheme.primary : Colors.black,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: (){
              provider.changeTheme(ThemeMode.dark);
            },
            child: Row(
              children: [
                Text(
                  "Dark",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isLight ? Colors.black : Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Icon(
                    Icons.done,
                  color: isLight ? Colors.black : Theme.of(context).colorScheme.primary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
