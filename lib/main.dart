import 'package:flutter/material.dart';
import 'package:my_theme/models/theme_proveder.dart';
import 'package:provider/provider.dart';
import 'models/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = "Light & Dark Theme";
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProveder(),
        builder: (context, _) {
          final themeProveder = Provider.of<ThemeProveder>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: title,
            themeMode: themeProveder.themeMode,
            theme: MyThemes.darkTheme,
            darkTheme: MyThemes.lightTheme,
            home: Home(),
          );
        },
      );
}