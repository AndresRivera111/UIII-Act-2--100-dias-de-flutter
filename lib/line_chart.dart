import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        // Suggested code may be subject to a license. Learn more: ~LicenseLog:572553207.
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          // Suggested code may be subject to a license. Learn more: ~LicenseLog:608732841.
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
        borderData: FlBorderData(show: false),
        minX: 0,
        maxX: 12,
        minY: 0,
        maxY: 4,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 3),
              const FlSpot(1.5, 3.3),
              const FlSpot(3, 4),
              const FlSpot(5, 3),
              const FlSpot(7, 4),
              const FlSpot(9, 3),
              const FlSpot(11, 4),
              const FlSpot(12, 3),
            ],
            isCurved: true,
            color: Colors.pink.withOpacity(0.5),
            barWidth: 3,
            dotData: const FlDotData(show: false),
            belowBarData: BarAreaData(
              show: true,
              color: Colors.pink.withOpacity(0.1),
            ),
          ),
        ],
      ),
    );
  }
}
