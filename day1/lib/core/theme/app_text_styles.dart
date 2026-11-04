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
}
