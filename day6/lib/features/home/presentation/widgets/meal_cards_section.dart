import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import 'meal_card.dart';

/// Section displaying the breakfast and lunch meal cards.
class MealCardsSection extends StatelessWidget {
  /// Creates the meal cards section.
  const MealCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MealCard(
          mealTitle: 'Breakfast',
          foodName: 'Croissant Sandwiche',
          calories: '142 kcal',
          imagePath: 'assets/images/breakfast.png',
          cardColor: AppColors.breakfastCardBackground,
          buttonColor: AppColors.breakfastButton,
          progressColor: AppColors.breakfastProgress,
          progress: 0.75,
          caloriesLeft: '195 Left',
        ),
        SizedBox(height: AppSpacing.gap16),
        MealCard(
          mealTitle: 'Lunch',
          foodName: 'Chicken Gyri Bowl',
          calories: '142 kcal',
          imagePath: 'assets/images/lunch.png',
          cardColor: AppColors.lunchCardBackground,
          buttonColor: AppColors.lunchButton,
          progressColor: AppColors.lunchProgress,
          progress: 0.45,
          caloriesLeft: '195 Left',
        ),
      ],
    );
  }
}
