import 'package:flutter/material.dart';
import 'package:islami/Provider/mainProvider.dart';
import 'package:provider/provider.dart';

import '../Reusable/radioIcons.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mainProvider = Provider.of<MainProvider>(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage(
              mainProvider.themeMode == ThemeMode.light
                  ? 'assets/images/radio.png'
                  : "assets/images/darkRadio.png",
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            'إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RadioIcon(Icons.skip_previous, 40),
              RadioIcon(Icons.play_arrow,60),
              RadioIcon(Icons.skip_next,40),

            ],
          )
        ],
      ),
    );
  }
}
