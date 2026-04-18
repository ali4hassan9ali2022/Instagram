import 'package:flutter/material.dart';
import 'package:instagram/Core/Helper/app_helper.dart';

abstract class AppTheme {
  static ThemeData lightTheme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      selectedIconTheme: IconThemeData(color: Colors.black),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.black),
      border: AppHelper.outlineInputBorder(),
      focusedBorder: AppHelper.outlineInputBorder(),
      enabledBorder: AppHelper.outlineInputBorder(),
      prefixStyle: TextStyle(color: Colors.grey),
      suffixStyle: TextStyle(color: Colors.grey),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedIconTheme: IconThemeData(color: Colors.white),
      unselectedIconTheme: IconThemeData(color: Colors.grey),
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      elevation: 0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: Colors.white),
      border: AppHelper.outlineInputBorder(color: Colors.white),
      focusedBorder: AppHelper.outlineInputBorder(color: Colors.white),
      enabledBorder: AppHelper.outlineInputBorder(color: Colors.white),
      prefixStyle: TextStyle(color: Colors.white),
      suffixStyle: TextStyle(color: Colors.white),
    ),
  );
}
