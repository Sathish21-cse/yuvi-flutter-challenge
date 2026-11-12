import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Header for a meal card displaying the meal title and a circular add button.
class MealCardHeader extends StatelessWidget {
  /// Creates the meal card header.
  const MealCardHeader({
    super.key,
    required this.mealTitle,
    required this.buttonColor,
  });

  /// The title of the meal category (e.g. "Breakfast", "Lunch").
  final String mealTitle;

  /// Background color for the circular action button.
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(mealTitle, style: AppTextStyles.mealTitle),
        _buildAddButton(),
      ],
    );
  }

  Widget _buildAddButton() {
    return Container(
      width: AppSpacing.mealButtonSize,
      height: AppSpacing.mealButtonSize,
      decoration: BoxDecoration(color: buttonColor, shape: BoxShape.circle),
      child: const Icon(
        Icons.add_rounded,
        size: AppSpacing.mealButtonIconSize,
        color: AppColors.surfaceWhite,
      ),
    );
  }
}
