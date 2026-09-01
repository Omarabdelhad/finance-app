import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/custom_or_login_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/custom_or_register_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/social_login_icons.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController emailControler;
  late TextEditingController passwordControler;
  late TextEditingController usernameControler;
  late TextEditingController confirmPasswordControler;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailControler = TextEditingController();
    passwordControler = TextEditingController();
    confirmPasswordControler = TextEditingController();
    usernameControler = TextEditingController();
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
                      'Hello! Register to get started',
                      style: AppStyles.primaryHeadLineStyle,
                    ),
                  ),
                  const HeightSpace(32),
                  CustomTextfield(
                    hintText: 'Username',
                    controller: usernameControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Username";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(12),

                  CustomTextfield(
                    hintText: 'Email',
                    controller: emailControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email";
                      }
                      return null;
                    },
                  ),
                  const HeightSpace(12),
                  CustomTextfield(
                    hintText: ' Password',
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
                  const HeightSpace(12),
                  CustomTextfield(
                    hintText: ' Confirm password',
                    controller: confirmPasswordControler,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm password";
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

                  const HeightSpace(30),
                  PrimaryButtonWidget(
                    buttonText: 'Register',
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        print(emailControler.text);
                        print(passwordControler.text);
                        print(confirmPasswordControler.text);
                        print(usernameControler.text);
                      }
                      ;
                    },
                  ),
                  const HeightSpace(35),
                  const CustomOrRegisterWidget(),
                  HeightSpace(22),
                  const CustomSocialLoginIcons(),
                  const HeightSpace(40),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don\'t have an account?',
                        style: AppStyles.black15Bold.copyWith(
                          color: AppColors.primaryColor,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login Now',
                            style: AppStyles.black15Bold.copyWith(
                              color: Color(0xff202955),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                GoRouter.of(
                                  context,
                                ).push(AppRoutes.loginScreen);
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
