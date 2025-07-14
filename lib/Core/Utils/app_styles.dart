import 'package:flutter/material.dart';
import 'package:instagram/Core/Utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styelsRegular49() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize49,
      fontWeight: FontWeight.w400,
      // color: Color(0xff262626),
    );
  }

  static TextStyle styelsRegular15() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize15,
      fontWeight: FontWeight.w400,
      // color: Color(0xff262626),
    );
  }

  static TextStyle styelsRegular14() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize14,
      fontWeight: FontWeight.w400,
      // color: Color(0xffffffff).withOpacity(0.6),
    );
  }

  static TextStyle styelsRegular18() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize18,
      fontWeight: FontWeight.w400,
      color: Color(0xff3797EF),
    );
  }

  static TextStyle styelsMedium12() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize12,
      fontWeight: FontWeight.w500,
      color: Color(0xff3797EF),
    );
  }

  static TextStyle styelsSemiBold14() {
    return TextStyle(
      fontSize: FontSizeConfig.kFontSize14,
      fontWeight: FontWeight.w600,
      color: Color(0xffffffff),
    );
  }
}
