import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import 'calorie_amount_text.dart';
import 'calorie_ring.dart';

/// Card summarizing today's calories and remaining calories inside a progress ring.
class TodayCalorieCard extends StatelessWidget {
  const TodayCalorieCard({
    super.key,
    this.totalCalories = 1980,
    this.caloriesLeft = 520,
  });

  /// Total calorie intake consumed today.
  final int totalCalories;

  /// Remaining calorie allowance for today.
  final int caloriesLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSpacing.calorieCardHeight,
      padding: const EdgeInsets.only(
        left: AppSpacing.calorieCardPaddingLeft,
        right: AppSpacing.calorieCardPaddingRight,
      ),
      decoration: const BoxDecoration(
        color: AppColors.calorieCardBackground,
        borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      ),
      child: _buildRow(),
    );
  }

  Widget _buildRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CalorieAmountText(totalCalories: totalCalories),
        CalorieRing(caloriesLeft: caloriesLeft),
      ],
    );
  }
}
