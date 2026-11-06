import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Typography tokens for the application using Poppins font family.
class AppTextStyles {
  const AppTextStyles._();

  /// Default font family used throughout the app.
  static const String fontFamily = 'Poppins';

  /// Greeting label style (14px, regular, textSecondary).
  static const TextStyle greeting = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// User name style (16px, medium, textPrimary).
  static const TextStyle userName = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Calorie card section title (14px, medium, textSecondary).
  static const TextStyle cardTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textSecondary,
  );

  /// Calorie count display value (40px, medium, textPrimary).
  static const TextStyle calorieValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Unit label next to calorie value (14px, regular, textSecondary).
  static const TextStyle calorieUnit = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Remaining calories value inside ring (16px, medium, textPrimary).
  static const TextStyle ringValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Remaining calories subtitle inside ring (10px, regular, textSecondary).
  static const TextStyle ringLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Macro card label style (12px, regular, textSecondary).
  static const TextStyle macroLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.0,
    height: 1.1,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Macro card value style (14px, medium, textPrimary).
  static const TextStyle macroValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    height: 1.1,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Month title style in calendar header (18px, semi-bold, textPrimary).
  static const TextStyle monthTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Day letter label for unselected days (12px, regular, textSecondary).
  static const TextStyle dayLetter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Day number text (16px, medium, textPrimary).
  static const TextStyle dayNumber = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Day letter label for selected day (12px, medium, white).
  static const TextStyle selectedDayLetter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: AppColors.surfaceWhite,
  );

  /// Meal card section title (18px, semi-bold, textPrimary).
  static const TextStyle mealTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Food name text style (18px, medium, textPrimary).
  static const TextStyle foodName = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Food calories text style (14px, regular, textSecondary).
  static const TextStyle foodCalories = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Meal footer label and remaining calories style (12px, regular, textPrimary).
  static const TextStyle mealFooter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );
}
