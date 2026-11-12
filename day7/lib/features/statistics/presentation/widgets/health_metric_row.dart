import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Single row displaying a health metric icon, label, value, and status dot.
class HealthMetricRow extends StatelessWidget {
  /// Creates a health metric row.
  const HealthMetricRow({
    super.key,
    required this.iconPath,
    required this.label,
    required this.value,
    required this.dotColor,
  });

  /// Asset path for the metric icon.
  final String iconPath;

  /// Display label for the metric.
  final String label;

  /// Formatted metric value text.
  final String value;

  /// Color of the status indicator dot.
  final Color dotColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpacing.metricRowHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            width: AppSpacing.metricIconSize,
            height: AppSpacing.metricIconSize,
          ),
          const SizedBox(width: AppSpacing.gap8),
          Expanded(child: Text(label, style: AppTextStyles.metricLabel)),
          Text(value, style: AppTextStyles.metricValue),
          const SizedBox(width: AppSpacing.gap8),
          _buildDot(),
        ],
      ),
    );
  }

  Widget _buildDot() {
    return Container(
      width: AppSpacing.statusDotSize,
      height: AppSpacing.statusDotSize,
      decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle),
    );
  }
}

