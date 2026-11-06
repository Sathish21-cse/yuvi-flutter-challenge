import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import 'calendar_header.dart';
import 'week_days_row.dart';

/// Card displaying the week calendar with a header and days row.
class WeekCalendarCard extends StatelessWidget {
  /// Creates the week calendar card.
  const WeekCalendarCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.weekCardPadding),
      decoration: const BoxDecoration(
        color: AppColors.weekCardBackground,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSpacing.weekCardRadius),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CalendarHeader(),
          SizedBox(height: AppSpacing.gap16),
          WeekDaysRow(),
        ],
      ),
    );
  }
}

