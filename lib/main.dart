import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/hadeth_details.dart';
import 'package:islami_project/homeScreen.dart';
import 'package:islami_project/splashScreen.dart';
import 'package:islami_project/style.dart';
import 'package:islami_project/sura_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeProvider themeChangeProvider = ThemeProvider();

  @override
  void initState() {
    super.initState();
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<ThemeProvider>(
        builder: (BuildContext context, ThemeProvider value, Widget? child) {
          return MaterialApp(
            theme: Provider.of<ThemeProvider>(context).isDarkMode
                ? MyThemeData.darkTheme
                : MyThemeData.lightTheme,
            darkTheme: MyThemeData.darkTheme,
            debugShowCheckedModeBanner: false,














            initialRoute: SplashScreen.routeName,

            routes: {
              SplashScreen.routeName: (context) =>  SplashScreen(),
              HomeScreen.routeName: (context) =>  HomeScreen(),
              SuraDetails.routeName: (context) =>  SuraDetails(),
              HadethDetails.routeName: (context) =>  HadethDetails(),
            },
          );
        },
      ),
    );
  }
}
