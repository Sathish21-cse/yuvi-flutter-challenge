import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';

/// A vertical bar widget showing a background track and filled bar.
class ChartBar extends StatelessWidget {
  /// Creates a single chart bar with track and fill.
  const ChartBar({
    super.key,
    required this.heightFactor,
    required this.isSelected,
  });

  /// Height ratio of the filled portion (0.0 to 1.0).
  final double heightFactor;

  /// Whether this bar is selected.
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.chartBarWidth,
      height: AppSpacing.chartBarHeight,
      alignment: Alignment.bottomCenter,
      decoration: const BoxDecoration(
        color: AppColors.barTrack,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.chartBarRadius),
        ),
      ),
      child: _buildFill(),
    );
  }

  Widget _buildFill() {
    return FractionallySizedBox(
      heightFactor: heightFactor,
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? AppColors.barSelected : AppColors.barFill,
          borderRadius: const BorderRadius.all(
            Radius.circular(AppSpacing.chartBarRadius),
          ),
        ),
      ),
    );
  }
}

