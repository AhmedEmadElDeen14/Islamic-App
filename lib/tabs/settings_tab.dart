import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/sheets/language_sheet.dart';
import 'package:islami_project/sheets/theme_sheet.dart';
import 'package:islami_project/style.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  late bool isSwitched;

  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                AppLocalizations.of(context)!.language,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              )),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    decoration: BoxDecoration(
                      color: Provider.of<ThemeProvider>(context).isDarkMode
                          ? MyThemeData.secondaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: LanguageBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Provider.of<ThemeProvider>(context).isDarkMode
                      ? MyThemeData.darkTheme.primaryColor
                      : MyThemeData.lightTheme.primaryColor,
                ),
              ),
              alignment: Alignment.topLeft,
              child: themeProvider.languageCode == "ar"
                  ? const Text("عربي")
                  : const Text("English"),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * .7,
                    decoration: BoxDecoration(
                      color: Provider.of<ThemeProvider>(context).isDarkMode
                          ? MyThemeData.secondaryColor
                          : Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: ThemeBottomSheet(),
                  );
                },
              );
            },
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Provider.of<ThemeProvider>(context).isDarkMode
                      ? MyThemeData.darkTheme.primaryColor
                      : MyThemeData.lightTheme.primaryColor,
                ),
              ),
              alignment: Alignment.topLeft,
              child: themeProvider.languageCode == "en"
                  ? themeProvider.isDarkMode
                      ? const Text("Dark")
                      : const Text("Light")
                  : themeProvider.isDarkMode
                      ? const Text("داكن")
                      : const Text("مضئ"),
            ),
          ),
        ],
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// "Dark Mode",
// style: Theme.of(context).textTheme.titleLarge,
// ),
// Switch(
// value: themeProvider.isDarkMode,
// onChanged: (bool value) {
// themeChange.darkTheme = value;
// },
// )
// ],
// )
