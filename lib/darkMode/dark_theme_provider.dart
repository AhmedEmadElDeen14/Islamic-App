import 'package:flutter/material.dart';
import 'package:islami_project/darkMode/dark_theme_preference.dart';

class ThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;
  String languageCode = "en";

  changeLanguage(String code) {
    languageCode = code;
    notifyListeners();
  }

  bool get isDarkMode => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
