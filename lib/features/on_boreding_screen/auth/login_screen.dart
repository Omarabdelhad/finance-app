import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/custom-icon_button_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/social_login_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailControler;
  late TextEditingController passwordControler;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailControler = TextEditingController();
    passwordControler = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeightSpace(12),
                  const BackButtonWidget(),
                  const HeightSpace(28),

                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'Welcome back! Again!',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextfield(
                    hintText: 'Enter Your Email',
                    controller: emailControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(15),
                  CustomTextfield(
                    hintText: 'Enter Your Password',
                    controller: passwordControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Password";
                      }
                      if (value.length < 8) {
                        return "password must be at least 8 characters";
                      }
                      return null;
                    },
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: AppColors.greyColor,
                      size: 20.sp,
                    ),
                  ),
                  const HeightSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRoutes.forgetPassword);
                      },
                      child: Text(
                        'Forget Password',
                        style: AppStyles.black15Bold.copyWith(
                          color: Color(0xff6A707C),
                        ),
                      ),
                    ),
                  ),
                  const HeightSpace(30),
                  PrimaryButtonWidget(
                    buttonText: 'Login',
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        GoRouter.of(
                          context,
                        ).pushNamed(AppRoutes.VerifyOtpScreen);
                      }
                      ;
                    },
                  ),
                  const HeightSpace(35),
                  const CustomOrLoginWidget(),
                  HeightSpace(22),
                  const CustomSocialLoginIcons(),
                  const HeightSpace(120),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: AppStyles.black15Bold.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Register Now',
                            style: AppStyles.black15Bold.copyWith(
                              color: Color(0xff202955),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                GoRouter.of(
                                  context,
                                ).push(AppRoutes.registerScreen);
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const HeightSpace(26),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
