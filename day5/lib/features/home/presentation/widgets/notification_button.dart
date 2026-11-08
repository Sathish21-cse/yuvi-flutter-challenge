import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../statistics/presentation/screens/statistics_screen.dart';

/// Circular button containing a notification bell icon.
class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSpacing.buttonSize,
      height: AppSpacing.buttonSize,
      decoration: const BoxDecoration(
        color: AppColors.surfaceWhite,
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(
            color: AppColors.borderLight,
            width: AppSpacing.borderWidth,
          ),
        ),
      ),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const StatisticsScreen()),
          );
        },
        child: const Icon(
          Icons.notifications_none_rounded,
          size: AppSpacing.iconSize,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }
}
