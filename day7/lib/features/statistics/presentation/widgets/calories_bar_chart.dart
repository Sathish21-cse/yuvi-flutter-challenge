import 'package:flutter/material.dart';

import 'chart_bar_item.dart';

/// Weekly calories bar chart displaying intake comparison across seven days.
class CaloriesBarChart extends StatelessWidget {
  /// Creates the calories bar chart widget.
  const CaloriesBarChart({super.key});

  /// Days of the week displayed on the chart.
  static const List<String> dayLabels = [
    'Sun',
    'Mon',
    'Tue',
    'Wen',
    'Thr',
    'Fri',
    'Sat',
  ];

  /// Normalized bar fill heights for each day (0.0 to 1.0).
  static const List<double> barHeights = [
    0.30,
    0.89,
    0.47,
    0.60,
    0.39,
    0.71,
    0.83,
  ];

  /// Index of the currently selected day (Monday).
  static const int selectedIndex = 1;

  /// Calorie value displayed in the tooltip above the selected day.
  static const String tooltipText = '1,980';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: _buildBarItems(),
    );
  }

  List<Widget> _buildBarItems() {
    return List.generate(
      dayLabels.length,
      (index) => ChartBarItem(
        dayLabel: dayLabels[index],
        barHeightFactor: barHeights[index],
        isSelected: index == selectedIndex,
        tooltipText: tooltipText,
      ),
    );
  }
}
