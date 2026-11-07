import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Row displaying the circular food image, food name, and calorie count.
class MealFoodRow extends StatelessWidget {
  /// Creates the meal food row.
  const MealFoodRow({
    super.key,
    required this.imagePath,
    required this.foodName,
    required this.calories,
  });

  /// Asset path to the food image.
  final String imagePath;

  /// Name of the dish (e.g. "Croissant Sandwiche").
  final String foodName;

  /// Calorie text (e.g. "142 kcal").
  final String calories;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _buildImage(),
        const SizedBox(width: AppSpacing.gap12),
        _buildInfoColumn(),
      ],
    );
  }

  Widget _buildImage() {
    return SizedBox(
      width: AppSpacing.foodImageSize,
      height: AppSpacing.foodImageSize,
      child: ClipOval(child: Image.asset(imagePath, fit: BoxFit.cover)),
    );
  }

  Widget _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(foodName, style: AppTextStyles.foodName),
        const SizedBox(height: AppSpacing.gap4),
        _buildCaloriesRow(),
      ],
    );
  }

  Widget _buildCaloriesRow() {
    return Row(
      children: [
        const Icon(
          Icons.local_fire_department_outlined,
          size: AppSpacing.flameIconSize,
          color: AppColors.textSecondary,
        ),
        const SizedBox(width: AppSpacing.gap4),
        Text(calories, style: AppTextStyles.foodCalories),
      ],
    );
  }
}
