import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';

class Persona extends StatefulWidget {
  const Persona({super.key});

  @override
  State<Persona> createState() => _PersonaState();
}

class _PersonaState extends State<Persona> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
