import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomHomePageIcon extends StatelessWidget {
  final String icon;
  final String title;
  final String describtion;
  const CustomHomePageIcon({
    super.key,
    required this.icon,
    required this.title,
    required this.describtion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.sp),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE3E9ED), width: 1),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Center(
        child: Column(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xffECF1F6),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: SvgPicture.asset(icon, colorFilter: ColorFilter.mode(AppColors.primaryColor, BlendMode.srcIn),),
            ),
            const HeightSpace(12),
            Text(title,style: AppStyles.black16w600,),
                        const HeightSpace(4),
                        Text(describtion,style: AppStyles.grey12w600.copyWith(fontWeight: .w500),)

          ],
        ),
      ),
    );
  }
}
