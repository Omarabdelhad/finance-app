import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/on_boreding_screen/auth/widgets/custom-icon_button_widget.dart';
import 'package:flutter/material.dart';

class CustomSocialLoginIcons extends StatelessWidget {
  const CustomSocialLoginIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                children: [
                  CustomIconButtonWidget(
                    opTap: () {},
                    iconPath: AppAssets.facebook,
                  ),
                  WidthSpace(8),
                  CustomIconButtonWidget(
                    opTap: () {},
                    iconPath: AppAssets.goagle,
                  ),
                  WidthSpace(8),
                  CustomIconButtonWidget(
                    opTap: () {},
                    iconPath: AppAssets.apple,
                  ),
                ],
              );
  }
}