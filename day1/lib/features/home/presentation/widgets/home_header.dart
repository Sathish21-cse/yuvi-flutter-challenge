import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import 'greeting_text.dart';
import 'notification_button.dart';

/// Top header displaying the user profile greeting and notification button.
class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: AppSpacing.screenHorizontal,
        right: AppSpacing.screenHorizontal,
        top: AppSpacing.headerTop,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_buildUserSection(), const NotificationButton()],
      ),
    );
  }

  Widget _buildUserSection() {
    return Row(
      children: [
        _buildAvatar(),
        const SizedBox(width: AppSpacing.gap12),
        const GreetingText(),
      ],
    );
  }

  Widget _buildAvatar() {
    return ClipOval(
      child: Image.asset(
        'assets/images/avatar.png',
        width: AppSpacing.avatarSize,
        height: AppSpacing.avatarSize,
        fit: BoxFit.cover,
      ),
    );
  }
}
