import 'package:flutter/material.dart';

/// Design color tokens used across the application.
class AppColors {
  const AppColors._();

  /// Default background color for screens (#F7F7F7).
  static const Color screenBackground = Color(0xFFF7F7F7);

  /// Card and container surface white (#FFFFFF).
  static const Color surfaceWhite = Color(0xFFFFFFFF);

  /// Dark teal-blue accent used for buttons and active states (#2E6B82).
  static const Color primaryTeal = Color(0xFF2E6B82);

  /// Primary body and title text color (#1A1A1A).
  static const Color textPrimary = Color(0xFF1A1A1A);

  /// Secondary descriptive text and subtitle color (#6B6B6B).
  static const Color textSecondary = Color(0xFF6B6B6B);

  /// Light border color for outlines and dividers (#E6E6E6).
  static const Color borderLight = Color(0xFFE6E6E6);

  /// Very light blue tint background for the calorie card (#EAF4F7).
  static const Color calorieCardBackground = Color(0xFFEAF4F7);

  /// Light track color behind the calorie ring progress arc (#D3E3E9).
  static const Color ringTrack = Color(0xFFD3E3E9);
}
