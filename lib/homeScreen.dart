import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/style.dart';
import 'package:islami_project/tabs/ahadeth_tab.dart';
import 'package:islami_project/tabs/quranTab.dart';
import 'package:islami_project/tabs/radio_tab.dart';
import 'package:islami_project/tabs/sebha_tab.dart';
import 'package:islami_project/tabs/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeRoute";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Provider.of<ThemeProvider>(context).isDarkMode
                  ? MyThemeData.darkBgProvider
                  : MyThemeData.lightBgProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: MyThemeData.lightTheme.scaffoldBackgroundColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "إسلامي",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            type: Theme.of(context).bottomNavigationBarTheme.type,
            showUnselectedLabels: false,
            iconSize: 25,
            showSelectedLabels: false,
            selectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
            unselectedItemColor:
                Theme.of(context).bottomNavigationBarTheme.unselectedItemColor,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_quran.png"),
                    size: 35),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_sebha.png"),
                    size: 35),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_radio.png"),
                    size: 35),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/icon_hadeth.png"),
                    size: 35),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 35),
                label: "",
              ),
            ],
          ),
          body: tabs[index],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const SebhaTab(),
    const RadioTab(),
    const AhadethTab(),
    const SettingsTab()
  ];
}
