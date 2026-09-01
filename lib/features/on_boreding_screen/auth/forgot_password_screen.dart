import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formkey = GlobalKey<FormState>();

  late TextEditingController emailControler;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    emailControler = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackButtonWidget(),
                HeightSpace(28),
                SizedBox(
                  width: 280.w,
                  child: Text(
                    'Forgot Password?',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                HeightSpace(10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    'Don\'t worry! It occurs. Please enter the email address linked with your account.',
                    style: AppStyles.subTitleStyles,
                  ),
                ),
                HeightSpace(32),
                CustomTextfield(
                  hintText: 'Enter your email',
                  controller: emailControler,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email";
                    }
                    return null;
                  },
                ),
                HeightSpace(38),
                PrimaryButtonWidget(
                  buttonText: 'Send code',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      print(emailControler.text);
                      GoRouter.of(context).push(AppRoutes.createPassword);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
