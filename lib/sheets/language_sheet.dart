import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              themeProvider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Text(
                AppLocalizations.of(context)!.english,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              themeProvider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(15),
              child: Text(
                AppLocalizations.of(context)!.arabic,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
