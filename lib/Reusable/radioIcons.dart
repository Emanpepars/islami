import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/mainProvider.dart';

class RadioIcon extends StatelessWidget {

  IconData iconData;
  double iconSize;
  RadioIcon(this.iconData,this.iconSize, {super.key});
  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<MainProvider>(context);

    return InkWell(
      onTap: () {},
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Icon(
        size: iconSize,
        iconData,
        color: mainProvider.themeMode == ThemeMode.light ? Theme.of(context).colorScheme.primary: Theme.of(context).colorScheme.onSecondary,
      ),
    );
  }
}
