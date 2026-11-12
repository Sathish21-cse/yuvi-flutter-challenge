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
    required this.darkValue,
    required this.greyValue,
    required this.imagePath,
    required this.tintColor,
    required this.pillColor,
    required this.cardWidth,
    required this.lineFillColor,
    required this.lineFactor,
  });

  /// The macronutrient label (e.g. "Carbs").
  final String label;

  /// The consumed intake value formatted with unit (e.g. "250g").
  final String darkValue;

  /// The target intake value formatted with slash and unit (e.g. "/300g").
  final String greyValue;

  /// Asset path for the food icon image.
  final String imagePath;

  /// Background tint color behind the circular image.
  final Color tintColor;

  /// Soft background tint color of the pill container.
  final Color pillColor;

  /// Explicit width of this macro pill card.
  final double cardWidth;

  /// Fill color for the progress portion of the decoration line.
  final Color lineFillColor;

  /// Fraction of the decoration line filled from the left (0.0 to 1.0).
  final double lineFactor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: AppSpacing.macroCardHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.macroCardPadding,
      ),
      decoration: BoxDecoration(
        color: pillColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSpacing.macroCardRadius),
        ),
      ),
      child: _buildRow(),
    );
  }

  Widget _buildRow() {
    return Row(
      children: [
        _buildImage(),
        const SizedBox(width: AppSpacing.macroCircleGap),
        Expanded(child: _buildInfoColumn()),
      ],
    );
  }

  Widget _buildImage() {
    return Container(
      width: AppSpacing.macroCircleSize,
      height: AppSpacing.macroCircleSize,
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
        _buildLabel(),
        const SizedBox(height: AppSpacing.gap2),
        _buildDecorationLine(),
        const SizedBox(height: AppSpacing.gap2),
        _buildValueText(),
      ],
    );
  }

  Widget _buildLabel() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text(label, style: AppTextStyles.macroLabel),
    );
  }

  Widget _buildDecorationLine() {
    return Container(
      width: AppSpacing.macroLineWidth,
      height: AppSpacing.macroLineHeight,
      decoration: const BoxDecoration(
        color: AppColors.macroLineTrack,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.macroLineRadius),
        ),
      ),
      child: FractionallySizedBox(
        alignment: Alignment.centerLeft,
        widthFactor: lineFactor,
        child: _buildLineFill(),
      ),
    );
  }

  Widget _buildLineFill() {
    return Container(
      decoration: BoxDecoration(
        color: lineFillColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSpacing.macroLineRadius),
        ),
      ),
    );
  }

  Widget _buildValueText() {
    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: darkValue, style: AppTextStyles.macroValueDark),
            TextSpan(text: greyValue, style: AppTextStyles.macroValueGrey),
          ],
        ),
      ),
    );
  }
}
