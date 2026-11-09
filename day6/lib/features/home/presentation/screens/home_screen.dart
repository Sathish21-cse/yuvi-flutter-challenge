import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../widgets/home_header.dart';
import '../widgets/macro_cards_row.dart';
import '../widgets/meal_cards_section.dart';
import '../widgets/peeking_card.dart';
import '../widgets/today_calorie_card.dart';
import '../widgets/week_calendar_card.dart';

/// Main home screen displaying the header, calorie card, and macro cards.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HomeHeader(),
          SizedBox(height: AppSpacing.gapHeaderToCalorie),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.screenHorizontal,
            ),
            child: TodayCalorieCard(),
          ),
          SizedBox(height: AppSpacing.gapCalorieToMacro),
          Padding(
            padding: EdgeInsets.only(left: AppSpacing.screenHorizontal),
            child: MacroCardsRow(),
          ),
          SizedBox(height: AppSpacing.gapMacroToCalendar),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.screenHorizontal,
            ),
            child: WeekCalendarCard(),
          ),
          SizedBox(height: AppSpacing.gapCalendarToBreakfast),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.screenHorizontal,
            ),
            child: MealCardsSection(),
          ),
          SizedBox(height: AppSpacing.gapLunchToPeeking),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.screenHorizontal,
            ),
            child: PeekingCard(),
          ),
          SizedBox(height: AppSpacing.gapBottom),
        ],
      ),
    );
  }
}
