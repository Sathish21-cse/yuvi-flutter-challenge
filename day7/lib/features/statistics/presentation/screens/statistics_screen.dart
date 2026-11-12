import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/calories_bar_chart.dart';
import '../widgets/health_score_card.dart';
import '../widgets/info_cards_row.dart';
import '../widgets/statistics_app_bar.dart';
import '../widgets/statistics_calories_summary.dart';

/// Screen displaying user statistics and metrics.
class StatisticsScreen extends StatelessWidget {
  /// Creates the statistics screen.
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSpacing.screenHorizontal,
          right: AppSpacing.screenHorizontal,
          top: AppSpacing.headerTop,
          bottom: AppSpacing.gapBottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StatisticsAppBar(),
            SizedBox(height: AppSpacing.gapStatisticsAppBarToCalories),
            StatisticsCaloriesSummary(),
            SizedBox(height: AppSpacing.gapCaloriesToChart),
            CaloriesBarChart(),
            SizedBox(height: AppSpacing.gapChartToInfoCards),
            InfoCardsRow(),
            SizedBox(height: AppSpacing.gapInfoCardsToHealthScore),
            HealthScoreCard(),
          ],
        ),
      ),
    );
  }
}
