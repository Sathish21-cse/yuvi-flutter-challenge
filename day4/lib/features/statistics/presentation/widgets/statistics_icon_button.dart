import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';

/// Circular button displaying an icon inside a bordered white container.
class StatisticsIconButton extends StatelessWidget {
  /// Creates a circular icon button for the statistics screen.
  const StatisticsIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
  });

  /// The icon to display.
  final IconData icon;

  /// The size of the icon.
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.appBarButtonSize,
      height: AppSpacing.appBarButtonSize,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.surfaceWhite,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.borderLight,
            width: AppSpacing.borderWidth,
          ),
        ),
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: AppColors.textPrimary,
      ),
    );
  }
}

