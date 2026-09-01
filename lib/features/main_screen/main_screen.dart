import 'dart:ffi';

import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/features/home_page/home_page_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> screens = [HomePageScreen()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          labelTextStyle: WidgetStateTextStyle.resolveWith((states) {
            return TextStyle(
              color: AppColors.blackColor,
              fontSize: 12,
              fontWeight: FontWeight.w500,
            );
          }),
          indicatorColor: AppColors.backgroundColor,
          backgroundColor: AppColors.backgroundColor,
      
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(
                AppAssets.home,
                colorFilter: ColorFilter.mode(
                  AppColors.greyColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Home',
              selectedIcon: SvgPicture.asset(
                AppAssets.home,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AppAssets.statistics,
                colorFilter: ColorFilter.mode(
                  AppColors.greyColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Statistics',
              selectedIcon: SvgPicture.asset(
                AppAssets.statistics,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: Container(
                height: 56.h,
                width: 56.w,
                padding: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.plus,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: ColorFilter.mode(
                      AppColors.backgroundColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              label: 'Plus',
              selectedIcon: SvgPicture.asset(
                AppAssets.plus,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AppAssets.wallet,
                colorFilter: ColorFilter.mode(
                  AppColors.greyColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Card',
              selectedIcon: SvgPicture.asset(
                AppAssets.wallet,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            NavigationDestination(
              icon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter: ColorFilter.mode(
                  AppColors.greyColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Profile',
              selectedIcon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter: ColorFilter.mode(
                  AppColors.primaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
         body: screens[selectedIndex],
      ),
    );
  }
}
