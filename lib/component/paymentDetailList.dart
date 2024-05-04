import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';

class PaymentDetailList extends StatelessWidget {
  const PaymentDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [

      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),
      Container(
        width: 200,
        height: 200,
        // decoration:
        //     BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
        //   BoxShadow(
        //     // color: Colors.grey[400],
        //     blurRadius: 15.0,
        //     offset: const Offset(
        //       10.0,
        //       15.0,
        //     ),
        //   )
        // ]
        //
        //     ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text("Age Range"),
            PieChart(
              swapAnimationDuration: const Duration(microseconds: 750),
              swapAnimationCurve: Curves.easeInOutQuint,
              PieChartData(
                sections: [
                  PieChartSectionData(
                    value: 35,
                    color: Color(0xffFF9166),
                  ),
                  PieChartSectionData(
                    value: 35,
                    color: Color(0xfffdcb6e),
                  ),
                  PieChartSectionData(
                    value: 20,
                    color: Color(0xff0984e3),
                  ),
                  PieChartSectionData(
                    value: 10,
                    color: Color(0xffe17055),
                  ),
                ],
              ),
            ),
          ],
        ),
        // Image.asset('assets/card.png'),
      ),
      SizedBox(
        height: SizeConfig.blockSizeVertical * 5,
      ),

          Container(
            width: 200,
            height: 200,
            // decoration:
            //     BoxDecoration(borderRadius: BorderRadius.circular(30), boxShadow: [
            //   BoxShadow(
            //     // color: Colors.grey[400],
            //     blurRadius: 15.0,
            //     offset: const Offset(
            //       10.0,
            //       15.0,
            //     ),
            //   )
            // ]
            //
            //     ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text("Gender"),
                PieChart(

                  swapAnimationDuration: const Duration(microseconds: 750),
                  swapAnimationCurve: Curves.easeInOutQuint,
                  PieChartData(
                    sections: [
                      PieChartSectionData(
                        value: 50,
                        color: Colors.blue,
                      ),
                      PieChartSectionData(
                        value: 50,
                        color: Colors.pink,
                      ),
                    ],
                  ),
                ),

              ],
            ),
            // Image.asset('assets/card.png'),
          ),


    ]);
  }
}
