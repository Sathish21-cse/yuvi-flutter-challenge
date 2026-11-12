import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Displays the calorie section title and current calorie amount with unit.
class CalorieAmountText extends StatelessWidget {
  const CalorieAmountText({super.key, this.totalCalories = 1980});

  /// Total calorie count to display.
  final int totalCalories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: AppSpacing.gap14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitleRow(),
          const SizedBox(height: AppSpacing.gap8),
          _buildValueRow(),
        ],
      ),
    );
  }

  Widget _buildTitleRow() {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          Icons.bolt_outlined,
          size: AppSpacing.boltIconSize,
          color: AppColors.textPrimary,
        ),
        SizedBox(width: AppSpacing.gap6),
        Text('Today Calorie', style: AppTextStyles.cardTitle),
      ],
    );
  }

  Widget _buildValueRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text('$totalCalories', style: AppTextStyles.calorieValue),
        const SizedBox(width: AppSpacing.gap2),
        const Text('kcal', style: AppTextStyles.calorieUnit),
      ],
    );
  }
}
