import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'chart_bar.dart';
import 'chart_tooltip.dart';

/// Single item in the calories chart containing the tooltip, bar, and day label.
class ChartBarItem extends StatelessWidget {
  /// Creates a chart bar item representing a single day.
  const ChartBarItem({
    super.key,
    required this.dayLabel,
    required this.barHeightFactor,
    required this.isSelected,
    required this.tooltipText,
  });

  /// The label for the day (e.g. "Mon").
  final String dayLabel;

  /// The fraction of the bar that is filled (0.0 to 1.0).
  final double barHeightFactor;

  /// Whether this day is selected.
  final bool isSelected;

  /// Text to display in the tooltip when selected.
  final String tooltipText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.chartBarItemWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildTooltipArea(),
          ChartBar(heightFactor: barHeightFactor, isSelected: isSelected),
          const SizedBox(height: AppSpacing.gap12),
          _buildDayLabel(),
        ],
      ),
    );
  }

  Widget _buildTooltipArea() {
    return SizedBox(
      height: AppSpacing.chartTooltipAreaHeight,
      child: isSelected
          ? Align(
              alignment: Alignment.bottomCenter,
              child: OverflowBox(
                maxWidth: AppSpacing.chartTooltipMaxWidth,
                alignment: Alignment.bottomCenter,
                child: ChartTooltip(text: tooltipText),
              ),
            )
          : null,
    );
  }

  Widget _buildDayLabel() {
    return Text(
      dayLabel,
      style: isSelected
          ? AppTextStyles.chartDayLabelSelected
          : AppTextStyles.chartDayLabel,
    );
  }
}
