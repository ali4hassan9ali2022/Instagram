import 'package:flutter/material.dart';

abstract class AppHelper {
   static OutlineInputBorder outlineInputBorder({
    Color? color,
    double? borderRadius,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 12),
      borderSide: BorderSide(color: color ?? Colors.grey),
    );
  }

  static UnderlineInputBorder underlineInputBorder() {
    return UnderlineInputBorder();
  }
}