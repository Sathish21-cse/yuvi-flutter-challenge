import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Tooltip pill displaying calorie value above the selected chart bar.
class ChartTooltip extends StatelessWidget {
  /// Creates a chart tooltip.
  const ChartTooltip({super.key, this.text = '1,980'});

  /// The text displayed inside the tooltip bubble.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.chartTooltipPaddingHorizontal,
        vertical: AppSpacing.chartTooltipPaddingVertical,
      ),
      decoration: const BoxDecoration(
        color: AppColors.tooltipBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.chartTooltipRadius),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyles.tooltipText,
        textAlign: TextAlign.center,
      ),
    );
  }
}
