import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_text_styles.dart';

/// App theme configuration using the defined design tokens.
class AppTheme {
  const AppTheme._();

  /// Light theme for the Calorie Tracker application.
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: AppTextStyles.fontFamily,
      scaffoldBackgroundColor: AppColors.screenBackground,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryTeal,
        surface: AppColors.surfaceWhite,
      ),
    );
  }
}
