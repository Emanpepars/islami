import 'package:flutter/material.dart';
import 'package:islami/Models/hadethModel.dart';
import 'package:islami/Provider/mainProvider.dart';
import 'package:provider/provider.dart';
class HadethDetails extends StatelessWidget {
  const HadethDetails({Key? key}) : super(key: key);
  static const String routeName = 'HadethDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var mainProvider = Provider.of<MainProvider>(context);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              Theme.of(context).colorScheme.brightness == Brightness.light
                  ? 'assets/images/background.png'
                  : "assets/images/dark_background.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 65,
            title: Text(
              'إسلامي',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
              color: mainProvider.themeMode == ThemeMode.light ? Colors.black : Colors.white,
            ),
          ),
          body: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 50,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              margin: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context).colorScheme.onSecondaryContainer,
                      Theme.of(context).colorScheme.onPrimaryContainer,
                    ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    args.title,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: Theme.of(context).colorScheme.onSurface,
                    endIndent: 10,
                    indent: 10,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            args.content,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color:
                                      Theme.of(context).colorScheme.onSecondary,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
