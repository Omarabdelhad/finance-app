import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/primary_button_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/core/widgets/back_button_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:pinput/pinput.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  final formkey = GlobalKey<FormState>();
  late TextEditingController pinCodeController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pinCodeController = TextEditingController();
  }

  PinTheme pinTheme({Color? borderColor, double width = 1, Color? fillColor}) {
    return PinTheme(
      height: 60.h,
      width: 70.h,
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: Color(0xff617AFD),
      ),
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: borderColor ?? Color(0xff202955),
          width: width,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpace(12),
                const BackButtonWidget(),
                const HeightSpace(28),

                SizedBox(
                  width: 280.w,
                  child: Text(
                    'OTP Verification',
                    style: AppStyles.primaryHeadLineStyle,
                  ),
                ),
                const HeightSpace(10),
                Text(
                  'Enter the verification code we just sent on your email address.',
                  style: AppStyles.subTitleStyles,
                ),
                const HeightSpace(32),
                Pinput(
                  defaultPinTheme: pinTheme(),
                  focusedPinTheme: pinTheme(borderColor: Color(0xff202955)),
                  submittedPinTheme: pinTheme(
                    borderColor: Color(0xff202955),
                    fillColor: Colors.white,
                  ),
                ),
                const HeightSpace(38),
                PrimaryButtonWidget(
                  buttonText: 'Verify',
                  buttonColor: AppColors.primaryColor,
                  onPressed: () {},
                ),
                Spacer(),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Didn’t received code?',
                      style: AppStyles.black15Bold.copyWith(
                        color: AppColors.primaryColor,
                      ),
                      children: [
                        TextSpan(
                          text: 'Resend',
                          style: AppStyles.black15Bold.copyWith(
                            color: Color(0xff202955),
                          ),
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
    );
  }
}
