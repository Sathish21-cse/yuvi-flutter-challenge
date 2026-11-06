import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Header for the week calendar card showing the current month and navigation arrow buttons.
class CalendarHeader extends StatelessWidget {
  /// Creates the calendar header.
  const CalendarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('February 2026', style: AppTextStyles.monthTitle),
        _buildArrowButtons(),
      ],
    );
  }

  Widget _buildArrowButtons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildArrow(Icons.chevron_left_rounded),
        const SizedBox(width: AppSpacing.gap12),
        _buildArrow(Icons.chevron_right_rounded),
      ],
    );
  }

  Widget _buildArrow(IconData icon) {
    return Container(
      width: AppSpacing.arrowButtonSize,
      height: AppSpacing.arrowButtonSize,
      decoration: const BoxDecoration(
        color: AppColors.arrowButtonBackground,
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        size: AppSpacing.arrowIconSize,
        color: AppColors.textPrimary,
      ),
    );
  }
}

