import 'package:finance_app/core/routing/app_routes.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/custom_textfield.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:go_router/go_router.dart';

class CreatePasswordScreen extends StatefulWidget {
  const CreatePasswordScreen({super.key});

  @override
  State<CreatePasswordScreen> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePasswordScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController passwordControler;
  late TextEditingController confirmPasswordControler;
  late TextEditingController emailControler;
  void initState() {
    // TODO: implement initState
    super.initState();
    emailControler = TextEditingController();
    passwordControler = TextEditingController();
    confirmPasswordControler = TextEditingController();
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
                  width: 300.w,
                  child: Text(
                    'Create new password',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                HeightSpace(10),
                SizedBox(
                  width: 331.w,
                  child: Text(
                    'Your new password must be unique from those previously used.',
                    style: AppStyles.subTitleStyles,
                  ),
                ),
                HeightSpace(32),
                CustomTextfield(
                  hintText: 'New Password',
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
                ),
                HeightSpace(15),
                CustomTextfield(
                  hintText: 'Confirm Password',
                  controller: confirmPasswordControler,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Password";
                    }
                    if (value.length < 8) {
                      return "password must be at least 8 characters";
                    }
                    return null;
                  },
                ),
                HeightSpace(38),
                PrimaryButtonWidget(
                  buttonText: 'Reset Password',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      print(emailControler.text);
                      GoRouter.of(context).push(AppRoutes.changePassword);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
