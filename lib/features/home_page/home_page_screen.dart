import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home_page/widgets/carousel_widget.dart';
import 'package:finance_app/features/home_page/widgets/custom_home_page_icon.dart';
import 'package:finance_app/features/home_page/widgets/top_profile_notification_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          const HeightSpace(18),
          TopProfileNotificationWidget(),
          const HeightSpace(24),

          CarouselWidget(),
          const HeightSpace(24),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomePageIcon(
                  icon: AppAssets.send,
                  title: 'Send money',
                  describtion: 'Take acc to acc',
                ),
                CustomHomePageIcon(
                  icon: AppAssets.wallet,
                  title: 'Pay the bill',
                  describtion: 'Lorem ipsum',
                ),
                CustomHomePageIcon(
                  icon: AppAssets.send,
                  title: 'Request',
                  describtion: 'Lorem ipsum',
                ),
                CustomHomePageIcon(
                  icon: AppAssets.cotact,
                  title: 'Contact',
                  describtion: 'Lorem ipsum',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
