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

  /// Exact peach tint background for carbs icon circle from reference image (#FFF0DE).
  static const Color carbsTint = Color(0xFFFFF0DE);

  /// Exact light green tint background for protein icon circle from reference image (#E5FFDD).
  static const Color proteinTint = Color(0xFFE5FFDD);

  /// Exact light grey-lavender tint background for fat icon circle from reference image (#EBECF0).
  static const Color fatTint = Color(0xFFEBECF0);

  /// Light grey decorative line under macro label (#E6E6E6).
  static const Color macroLine = Color(0xFFE6E6E6);

  /// Week calendar card surface white background (#FFFFFF).
  static const Color weekCardBackground = surfaceWhite;

  /// Background color for unselected day number circles (#EEF4F7).
  static const Color dayCircleBackground = Color(0xFFEEF4F7);

  /// Selected day pill background color (#2E6B82).
  static const Color selectedPill = primaryTeal;

  /// Background color for calendar navigation arrow buttons (#F3F3F3).
  static const Color arrowButtonBackground = Color(0xFFF3F3F3);

  /// Breakfast card background color (#DCEBF3).
  static const Color breakfastCardBackground = Color(0xFFDCEBF3);

  /// Breakfast action button background color (reuses primaryTeal).
  static const Color breakfastButton = primaryTeal;

  /// Breakfast active progress indicator color (#7BA3B5).
  static const Color breakfastProgress = Color(0xFF7BA3B5);

  /// Lunch card background color (#E8E8EF).
  static const Color lunchCardBackground = Color(0xFFE8E8EF);

  /// Lunch action button background color (#2F3C8F).
  static const Color lunchButton = Color(0xFF2F3C8F);

  /// Lunch active progress indicator color (#8E94C0).
  static const Color lunchProgress = Color(0xFF8E94C0);

  /// Progress bar track background color (#FFFFFF with 60% opacity).
  static const Color progressTrack = Color(0x99FFFFFF);

  /// Background track color for chart bars (#FFFFFF).
  static const Color barTrack = Color(0xFFFFFFFF);

  /// Fill color for unselected chart bars (#DCEBF3).
  static const Color barFill = Color(0xFFDCEBF3);

  /// Fill color for selected chart bar (reuses primaryTeal).
  static const Color barSelected = primaryTeal;

  /// Tooltip bubble background color (reuses primaryTeal).
  static const Color tooltipBackground = primaryTeal;
}
