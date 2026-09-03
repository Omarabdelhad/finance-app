import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CardItemWidget extends StatelessWidget {
  const CardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 207.w,
          height: 263.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer2,
            width: 120.w,
            height: 130.h,
            fit: BoxFit.fill,
          ),
        ),

        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            AppAssets.layer1,
            width: 207.w,
            height: 200.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'X-Card',
                  style: AppStyles.grey12w600.copyWith(
                    color: AppColors.backgroundColor,
                    fontWeight: .w700,
                  ),
                ),
                const HeightSpace(57),
                Text(
                  'Balance',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: .w500,
                    color: Color(0xffFDFDFD).withAlpha(100),
                  ),
                ),
                const HeightSpace(8),
                Text(
                  '23400 EG',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: .w600,
                    color: AppColors.backgroundColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 26,
          right: 24,
          child: Text(
            '12/24',
            style: TextStyle(
              fontSize: 12,
              fontWeight: .w500,
              color: AppColors.backgroundColor,
            ),
          ),
        ),
        Positioned(
          bottom: 26,
          left: 24,
          child: Text(
            '****  3434',
            style: TextStyle(
              fontSize: 16,
              fontWeight: .w500,
              color: AppColors.backgroundColor.withAlpha(100),
            ),
          ),
        ),
      ],
    );
  }
}
