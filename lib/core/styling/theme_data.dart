import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ligthTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor:AppColors.backgroundColor,
    fontFamily: AppFonts.mainFontName,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLineStyle,
      titleMedium: AppStyles.subTitleStyles,
    ),
    buttonTheme: ButtonThemeData(buttonColor: AppColors.primaryColor,
    disabledColor: AppColors.secondaryColor,
    ),
  );
}
