import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/home_header.dart';
import '../widgets/today_calorie_card.dart';

/// Main home screen displaying the daily summary and calorie tracker.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(child: SingleChildScrollView(child: _HomeScreenContent())),
    );
  }
}

/// Scrollable content containing the top header and calorie card.
class _HomeScreenContent extends StatelessWidget {
  const _HomeScreenContent();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        HomeHeader(),
        SizedBox(height: AppSpacing.gap24),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.screenHorizontal,
          ),
          child: TodayCalorieCard(),
        ),
        // TODO next components: Later components will be added here.
      ],
    );
  }
}
