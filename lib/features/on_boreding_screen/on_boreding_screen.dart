import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/primary_outlined_button.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';

class OnBoredingScreen extends StatelessWidget {
  const OnBoredingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            AppAssets.onBored,
            width: double.infinity,
            height: 570.h,
            fit: BoxFit.fill,
          ),
          HeightSpace(21),
          PrimaryButtonWidget(
            width: 331.w,
            height: 56.h,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.loginScreen);
            },
            buttonText: 'Login',
          ),
          HeightSpace(21),
          PrimaryOutlinedButton(
            width: 331.w,
            height: 56.h,
            onPressed: () {
              GoRouter.of(context).pushNamed(AppRoutes.registerScreen);
            },
            buttonText: 'Register',
          ),

          HeightSpace(46),
          Text(
            'Continue as a guest',
            style: AppStyles.black15Bold.copyWith(
              color: const Color(0xff202955),
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
