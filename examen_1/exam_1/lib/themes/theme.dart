import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Colors.lightBlue;

  static ThemeData get themeData {
    return ThemeData(
      primaryColor: primaryColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          textStyle: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
