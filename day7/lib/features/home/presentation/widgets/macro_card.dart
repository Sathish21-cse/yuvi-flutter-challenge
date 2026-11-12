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
    required this.cardWidth,
    this.lineWidth = AppSpacing.macroLineWidth,
    this.fillWidth = 0.0,
    this.fillColor,
    this.value = '',
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

  /// Explicit width of this macro pill card.
  final double cardWidth;

  /// Width of the background track of the decoration line.
  final double lineWidth;

  /// Width of the filled section of the decoration line.
  final double fillWidth;

  /// Accent fill color for the decoration line.
  final Color? fillColor;

  /// Legacy combined value parameter for backwards compatibility.
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: AppSpacing.macroCardHeight,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.macroCardPadding,
      ),
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
    return Stack(
      children: [
        Container(
          width: lineWidth,
          height: AppSpacing.macroLineHeight,
          decoration: const BoxDecoration(
            color: AppColors.macroLine,
            borderRadius: BorderRadius.all(
              Radius.circular(AppSpacing.macroLineRadius),
            ),
          ),
        ),
        if (fillColor != null && fillWidth > 0)
          Container(
            width: fillWidth,
            height: AppSpacing.macroLineHeight,
            decoration: BoxDecoration(
              color: fillColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(AppSpacing.macroLineRadius),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildValueText() {
    final effectiveDark = darkValue.isNotEmpty
        ? darkValue
        : (value.contains('/') ? value.split('/')[0] : value);
    final effectiveGrey = greyValue.isNotEmpty
        ? greyValue
        : (value.contains('/') ? '/${value.split('/')[1]}' : '');

    return FittedBox(
      fit: BoxFit.scaleDown,
      alignment: Alignment.centerLeft,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: effectiveDark, style: AppTextStyles.macroValueDark),
            TextSpan(text: effectiveGrey, style: AppTextStyles.macroValueGrey),
          ],
        ),
      ),
    );
  }
}
