import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedScreen extends StatefulWidget {
  const PasswordChangedScreen({super.key});

  @override
  State<PasswordChangedScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PasswordChangedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.Successmark,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.fill,
              ),
              HeightSpace(35),

              SizedBox(
                width: 300.w,
                child: Text(
                  'Password Changed!',
                  style: AppStyles.primaryHeadLineStyle,
                ),
              ),
              HeightSpace(10),
              SizedBox(
                width: 280.w,
                height: 46,
                child: Text(
                  'Your password has been changed successfully.',
                  style: AppStyles.subTitleStyles,
                ),
              ),
              HeightSpace(38),
              PrimaryButtonWidget(
                buttonText: 'Back to Login',
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
