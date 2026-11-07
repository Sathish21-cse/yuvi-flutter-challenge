import 'package:flutter/material.dart';

import 'core/theme/app_colors.dart';
import 'core/theme/app_spacing.dart';
import 'core/theme/app_theme.dart';
import 'features/statistics/presentation/screens/statistics_screen.dart';

void main() {
  runApp(const CalorieTrackerApp());
}

/// Root widget configuring the application theme and responsive mobile frame.
class CalorieTrackerApp extends StatelessWidget {
  const CalorieTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorie Tracker',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const MobileWebFrame(child: StatisticsScreen()),
    );
  }
}

/// Constrains the content to a mobile phone width and centers it on web/desktop.
class MobileWebFrame extends StatelessWidget {
  const MobileWebFrame({super.key, required this.child});

  /// The child widget to be framed.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.screenBackground,
      alignment: Alignment.topCenter,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: AppSpacing.maxPhoneWidth),
          child: child,
        ),
      ),
    );
  }
}
