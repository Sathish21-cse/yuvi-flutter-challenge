import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Circular progress ring displaying remaining calories with a styled arc.
class CalorieRing extends StatelessWidget {
  const CalorieRing({super.key, this.caloriesLeft = 520, this.progress = 0.75});

  /// The amount of calories remaining.
  final int caloriesLeft;

  /// Arc progress value between 0.0 and 1.0.
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.ringSize,
      height: AppSpacing.ringSize,
      child: Stack(
        alignment: Alignment.center,
        children: [_buildTrack(), _buildProgressArc(), _buildCenterLabel()],
      ),
    );
  }

  Widget _buildTrack() {
    return const SizedBox(
      width: AppSpacing.ringSize,
      height: AppSpacing.ringSize,
      child: CircularProgressIndicator(
        value: 1.0,
        strokeWidth: AppSpacing.ringStrokeWidth,
        color: AppColors.ringTrack,
      ),
    );
  }

  Widget _buildProgressArc() {
    return Transform.rotate(
      angle: -math.pi / 4,
      child: SizedBox(
        width: AppSpacing.ringSize,
        height: AppSpacing.ringSize,
        child: CircularProgressIndicator(
          value: progress,
          strokeWidth: AppSpacing.ringStrokeWidth,
          color: AppColors.primaryTeal,
          strokeCap: StrokeCap.round,
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }

  Widget _buildCenterLabel() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('$caloriesLeft', style: AppTextStyles.ringValue),
        const Text('Left', style: AppTextStyles.ringLabel),
      ],
    );
  }
}
