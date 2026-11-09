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
      return Center(
        child: Container(
          width: AppSpacing.selectedPillWidth,
          height: AppSpacing.selectedPillHeight,
          decoration: const BoxDecoration(
            color: AppColors.selectedPill,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSpacing.selectedPillRadius),
            ),
          ),
          child: _buildColumn(),
        ),
      );
    }
    return Center(
      child: SizedBox(
        width: AppSpacing.selectedPillWidth,
        height: AppSpacing.selectedPillHeight,
        child: _buildColumn(),
      ),
    );
  }

  Widget _buildColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildLetter(),
        const SizedBox(height: AppSpacing.dayLetterCircleGap),
        _buildCircle(),
        const SizedBox(height: AppSpacing.dayCircleBottomGap),
      ],
    );
  }

  Widget _buildLetter() {
    return SizedBox(
      height: AppSpacing.dayLetterHeight,
      child: Center(
        child: Text(
          letter,
          style: isSelected
              ? AppTextStyles.selectedDayLetter
              : AppTextStyles.dayLetter,
        ),
      ),
    );
  }

  Widget _buildCircle() {
    return Container(
      width: AppSpacing.dayCircleSize,
      height: AppSpacing.dayCircleSize,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.surfaceWhite
            : AppColors.dayCircleBackground,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(number, style: AppTextStyles.dayNumber),
    );
  }
}
