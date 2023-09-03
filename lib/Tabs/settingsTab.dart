import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/Provider/mainProvider.dart';
import 'package:provider/provider.dart';
import '../Provider/settingsTabProvider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SettingTabProvider(),
      builder: (context, child) {
        var mainProvider = Provider.of<MainProvider>(context);
        var settingProvider = Provider.of<SettingTabProvider>(context);

        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.theming,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              InkWell(
                onTap: () {
                  settingProvider.showModalBottomThemes(context);
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    mainProvider.themeMode == ThemeMode.light
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              InkWell(
                onTap: () {
                  settingProvider.showModalBottomLanguage(context);
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
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    mainProvider.language == "en" ? "English" : 'عربي',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
