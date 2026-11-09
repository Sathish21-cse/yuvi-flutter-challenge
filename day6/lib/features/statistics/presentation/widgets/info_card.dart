import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Reusable card displaying an activity or nutrition metric with an icon.
class InfoCard extends StatelessWidget {
  /// Creates an information card with title, value, unit, and icon.
  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.unit,
    required this.iconPath,
  });

  /// The title of the card (e.g. "Steps" or "Water").
  final String title;

  /// The value to display (e.g. "1230" or "1,8").
  final String value;

  /// The unit of the metric (e.g. "Steps" or "Liters").
  final String unit;

  /// Path to the ring icon asset image.
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSpacing.infoCardHeight,
      padding: const EdgeInsets.all(AppSpacing.infoCardPadding),
      decoration: const BoxDecoration(
        color: AppColors.infoCardBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.infoCardRadius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTopRow(),
          _buildBottomColumn(),
        ],
      ),
    );
  }

  Widget _buildTopRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(title, style: AppTextStyles.infoCardTitle),
        Image.asset(
          iconPath,
          width: AppSpacing.infoCardIconSize,
          height: AppSpacing.infoCardIconSize,
        ),
      ],
    );
  }

  Widget _buildBottomColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: AppTextStyles.infoCardValue),
        const SizedBox(height: AppSpacing.gap2),
        Text(unit, style: AppTextStyles.infoCardUnit),
      ],
    );
  }
}

