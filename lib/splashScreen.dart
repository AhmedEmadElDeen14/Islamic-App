import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_provider.dart';
import 'package:islami_project/homeScreen.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = "SplashRoute";

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 5),
          () {
        Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Provider.of<ThemeProvider>(context).isDarkMode
                ? const AssetImage("assets/images/splash_bg_dark.png")
                : const AssetImage("assets/images/splash_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 262,
                height: 262,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Provider.of<ThemeProvider>(context).isDarkMode
                        ? const AssetImage("assets/images/splash_logo_dark.png")
                        : const AssetImage("assets/images/splash_logo.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: Provider.of<ThemeProvider>(context).isDarkMode
                    ? const AssetImage("assets/images/route_dark.png")
                    : const AssetImage("assets/images/route_gold.png"),
                width: 139,
                height: 139,
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Supervised by Mohamed Hamoda",
                style: TextStyle(
                  color: Provider.of<ThemeProvider>(context).isDarkMode
                      ? const Color(0xffFACC1D)
                      : const Color(0xffB7935F),
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
