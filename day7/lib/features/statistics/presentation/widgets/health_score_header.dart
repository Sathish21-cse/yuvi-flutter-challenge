import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'health_score_ring.dart';

/// Header row for the health score card showing title, status, and ring.
class HealthScoreHeader extends StatelessWidget {
  /// Creates the health score header.
  const HealthScoreHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_buildTitleColumn(), const HealthScoreRing(progress: 0.7)],
    );
  }

  Widget _buildTitleColumn() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Health score', style: AppTextStyles.healthTitle),
        SizedBox(height: AppSpacing.gap2),
        Text('Good', style: AppTextStyles.healthStatus),
      ],
    );
  }
}

