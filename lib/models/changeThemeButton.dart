import 'package:flutter/material.dart';
import 'package:my_theme/models/theme_proveder.dart';
import 'package:provider/provider.dart';

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProveder>(context);
    return Switch.adaptive(
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final proveder = Provider.of<ThemeProveder>(context, listen: false);
        proveder.toggleTheme(value);
      },
    );
  }
}
