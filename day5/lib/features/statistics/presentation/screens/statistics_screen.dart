import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/calories_bar_chart.dart';
import '../widgets/statistics_app_bar.dart';

/// Screen displaying user statistics and metrics.
class StatisticsScreen extends StatelessWidget {
  /// Creates the statistics screen.
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: AppSpacing.screenHorizontal,
            right: AppSpacing.screenHorizontal,
            top: AppSpacing.headerTop,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StatisticsAppBar(),
              SizedBox(height: AppSpacing.gap24),
              CaloriesBarChart(),
              // TODO next components
            ],
          ),
        ),
      ),
    );
  }
}
