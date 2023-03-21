import 'package:flutter/material.dart';

import 'app_colors.dart';


abstract class AppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appBarBackgroundLightMode),

    /* question in StackOverFlow :
      Flutter ThemeData Primary color not changing from theme when trying to add a primary color?
      Answer:
      This issue has been pointed at flutter github page. They say
        We will eventually be moving all components away from ThemeData.primaryColor
        so you can use :
            theme: ThemeData(
            colorScheme: ColorScheme.light().copyWith(primary: Colors.red),);
            */
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    appBarTheme: AppBarTheme(
        backgroundColor: AppColors.appBarBackgroundDarkMode),
  );
}