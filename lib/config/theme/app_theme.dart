import 'package:flutter/material.dart';

class AppTheme {
  ThemeData getTheme() =>
      ThemeData(useMaterial3: true, brightness: Brightness.dark);

  ThemeData getThemeLight() {
    return ThemeData(useMaterial3: true, brightness: Brightness.light);
  }
}
