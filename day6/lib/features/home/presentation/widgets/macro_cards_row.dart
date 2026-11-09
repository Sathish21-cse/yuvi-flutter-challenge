import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import 'macro_card.dart';

/// Row of three macronutrient cards with overflow clipping at the screen edge.
class MacroCardsRow extends StatelessWidget {
  /// Creates the macronutrient cards row.
  const MacroCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSpacing.macroCardHeight,
      child: _buildClippedRow(),
    );
  }

  Widget _buildClippedRow() {
    return ClipRect(
      child: OverflowBox(
        alignment: Alignment.centerLeft,
        maxWidth: AppSpacing.macroRowMaxWidth,
        child: _buildCardsRow(),
      ),
    );
  }

  Widget _buildCardsRow() {
    return const Row(
      children: [
        MacroCard(
          label: 'Carbs',
          value: '250g/300g',
          imagePath: 'assets/images/bread.png',
          tintColor: AppColors.carbsTint,
        ),
        SizedBox(width: AppSpacing.gap12),
        MacroCard(
          label: 'Protein',
          value: '120g/150g',
          imagePath: 'assets/images/green.png',
          tintColor: AppColors.proteinTint,
        ),
        SizedBox(width: AppSpacing.gap12),
        MacroCard(
          label: 'Fat',
          value: '70g/90g',
          imagePath: 'assets/images/butter.png',
          tintColor: AppColors.fatTint,
        ),
      ],
    );
  }
}
