import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home_page/widgets/my_profile_digit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
              Text('My Profile', style: AppStyles.black18Bold),
              Center(
                child: SvgPicture.asset(
                  AppAssets.edit,
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
          HeightSpace(39),
          Center(
            child: ClipOval(
              child: Image.asset(
                AppAssets.profilePic,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
            ),
          ),
          MyProfileDigit(title: 'Full Name', name: 'Omar Abdelhady'),
          MyProfileDigit(title: 'Email', name: 'omarabdelhady@yahoo.com'),
          MyProfileDigit(title: 'Phone Number', name: '+1 3712 3789'),
          MyProfileDigit(title: 'Address', name: 'Cairo,Egypt'),
        ],
      ),
    );
  }
}
