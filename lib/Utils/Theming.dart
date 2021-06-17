import 'package:flutter/material.dart';

var darkTheme = ThemeMode.dark;
var lightTheme = ThemeMode.light;

enum ThemeType { Light, Dark }

class ThemeModifier extends ChangeNotifier {
  ThemeMode currentTheme = lightTheme;

  setTheme() {
    if (currentTheme == lightTheme) {
      currentTheme = darkTheme;
      return notifyListeners();
    } else if (currentTheme == darkTheme) {
      currentTheme = lightTheme;
      return notifyListeners();
    }
  }
}