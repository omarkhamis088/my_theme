import 'package:flutter/material.dart';

class ThemeProveder extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  //DarkTheme
  static final darkTheme = ThemeData(
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blueAccent,
      ),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.blueAccent),
      colorScheme: ColorScheme.light());

  //LightTheme
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.amber),
      colorScheme: ColorScheme.dark());
}
