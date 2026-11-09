import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import 'meal_card_header.dart';
import 'meal_food_row.dart';
import 'meal_progress_footer.dart';

/// Reusable meal card displaying meal header, food item details, and calorie progress.
class MealCard extends StatelessWidget {
  /// Creates a reusable meal card.
  const MealCard({
    super.key,
    required this.mealTitle,
    required this.foodName,
    required this.calories,
    required this.imagePath,
    required this.cardColor,
    required this.buttonColor,
    required this.progressColor,
    required this.progress,
    required this.caloriesLeft,
  });

  /// The title of the meal (e.g. "Breakfast", "Lunch").
  final String mealTitle;

  /// The food name (e.g. "Croissant Sandwiche").
  final String foodName;

  /// Calorie text (e.g. "142 kcal").
  final String calories;

  /// Asset path to the food image.
  final String imagePath;

  /// Card background color.
  final Color cardColor;

  /// Circular action button background color.
  final Color buttonColor;

  /// Active progress bar indicator color.
  final Color progressColor;

  /// Progress fraction between 0.0 and 1.0.
  final double progress;

  /// Remaining calories display text (e.g. "195 Left").
  final String caloriesLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSpacing.mealCardHeight,
      padding: const EdgeInsets.only(
        left: AppSpacing.mealCardPadding,
        right: AppSpacing.mealCardPadding,
        top: AppSpacing.mealCardPadding,
      ),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSpacing.mealCardRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MealCardHeader(mealTitle: mealTitle, buttonColor: buttonColor),
          const SizedBox(height: AppSpacing.mealGapHeaderToFood),
          MealFoodRow(
            imagePath: imagePath,
            foodName: foodName,
            calories: calories,
          ),
          const SizedBox(height: AppSpacing.mealGapFoodToProgress),
          MealProgressFooter(
            progress: progress,
            progressColor: progressColor,
            caloriesLeft: caloriesLeft,
          ),
        ],
      ),
    );
  }
}
