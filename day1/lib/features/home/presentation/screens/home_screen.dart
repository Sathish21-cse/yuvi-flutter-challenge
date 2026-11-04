import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../widgets/home_header.dart';

/// Main home screen containing the header component.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HomeHeader(),
            // TODO day 2+: Next components will be added here.
          ],
        ),
      ),
    );
  }
}
