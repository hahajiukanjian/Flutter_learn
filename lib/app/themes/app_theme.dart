import 'package:flutter/material.dart';

class AppTheme {
  // 亮色主题
  static ThemeData light = ThemeData(
    primaryColor: Colors.deepPurpleAccent,
    hintColor: Colors.blueAccent,
    colorScheme: const ColorScheme.light(
      primary: Colors.deepPurpleAccent,
      secondary: Colors.deepPurpleAccent,
    ),
  );

  // 暗色主题
  static ThemeData dark = ThemeData(
    primaryColor: Colors.deepPurpleAccent,
    hintColor: Colors.blueAccent,
    colorScheme: const ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.blue,
    ),
  );
}
