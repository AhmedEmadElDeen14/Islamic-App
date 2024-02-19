import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCounter = 0;
  int sebhaIndex = 0;

  List<String> sebha = [
    "سبحان الله",
    "الله اكبر",
    "الحمدلله",
    "استغفر الله",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              if (sebhaCounter > 32) {
                sebhaCounter = 0;
                if (sebhaIndex == 3) {
                  sebhaIndex = 0;
                } else {
                  sebhaIndex++;
                }
              }
              sebhaCounter++;
              setState(() {});
            },
            child: SizedBox(
              height: 310,
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    child: Image(
                      image: Provider.of<ThemeProvider>(context).isDarkMode
                          ? const AssetImage(
                              "assets/images/head_sebha_dark.png")
                          : const AssetImage(
                              "assets/images/head_sebha_logo.png"),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: Image(
                      image: Provider.of<ThemeProvider>(context).isDarkMode
                          ? const AssetImage(
                              "assets/images/body_sebha_dark.png")
                          : const AssetImage(
                              "assets/images/body_sebha_logo.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppLocalizations.of(context)!.sebhaNum,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const Color(0xff141A2E)
                    : const Color(0xffB7935F),
                borderRadius: BorderRadius.circular(15)),
            padding: const EdgeInsets.all(15),
            child: Text(
              "$sebhaCounter",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const Color(0xffFACC1D)
                    : const Color(0xffB7935F),
                borderRadius: BorderRadius.circular(25)),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Text(
              sebha[sebhaIndex],
              style: TextStyle(
                color: Provider.of<ThemeProvider>(context).isDarkMode
                    ? Colors.black
                    : Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
