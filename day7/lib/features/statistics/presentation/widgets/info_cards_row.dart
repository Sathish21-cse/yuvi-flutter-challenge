import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import 'info_card.dart';

/// Row displaying the steps and water information cards side by side.
class InfoCardsRow extends StatelessWidget {
  /// Creates the information cards row.
  const InfoCardsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: InfoCard(
            title: 'Steps',
            value: '1230',
            unit: 'Steps',
            iconPath: 'assets/images/steps.png',
          ),
        ),
        SizedBox(width: AppSpacing.gap12),
        Expanded(
          child: InfoCard(
            title: 'Water',
            value: '1,8',
            unit: 'Liters',
            iconPath: 'assets/images/water.png',
          ),
        ),
      ],
    );
  }
}
