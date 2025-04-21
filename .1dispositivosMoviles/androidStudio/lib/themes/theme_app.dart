import 'package:flutter/material.dart';

class ThemeApp {
  static Color primary = Colors.pinkAccent;

  static ThemeData primaryTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(backgroundColor: primary),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        foregroundColor: Colors.white,
      ),
      iconTheme: IconThemeData(color: primary),
      primaryIconTheme: IconThemeData(color: Colors.white),
    );
  }
}
