import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Summary header above the chart showing total calories and daily target.
class StatisticsCaloriesSummary extends StatelessWidget {
  /// Creates the statistics calories summary widget.
  const StatisticsCaloriesSummary({
    super.key,
    this.calories = '1980',
    this.target = '2500',
  });

  /// Current calorie count displayed.
  final String calories;

  /// Target calorie count displayed.
  final String target;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Calories', style: AppTextStyles.statisticsSectionTitle),
        const SizedBox(height: AppSpacing.gap4),
        _buildValuesRow(),
      ],
    );
  }

  Widget _buildValuesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [_buildCaloriesValue(), _buildTargetValue()],
    );
  }

  Widget _buildCaloriesValue() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(calories, style: AppTextStyles.statisticsCaloriesValue),
        const SizedBox(width: AppSpacing.gap2),
        const Text('Kcal', style: AppTextStyles.statisticsCaloriesUnit),
      ],
    );
  }

  Widget _buildTargetValue() {
    return Text.rich(
      TextSpan(
        style: AppTextStyles.statisticsTargetLabel,
        children: [
          const TextSpan(
            text: 'Target: ',
            style: AppTextStyles.statisticsTargetLabel,
          ),
          TextSpan(text: target, style: AppTextStyles.statisticsTargetValue),
          const TextSpan(
            text: ' Kcal',
            style: AppTextStyles.statisticsTargetUnit,
          ),
        ],
      ),
    );
  }
}
