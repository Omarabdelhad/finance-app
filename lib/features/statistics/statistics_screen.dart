import 'package:finance_app/core/styling/app_assets.dart';
import 'package:finance_app/core/styling/app_colors.dart';
import 'package:finance_app/core/styling/app_styles.dart';
import 'package:finance_app/core/widgets/spacing_widget.dart';
import 'package:finance_app/features/home_page/widgets/custom_home_page_icon.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  int? touchedGroupIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.r),
      child: Column(
        children: [
          const HeightSpace(18),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffE3E9ED)),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    AppAssets.arrowback,
                    width: 24.w,
                    height: 24.h,
                    colorFilter: const ColorFilter.mode(
                      Color(0xff1F2C37),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
              Text('Reload', style: AppStyles.black18Bold),
              Center(
                child: SvgPicture.asset(
                  AppAssets.edit,
                  width: 24.w,
                  height: 24.h,
                  colorFilter: const ColorFilter.mode(
                    Color(0xff1F2C37),
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ],
          ),
          const HeightSpace(24),

          SizedBox(
            height: 236.h,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1.6,
              child: BarChart(
                BarChartData(
                  barTouchData: barTouchData,
                  titlesData: titlesData,
                  borderData: borderData,
                  barGroups: barGroups,
                  gridData: const FlGridData(show: true),
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 8,
                ),
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeOutQuad,
              ),
            ),
          ),
          Expanded(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 8.sp,
                crossAxisSpacing: 16.sp,
              ),
              children: [
                CustomHomePageIcon(
                  icon: AppAssets.download,
                  title: '15000 EG',
                  describtion: 'Income',
                ),
                CustomHomePageIcon(
                  icon: AppAssets.upload,
                  title: '35000 EG',
                  describtion: 'Outcome',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BarTouchData get barTouchData => BarTouchData(
    enabled: true,
    handleBuiltInTouches: false,
    touchCallback: (event, response) {
      setState(() {
        final groupI = response?.spot?.touchedBarGroupIndex;
        if (event.isInterestedForInteractions && groupI != null) {
          touchedGroupIndex = groupI;
        } else {
          touchedGroupIndex = null;
        }
      });
    },
  );

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    String text = switch (value.toInt()) {
      0 => 'Jan',
      1 => 'Feb',
      2 => 'Mar',
      3 => 'Apr',
      4 => 'May',
      5 => 'Jun',
      6 => 'Jul',
      _ => '',
    };
    return SideTitleWidget(
      meta: meta,
      space: 4,
      child: Text(text, style: style),
    );
  }

  FlTitlesData get titlesData => FlTitlesData(
    show: true,
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: 2,
        getTitlesWidget: getTitles,
      ),
    ),
    leftTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,

        interval: 2,
        getTitlesWidget: (value, meta) => Text(
          '${value.toInt()}K',
          style: TextStyle(color: Colors.grey, fontWeight: .bold),
        ),
      ),
    ),
    topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
    rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
  );

  FlBorderData get borderData => FlBorderData(show: false);

  List<BarChartGroupData> get barGroups =>
      [8, 10, 14, 15, 13, 10, 16].asMap().entries.map((entry) {
        int i = entry.key;
        int value = entry.value;
        final isTouched = i == touchedGroupIndex;
        return BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: 6.toDouble(),
              color: AppColors.primaryColor,
              width: isTouched ? 18.w : 12.w,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
            ),
            BarChartRodData(
              toY: 4.toDouble(),
              color: Color(0xff303A6E),
              width: isTouched ? 18.w : 12.w,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.r),
                topRight: Radius.circular(8.r),
              ),
            ),
          ],
        );
      }).toList();
}
