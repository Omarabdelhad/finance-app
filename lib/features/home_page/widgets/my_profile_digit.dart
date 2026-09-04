import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class MyProfileDigit extends StatelessWidget {
  final String title;
  final String name;

  const MyProfileDigit({super.key, required this.title, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeightSpace(9),
        Text(title, style: AppStyles.gray14w500),
        const HeightSpace(16),
        Text(name, style: AppStyles.black16w600),
        const HeightSpace(16),

        Divider(color: Color(0xffF2F2F5)),
      ],
    );
  }
}
