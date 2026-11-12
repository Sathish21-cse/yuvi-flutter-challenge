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
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      // child: OverflowBox(
      //   alignment: Alignment.centerLeft,
      //   maxWidth: AppSpacing.macroRowMaxWidth,
      child: _buildCardsRow(),
      // ),
    );
  }

  Widget _buildCardsRow() {
    return const Row(
      children: [
        MacroCard(
          label: 'Carbs',
          darkValue: '250g',
          greyValue: '/300g',
          imagePath: 'assets/images/bread.png',
          tintColor: AppColors.carbsTint,
          pillColor: AppColors.carbsPillTint,
          cardWidth: AppSpacing.macroCarbsWidth,
          lineFillColor: AppColors.carbsLineFill,
          lineFactor: 0.83,
        ),
        SizedBox(width: AppSpacing.macroPillsGap),
        MacroCard(
          label: 'Protein',
          darkValue: '120g',
          greyValue: '/150g',
          imagePath: 'assets/images/green.png',
          tintColor: AppColors.proteinTint,
          pillColor: AppColors.proteinPillTint,
          cardWidth: AppSpacing.macroProteinWidth,
          lineFillColor: AppColors.proteinLineFill,
          lineFactor: 0.80,
        ),
        SizedBox(width: AppSpacing.macroPillsGap),
        MacroCard(
          label: 'Fat',
          darkValue: '130g',
          greyValue: '/150g',
          imagePath: 'assets/images/butter.png',
          tintColor: AppColors.fatTint,
          pillColor: AppColors.fatPillTint,
          cardWidth: AppSpacing.macroFatWidth,
          lineFillColor: AppColors.fatLineFill,
          lineFactor: 0.80,
        ),
      ],
    );
  }
}
