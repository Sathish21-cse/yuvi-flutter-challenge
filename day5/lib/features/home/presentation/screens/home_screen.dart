import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/home_header.dart';
import '../widgets/macro_cards_row.dart';
import '../widgets/meal_cards_section.dart';
import '../widgets/today_calorie_card.dart';
import '../widgets/week_calendar_card.dart';

/// Main home screen displaying the header, calorie card, and macro cards.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(height: AppSpacing.gap16),
              Padding(
                padding: EdgeInsets.only(left: AppSpacing.screenHorizontal),
                child: MacroCardsRow(),
              ),
              SizedBox(height: AppSpacing.gap24),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.screenHorizontal,
                ),
                child: WeekCalendarCard(),
              ),
              SizedBox(height: AppSpacing.gap24),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSpacing.screenHorizontal,
                ),
                child: MealCardsSection(),
              ),
              SizedBox(height: AppSpacing.gap24),
            ],
          ),
        ),
      ),
    );
  }
}
