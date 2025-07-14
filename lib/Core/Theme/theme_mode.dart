import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightMode() {
  return ThemeData(
    appBarTheme: const AppBarTheme(
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color(0xffFFFFFF),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Color(0xffFFFFFF),
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0,
    ),
    hintColor: Color(0xffC8C8C8),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    ),
    // primarySwatch: Colors.deepOrange,
    scaffoldBackgroundColor: Color(0xffFFFFFF),
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   type: BottomNavigationBarType.fixed,
    //   elevation: 20,
    //   selectedItemColor: Colors.deepOrange,
    //   unselectedItemColor: Colors.grey,
    //   backgroundColor: Colors.white,
    // ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    // primarySwatch: Colors.deepOrange,
    scaffoldBackgroundColor: Color(0xff000000),
    appBarTheme: AppBarTheme(
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
      backgroundColor: Color(0xff000000),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Color(0xff000000),
      ),
      elevation: 0,
    ),
    // bottomNavigationBarTheme: BottomNavigationBarThemeData(
    //   type: BottomNavigationBarType.fixed,
    //   backgroundColor: HexColor("333739"),
    //   selectedItemColor: Colors.deepOrange,
    //   unselectedItemColor: Colors.grey,
    // ),
    hintColor: Color(0xffA0A0A0),
    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        fontSize: 18,

        fontWeight: FontWeight.w600,
        color: Colors.white,
      ),
    ),
  );
}
