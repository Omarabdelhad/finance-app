import 'package:finance_app/core/styling/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PrimaryOutlinedButton extends StatelessWidget {
  final String? buttonText;
  final Color? bordersColor;
  final double? width;
  final double? height;
  final double? bordersRadius;
  final Color? textColor;
  final double? fontSize;
  final void Function()? onPressed;
  const PrimaryOutlinedButton({
    super.key,
    this.onPressed,
    this.buttonText,
    this.bordersColor,
    this.width,
    this.height,
    this.bordersRadius,
    this.textColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: bordersColor ?? AppColors.primaryColor,
          width: 1.w,
        ),
        // backgroundColor: buttonColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(bordersRadius ?? 8.r),
        ),
        fixedSize: Size(width ?? 331.w, height ?? 56.h),
      ),
      child: Text(
        buttonText ?? "",
        style: TextStyle(
          color: textColor ?? AppColors.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: fontSize ?? 16.sp,
        ),
      ),
    );
  }
}
