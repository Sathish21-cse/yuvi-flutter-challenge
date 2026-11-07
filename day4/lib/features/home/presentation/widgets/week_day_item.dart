import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Single day item displaying a day letter and day number.
class WeekDayItem extends StatelessWidget {
  /// Creates a week day item.
  const WeekDayItem({
    super.key,
    required this.letter,
    required this.number,
    required this.isSelected,
  });

  /// Day letter abbreviation (e.g. "S", "M", "T").
  final String letter;

  /// Day of the month number (e.g. "22", "23").
  final String number;

  /// Whether this day is currently selected.
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    if (isSelected) {
      return _buildSelectedItem();
    }
    return _buildUnselectedItem();
  }

  Widget _buildSelectedItem() {
    return Container(
      width: AppSpacing.selectedPillWidth,
      height: AppSpacing.selectedPillHeight,
      decoration: const BoxDecoration(
        color: AppColors.selectedPill,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.selectedPillRadius),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(letter, style: AppTextStyles.selectedDayLetter),
          const SizedBox(height: AppSpacing.gap8),
          _buildCircle(backgroundColor: AppColors.surfaceWhite),
        ],
      ),
    );
  }

  Widget _buildUnselectedItem() {
    return SizedBox(
      height: AppSpacing.selectedPillHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(letter, style: AppTextStyles.dayLetter),
          const SizedBox(height: AppSpacing.gap12),
          _buildCircle(backgroundColor: AppColors.dayCircleBackground),
        ],
      ),
    );
  }

  Widget _buildCircle({required Color backgroundColor}) {
    return Container(
      width: AppSpacing.dayCircleSize,
      height: AppSpacing.dayCircleSize,
      decoration: BoxDecoration(color: backgroundColor, shape: BoxShape.circle),
      alignment: Alignment.center,
      child: Text(number, style: AppTextStyles.dayNumber),
    );
  }
}
