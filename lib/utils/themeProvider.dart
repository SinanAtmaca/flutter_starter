import 'package:flutter/material.dart';

import '../utils/color_schemes.dart';
import '../utils/constants.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    pageTransitionsTheme: pageTransitionsTheme,
    snackBarTheme: SnackBarThemeData(backgroundColor: lightColorScheme.primary),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    pageTransitionsTheme: pageTransitionsTheme,
    snackBarTheme: SnackBarThemeData(backgroundColor: lightColorScheme.primary),
  );
}
