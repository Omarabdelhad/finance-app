import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          HeightSpace(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: BoxBorder.all(color: Color(0xffE3E9ED)),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.arrowback,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: ColorFilter.mode(
                      Color(0xff1F2C37),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Text('All Cards', style: AppStyles.black18Bold),
              Center(
                child: SvgPicture.asset(
                  AppAssets.points,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    Color(0xff1F2C37),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
          HeightSpace(24),
          Stack(
            children: [
              Container(
                width: 327.w,
                height: 179.h,
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
              Positioned(
                top: 26,
                right: 24,
                child: SvgPicture.asset(AppAssets.visa),
              ),
            ],
          ),
          HeightSpace(24),
          Stack(
            children: [
              Container(
                width: 327.w,
                height: 179.h,
                decoration: BoxDecoration(
                  color: Color(0xffFF7438),
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
              Positioned(
                top: 26,
                right: 24,
                child: SvgPicture.asset(AppAssets.visa),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
