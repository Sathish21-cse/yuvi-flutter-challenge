import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Progress bar and calorie allowance footer for a meal card.
class MealProgressFooter extends StatelessWidget {
  /// Creates the meal progress footer.
  const MealProgressFooter({
    super.key,
    required this.progress,
    required this.progressColor,
    required this.caloriesLeft,
  });

  /// Visual progress completion factor between 0.0 and 1.0.
  final double progress;

  /// Foreground color of the progress bar.
  final Color progressColor;

  /// Remaining calories label (e.g. "195 Left").
  final String caloriesLeft;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildProgressBar(),
        const SizedBox(height: AppSpacing.gap8),
        _buildCaloriesRow(),
      ],
    );
  }

  Widget _buildProgressBar() {
    return Container(
      height: AppSpacing.progressBarHeight,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColors.progressTrack,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.progressBarRadius),
        ),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: progress,
        child: Container(
          decoration: BoxDecoration(
            color: progressColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(AppSpacing.progressBarRadius),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCaloriesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Total Calorie', style: AppTextStyles.mealFooter),
        Text(caloriesLeft, style: AppTextStyles.mealFooter),
      ],
    );
  }
}
