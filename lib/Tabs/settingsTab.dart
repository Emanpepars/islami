import 'package:flutter/material.dart';

import '../Reusable/ShowModalBottom.dart';

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
              showModalBottom_Themes();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.background,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Light',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodySmall,

              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Language',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          InkWell(
            onTap: () {
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Theme.of(context).colorScheme.background,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
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

  void showModalBottom_Themes() {
    showModalBottomSheet(
      context: context,
      builder: (context) => ShowModalBottom(),
    );
  }
}
