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
    this.onTap,
  });

  /// The icon to display.
  final IconData icon;

  /// The size of the icon.
  final double iconSize;

  /// Optional tap callback.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.appBarButtonSize,
      height: AppSpacing.appBarButtonSize,
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
      child: _buildInkWell(),
    );
  }

  Widget _buildInkWell() {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onTap,
      child: Center(
        child: Icon(icon, size: iconSize, color: AppColors.textPrimary),
      ),
    );
  }
}
