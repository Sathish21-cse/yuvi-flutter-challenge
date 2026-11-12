import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Circular progress ring displaying the 7/10 health score.
class HealthScoreRing extends StatelessWidget {
  /// Creates a health score progress ring.
  const HealthScoreRing({super.key, this.progress = 0.7});

  /// Arc progress value between 0.0 and 1.0.
  final double progress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSpacing.healthRingSize,
      height: AppSpacing.healthRingSize,
      child: Stack(
        alignment: Alignment.center,
        children: [_buildTrack(), _buildArc(), _buildLabel()],
      ),
    );
  }

  Widget _buildTrack() {
    return const SizedBox(
      width: AppSpacing.healthRingSize,
      height: AppSpacing.healthRingSize,
      child: CircularProgressIndicator(
        value: 1.0,
        strokeWidth: AppSpacing.healthRingStrokeWidth,
        color: AppColors.healthRingTrack,
      ),
    );
  }

  Widget _buildArc() {
    return SizedBox(
      width: AppSpacing.healthRingSize,
      height: AppSpacing.healthRingSize,
      child: CircularProgressIndicator(
        value: progress,
        strokeWidth: AppSpacing.healthRingStrokeWidth,
        color: AppColors.healthRingArc,
        backgroundColor: Colors.transparent,
        strokeCap: StrokeCap.round,
      ),
    );
  }

  Widget _buildLabel() {
    return const Text('7/10', style: AppTextStyles.healthRingText);
  }
}
