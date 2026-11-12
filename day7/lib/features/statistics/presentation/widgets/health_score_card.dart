import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import 'health_metric_row.dart';
import 'health_score_header.dart';

/// Card displaying the overall health score and four individual metric rows.
class HealthScoreCard extends StatelessWidget {
  /// Creates the health score card.
  const HealthScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.healthCardPadding),
      decoration: const BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.healthCardRadius),
        ),
      ),
      child: _buildContent(),
    );
  }

  Widget _buildContent() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HealthScoreHeader(),
        SizedBox(height: AppSpacing.gap12),
        HealthMetricRow(
          iconPath: 'assets/images/fiber_icon.png',
          label: 'Fiber',
          value: '3g',
          dotColor: AppColors.statusRed,
        ),
        HealthMetricRow(
          iconPath: 'assets/images/bpm_icon.png',
          label: 'BPM',
          value: '86bpm',
          dotColor: AppColors.statusRed,
        ),
        HealthMetricRow(
          iconPath: 'assets/images/sugar_icon.png',
          label: 'Sugar',
          value: '17g',
          dotColor: AppColors.statusGreen,
        ),
        HealthMetricRow(
          iconPath: 'assets/images/sodium_icon.png',
          label: 'Sodium',
          value: '1124mg',
          dotColor: AppColors.statusRed,
        ),
      ],
    );
  }
}

