import 'package:coding_task/gen/fonts.gen.dart';
import 'package:coding_task/theme/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static get themeData => ThemeData(
    fontFamily: FontFamily.aeonik,
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        fontSize: 12.0,
        color: AppColors.white,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        fontSize: 15.0,
        color: AppColors.white,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: TextStyle(
        fontSize: 32.0,
        color: AppColors.white,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.32,
      ),
    ),
  );
}
