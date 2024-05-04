import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import '../config/responsive.dart';
import '../style/colors.dart';

class DayBarChart extends StatelessWidget {
  const DayBarChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
          borderData: FlBorderData(show: false) ,
          alignment: BarChartAlignment.spaceBetween,
          axisTitleData: FlAxisTitleData(leftTitle: AxisTitle(reservedSize: 20)),
          gridData: FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
          titlesData: FlTitlesData(leftTitles: SideTitles(reservedSize: 30, getTextStyles: (value) => const TextStyle(
              color: Colors.grey, fontSize: 12),showTitles: true,  getTitles: (value) {
            if (value == 0) {
              return '0';
            } else if (value == 30) {
              return '30';
            }  else if (value == 60) {
              return '60';
            }  else if (value == 90) {
              return '90';
            } else {
              return '';
            }
          },), bottomTitles: SideTitles(showTitles: true, getTextStyles: (value) => const TextStyle(
              color: AppColors.shopColor, fontSize: 12), getTitles: (value) {
            if (value == 0) {
              return '1';
            } else if (value == 1) {
              return '2';
            }  else if (value == 2) {
              return '3';
            }  else if (value == 3) {
              return '4';
            } else if (value == 4) {
              return '5';
            }  else if (value == 5) {
              return '6';
            }  else if (value == 6) {
              return '7';
            }  else if (value == 7) {
              return '8';
            }  else if (value == 8) {
              return '9';
            }  else if (value == 9) {
              return '10';
            }  else if (value == 10) {
              return '11';
            }  else if (value == 11) {
              return '11';
            }  else if (value == 12) {
              return '12';
            }  else if (value == 13) {
              return '13';
            }  else if (value == 14) {
              return '14';
            }  else if (value == 15) {
              return '15';
            }  else if (value == 16) {
              return '16';
            }  else if (value == 17) {
              return '17';
            }  else if (value == 18) {
              return '18';
            }  else if (value == 19) {
              return '19';
            }  else if (value == 20) {
              return '20';
            }  else if (value == 21) {
              return '21';
            }  else if (value == 22) {
              return '22';
            }  else if (value == 23) {
              return '23';
            }  else if (value == 24) {
              return '24';
            }  else if (value == 25) {
              return '25';
            }  else if (value == 26) {
              return '26';
            }  else if (value == 27) {
              return '17';
            }  else if (value == 28) {
              return '18';
            }  else if (value == 29) {
              return '29';
            }  else if (value == 30) {
              return '30';
            }  else if (value == 31) {
              return '31';
            }  else {
              return '';
            }
          }, )),
          barGroups: [
            BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(y: 10, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg])),
                ]
            ),
            BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(y: 50, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(y: 30, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(y: 80, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 4,
                barRods: [
                  BarChartRodData(y: 70, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 5,
                barRods: [
                  BarChartRodData(y: 20, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 6,
                barRods: [
                  BarChartRodData(y: 90, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 7,
                barRods: [
                  BarChartRodData(y: 60, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 8,
                barRods: [
                  BarChartRodData(y: 90, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 9,
                barRods: [
                  BarChartRodData(y: 30, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 10,
                barRods: [
                  BarChartRodData(y: 76, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 11,
                barRods: [
                  BarChartRodData(y: 69, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 12,
                barRods: [
                  BarChartRodData(y: 47, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 13,
                barRods: [
                  BarChartRodData(y: 76, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 14,
                barRods: [
                  BarChartRodData(y: 56, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 15,
                barRods: [
                  BarChartRodData(y: 64, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 16,
                barRods: [
                  BarChartRodData(y: 45, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 17,
                barRods: [
                  BarChartRodData(y: 76, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 18,
                barRods: [
                  BarChartRodData(y: 69, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 19,
                barRods: [
                  BarChartRodData(y: 67, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 20,
                barRods: [
                  BarChartRodData(y: 76, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 21,
                barRods: [
                  BarChartRodData(y: 65, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 22,
                barRods: [
                  BarChartRodData(y: 60, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 23,
                barRods: [
                  BarChartRodData(y: 50, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 24,
                barRods: [
                  BarChartRodData(y: 40, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 25,
                barRods: [
                  BarChartRodData(y: 40, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 26,
                barRods: [
                  BarChartRodData(y: 40, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 27,
                barRods: [
                  BarChartRodData(y: 50, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 28,
                barRods: [
                  BarChartRodData(y: 60, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 29,
                barRods: [
                  BarChartRodData(y: 70, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 30,
                barRods: [
                  BarChartRodData(y: 80, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),
            BarChartGroupData(
                x: 31,
                barRods: [
                  BarChartRodData(y: 90, colors: [AppColors.shopColor], borderRadius: BorderRadius.circular(0), width: Responsive.isDesktop(context) ? 20 : 10, backDrawRodData: BackgroundBarChartRodData(y: 90, show: true, colors: [AppColors.barBg]))
                ]
            ),

          ]

      ),
      swapAnimationDuration: Duration(milliseconds: 150), // Optional
      swapAnimationCurve: Curves.linear, // Optional
    );
  }
}