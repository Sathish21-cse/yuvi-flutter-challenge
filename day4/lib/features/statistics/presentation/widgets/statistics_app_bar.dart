import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import 'statistics_icon_button.dart';

/// Top app bar for the statistics screen.
class StatisticsAppBar extends StatelessWidget {
  /// Creates the top app bar for statistics screen.
  const StatisticsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        StatisticsIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          iconSize: AppSpacing.backIconSize,
        ),
        Expanded(
          child: Center(
            child: Text(
              'Statistics',
              style: AppTextStyles.appBarTitle,
            ),
          ),
        ),
        StatisticsIconButton(
          icon: Icons.more_horiz_rounded,
          iconSize: AppSpacing.moreIconSize,
        ),
      ],
    );
  }
}

