import 'package:aksamedia_welcome_page/core/themes/colors.dart';
import 'package:aksamedia_welcome_page/core/themes/text_theme.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: primaryColor,
    textTheme: textTheme.apply(bodyColor: textColor),
    colorScheme: ColorScheme.light(
      primary: primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor, foregroundColor: Colors.white),
    ),
  );
}
