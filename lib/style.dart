import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xFFB7935F);
  static Color secondaryColor = const Color(0xFF141A2E);

  static ImageProvider<Object> lightBgProvider =
      const AssetImage("assets/images/default_bg.png");
  static ImageProvider<Object> darkBgProvider =
      const AssetImage("assets/images/dark_bg.png");

  // static ImageProvider<Object> darkBgProvider = const AssetImage("assets/images/dark_bg.png");
  // static ImageProvider<Object> darkBgProvider = const AssetImage("assets/images/dark_bg.png");

  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xffB7935F),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF242424),
      unselectedItemColor: Colors.white,
    ),
    dividerTheme: const DividerThemeData(color: Color(0xffB7935F)),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        )),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFFFACC1D),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff141A2E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFFFACC1D),
      unselectedItemColor: Colors.white,
    ),
    dividerTheme: const DividerThemeData(color: Color(0xFFFACC1D)),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: const Color(0xffFACC1D))),
  );
}
