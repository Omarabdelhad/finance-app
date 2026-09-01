import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class TopProfileNotificationWidget extends StatelessWidget {
  const TopProfileNotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.asset(
                      AppAssets.profilePic,
                      width: 48.w,
                      height: 48.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  WidthSpace(11),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome back',
                        style: AppStyles.grey12w600.copyWith(fontWeight: .w500),
                      ),
                      Text('Omar Abdelhady', style: AppStyles.black18Bold),
                    ],
                  ),
                ],
              ),
              Container(
                width: 48.w,
                height: 48.h,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xffE3E9ED)),
                ),
                child: SvgPicture.asset(
                  AppAssets.notification,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: ColorFilter.mode(
                    AppColors.backgroundColor,
                    BlendMode.dstIn,
                  ),
                ),
              ),
            ],
          );
  }
}