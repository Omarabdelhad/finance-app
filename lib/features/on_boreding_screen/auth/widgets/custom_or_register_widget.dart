import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class CustomOrRegisterWidget extends StatelessWidget {
  const CustomOrRegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 80.w, child: const Divider()),
        WidthSpace(12),
        Text(
          'Or Register with',
          style: AppStyles.black15Bold.copyWith(color: Color(0xff6A707C)),
        ),
        WidthSpace(12),
        SizedBox(width: 80.w, child: const Divider()),
      ],
    );
  }
}
