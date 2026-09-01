import 'package:finance_app/core/styling/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class CustomIconButtonWidget extends StatelessWidget {
  final VoidCallback? opTap;
  final String iconPath;
  const CustomIconButtonWidget({super.key, this.opTap,required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Color(0xffE8ECF4), width: 1),
        ),
        child: Center(
          child: SvgPicture.asset(
            iconPath,
            width: 12.w,
            height: 24.h,
          ),
        ),
      ),
    );
  }
}
