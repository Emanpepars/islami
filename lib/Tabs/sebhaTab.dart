import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SabhaTab extends StatefulWidget {
  @override
  State<SabhaTab> createState() => _SabhaTabState();
}

class _SabhaTabState extends State<SabhaTab> {
  double _rotation = 0.0;
  int counter = 0;
  List<String> titleList = [
    'سبحان الله',
    'الحمدلله',
    'لا إله إلا الله',
    'الله اكبر',
  ];
  String title = 'سبحان الله';
  int i = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // height: 620,
      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Positioned(
                    top: 65,
                    child: GestureDetector(
                      onTap: () {
                        if (counter == 33) {
                          if (i == 3) {
                            title = titleList[i];
                            i = 0;
                          } else {
                            title = titleList[i];
                            i++;
                          }
                          counter = 0;
                        } else {
                          counter++;
                        }

                        setState(() {
                          _rotation +=
                              (2 * pi) / 33; // Rotating by 1/33 radians
                        });
                      },
                      child: Transform.rotate(
                        angle: _rotation,
                        child: Image.asset(
                          Theme.of(context).colorScheme.brightness == Brightness.light?
                          'assets/images/body of seb7a.png':
                          "assets/images/dark_body_of_seb7a.png",
                          width: 250,
                        ), // Replace with your image path
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage(
                      Theme.of(context).brightness == Brightness.light
                          ? 'assets/images/head of seb7a.png'
                          : "assets/images/dark_head_of_seb7a.png",
                    ),
                    width: 70,
                  ),
                ],
              ),
            ),
          ),
          Text(
            'عدد التسبيحات',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 69,
            height: 70,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(25),
            ),
            alignment: Alignment.center,
            child: Text('$counter',
                style: GoogleFonts.quicksand(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: 250,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
