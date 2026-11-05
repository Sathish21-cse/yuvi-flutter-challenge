import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Card displaying a single macronutrient with an icon, label, decoration line, and value.
class MacroCard extends StatelessWidget {
  /// Creates a pill-shaped macro card displaying a single nutrient metric.
  const MacroCard({
    super.key,
    required this.label,
    required this.value,
    required this.imagePath,
    required this.tintColor,
  });

  /// The macronutrient label (e.g. "Carbs").
  final String label;

  /// The macronutrient intake value (e.g. "250g/300g").
  final String value;

  /// Asset path for the food icon image.
  final String imagePath;

  /// Background tint color behind the circular image.
  final Color tintColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.macroCardWidth,
      height: AppSpacing.macroCardHeight,
      padding: const EdgeInsets.all(AppSpacing.macroCardPadding),
      decoration: BoxDecoration(
        color: AppColors.surfaceWhite,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSpacing.macroCardRadius),
        ),
        border: Border.all(
          color: AppColors.borderLight,
          width: AppSpacing.borderWidth,
        ),
      ),
      child: _buildRow(),
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        _buildImage(),
        const SizedBox(width: AppSpacing.gap8),
        _buildInfoColumn(),
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      width: AppSpacing.macroImageSize,
      height: AppSpacing.macroImageSize,
      decoration: BoxDecoration(color: tintColor, shape: BoxShape.circle),
      child: ClipOval(child: Image.asset(imagePath, fit: BoxFit.cover)),
    );
  }

  Widget _buildInfoColumn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label, style: AppTextStyles.macroLabel),
        const SizedBox(height: AppSpacing.gap2),
        _buildDecorationLine(),
        const SizedBox(height: AppSpacing.gap2),
        Text(value, style: AppTextStyles.macroValue),
      ],
    );
  }

  Widget _buildDecorationLine() {
    return Container(
      width: AppSpacing.macroLineWidth,
      height: AppSpacing.macroLineHeight,
      decoration: const BoxDecoration(
        color: AppColors.macroLine,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.macroLineRadius),
        ),
      ),
    );
  }
}
