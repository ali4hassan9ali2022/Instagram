import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleBold24({required bool isDark}) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle styleBold22({required bool isDark}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle styleReregular18({required bool isDark}) {
    return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,

      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle styleReregular22({required bool isDark}) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: isDark ? Colors.white : Colors.black,
    );
  }

  static TextStyle styleReregular20() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    );
  }
}
