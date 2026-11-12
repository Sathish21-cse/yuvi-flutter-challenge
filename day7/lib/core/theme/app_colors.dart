import 'package:flutter/material.dart';

/// Design color tokens used across the application sampled from the mockup.
class AppColors {
  const AppColors._();

  /// Default background color for screens (#F7F7F7).
  static const Color screenBackground = Color(0xFFF7F7F7);

  /// Card and container surface white (#FFFFFF).
  static const Color surfaceWhite = Color(0xFFFFFFFF);

  /// Dark teal-blue accent used for buttons and active states (#357084).
  static const Color primaryTeal = Color(0xFF357084);

  /// Primary body and title text color - near-black (#1A1A1A).
  static const Color textPrimary = Color(0xFF1A1A1A);

  /// Secondary descriptive text and subtitle color - grey (#6B6B6B).
  static const Color textSecondary = Color(0xFF6B6B6B);

  /// Light border color for outlines and dividers (#E6E6E6).
  static const Color borderLight = Color(0xFFE6E6E6);

  /// Very light blue tint background for the calorie card (#F2FAFD).
  static const Color calorieCardBackground = Color(0xFFF2FAFD);

  /// Very light nearly-white track color behind the calorie ring progress arc (#F4FAFA).
  static const Color ringTrack = Color(0xFFF4FAFA);

  /// Calorie ring active arc color (#347184).
  static const Color ringArc = Color(0xFF347184);

  /// Soft white pill background for carbs (#FFFFFF).
  static const Color carbsPillBackground = surfaceWhite;

  /// Exact peach tint background for carbs icon circle (#FFF0DE).
  static const Color carbsTint = Color(0xFFFFF0DE);

  /// Partial fill color for carbs line (peach/yellow, #FDB872).
  static const Color carbsLineFill = Color(0xFFFDB872);

  /// Soft white pill background for protein (#FFFFFF).
  static const Color proteinPillBackground = surfaceWhite;

  /// Exact light green tint background for protein icon circle (#E5FFDD).
  static const Color proteinTint = Color(0xFFE5FFDD);

  /// Partial fill color for protein line (light green, #96E082).
  static const Color proteinLineFill = Color(0xFF96E082);

  /// Soft white pill background for fat (#FFFFFF).
  static const Color fatPillBackground = surfaceWhite;

  /// Exact light grey-lavender tint background for fat icon circle (#EBECF0).
  static const Color fatTint = Color(0xFFEBECF0);

  /// Very light grey track for macro progress line (#EAEAEA).
  static const Color macroLine = Color(0xFFEAEAEA);

  /// Week calendar card surface white background (#FFFFFF).
  static const Color weekCardBackground = surfaceWhite;

  /// Background color for unselected day number circles (light blue tint, #F4F8FA).
  static const Color dayCircleBackground = Color(0xFFF4F8FA);

  /// Selected day pill background color (#357084).
  static const Color selectedPill = primaryTeal;

  /// Background color for calendar navigation arrow buttons (#F2F4F4).
  static const Color arrowButtonBackground = Color(0xFFF2F4F4);

  /// Chevron icon color for calendar arrow buttons (#357084).
  static const Color arrowButtonIcon = primaryTeal;

  /// Breakfast card background color (#D9EBF5).
  static const Color breakfastCardBackground = Color(0xFFD9EBF5);

  /// Breakfast action button background color (#357086).
  static const Color breakfastButton = Color(0xFF357086);

  /// Breakfast active progress indicator color (#7E9FB0).
  static const Color breakfastProgress = Color(0xFF7E9FB0);

  /// Lunch card background color (#E8E9EE).
  static const Color lunchCardBackground = Color(0xFFE8E9EE);

  /// Lunch action button background color (#3C4C8A).
  static const Color lunchButton = Color(0xFF3C4C8A);

  /// Lunch active progress indicator color (#838AB4).
  static const Color lunchProgress = Color(0xFF838AB4);

  /// Progress bar track background color (#FFFFFF with 50% opacity).
  static const Color progressTrack = Color(0x80FFFFFF);

  /// Third peeking card background color (#ECFDED).
  static const Color peekingCardBackground = Color(0xFFECFDED);

  /// Tip circle color on third peeking card (#42593F).
  static const Color peekingCardCircle = Color(0xFF42593F);

  // Statistics screen colors (unchanged)
  /// Background track color for chart bars (#FFFFFF).
  static const Color barTrack = Color(0xFFFFFFFF);

  /// Fill color for unselected chart bars (#DCEBF3).
  static const Color barFill = Color(0xFFDCEBF3);

  /// Fill color for selected chart bar (reuses primaryTeal).
  static const Color barSelected = primaryTeal;

  /// Tooltip bubble background color (reuses primaryTeal).
  static const Color tooltipBackground = primaryTeal;

  /// Information card background color (reuses surfaceWhite).
  static const Color infoCardBackground = surfaceWhite;

  // Health score card colors
  /// Dark green active arc color for the health score ring (#4E7743).
  static const Color healthRingArc = Color(0xFF4E7743);

  /// Very light green track color for the health score ring (#D5F6CB).
  static const Color healthRingTrack = Color(0xFFD5F6CB);

  /// Red status dot color for health metrics (#A84252).
  static const Color statusRed = Color(0xFFA84252);

  /// Green status dot color for health metrics (#54764B).
  static const Color statusGreen = Color(0xFF54764B);

  /// Grey text color for health metric labels and values (#666666).
  static const Color metricText = Color(0xFF666666);
}
