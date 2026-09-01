import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class AppStyles {
  static TextStyle primaryHeadLineStyle = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primaryColor,
  );
  static TextStyle subTitleStyles = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.secondaryColor,
  );
  static TextStyle black16w600 = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle grey12w600 = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 12.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.greyColor,
  );
  static TextStyle black15Bold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 15.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
  static TextStyle black18Bold = TextStyle(
    fontFamily: AppFonts.mainFontName,
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.blackColor,
  );
}
