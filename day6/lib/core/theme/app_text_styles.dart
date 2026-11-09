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

  /// Calorie count display value (31px, regular, textPrimary).
  /// Sized such that "1980" in Poppins-Regular is about 69 px wide.
  static const TextStyle calorieValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 31.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  /// Unit label next to calorie value (14px, regular, textSecondary).
  static const TextStyle calorieUnit = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Remaining calories value inside ring (14px, medium, textPrimary).
  static const TextStyle ringValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Remaining calories subtitle inside ring (9px, regular, textSecondary).
  static const TextStyle ringLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 9.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Macro card label style (13px, regular, textSecondary).
  static const TextStyle macroLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    height: 1.1,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Macro card dark intake value style (14px, medium, textPrimary).
  static const TextStyle macroValueDark = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    height: 1.1,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  /// Macro card grey target value style (14px, regular, textSecondary).
  static const TextStyle macroValueGrey = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    height: 1.1,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Legacy macro card value style alias.
  static const TextStyle macroValue = macroValueDark;

  /// Month title style in calendar header (16px, semi-bold, textPrimary).
  static const TextStyle monthTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
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

  /// Day letter label for selected day (12px, medium, white).
  static const TextStyle selectedDayLetter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: AppColors.surfaceWhite,
  );

  /// Day number text (13px, semi-bold, textPrimary).
  static const TextStyle dayNumber = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Meal card section title (16px, semi-bold, textPrimary).
  static const TextStyle mealTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Food name text style (16px, regular, textPrimary).
  /// Sized such that "Croissant Sandwiche" in Poppins-Regular is about 164 px wide.
  static const TextStyle foodName = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    height: 1.15,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  /// Food calories text style (13px, regular, textSecondary).
  static const TextStyle foodCalories = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    height: 1.15,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Meal footer label and remaining calories style (11px, medium, textPrimary).
  static const TextStyle mealFooter = TextStyle(
    fontFamily: fontFamily,
    fontSize: 11.0,
    height: 1.15,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );

  // Statistics screen styles
  /// Top app bar title style (18px, semi-bold, textPrimary).
  static const TextStyle appBarTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Statistics section title style (16px, semi-bold, textPrimary).
  static const TextStyle statisticsSectionTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Statistics calorie count display value (30px, semi-bold, textPrimary).
  static const TextStyle statisticsCaloriesValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 30.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Statistics calorie unit style (14px, regular, textSecondary).
  static const TextStyle statisticsCaloriesUnit = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Statistics target label style (14px, regular, textSecondary).
  static const TextStyle statisticsTargetLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Statistics target numeric value style (14px, semi-bold, textPrimary).
  static const TextStyle statisticsTargetValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Statistics target unit style (14px, regular, textSecondary).
  static const TextStyle statisticsTargetUnit = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Tooltip text style (13px, medium, white).
  static const TextStyle tooltipText = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
    color: AppColors.surfaceWhite,
  );

  /// Day label text style for unselected chart bars (13px, regular, textSecondary).
  static const TextStyle chartDayLabel = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Day label text style for selected chart bar (13px, semi-bold, textPrimary).
  static const TextStyle chartDayLabelSelected = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Information card title text style (16px, regular, textSecondary).
  static const TextStyle infoCardTitle = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );

  /// Information card value text style (22px, semi-bold, textPrimary).
  static const TextStyle infoCardValue = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.0,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Information card unit text style (13px, regular, textSecondary).
  static const TextStyle infoCardUnit = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13.0,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}
