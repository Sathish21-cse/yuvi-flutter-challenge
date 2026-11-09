import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Displays the greeting line with a wave emoji and the user name.
class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Good Morning 👋', style: AppTextStyles.greeting),
        SizedBox(height: AppSpacing.gap4),
        Text('Sathish', style: AppTextStyles.userName),
      ],
    );
  }
}
