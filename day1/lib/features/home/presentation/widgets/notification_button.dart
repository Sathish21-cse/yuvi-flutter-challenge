import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';

/// Circular button containing a notification bell icon.
class NotificationButton extends StatelessWidget {
  const NotificationButton({super.key, this.onPressed});

  /// Optional callback invoked when the notification button is tapped.
  final VoidCallback? onPressed;

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
      child: Material(color: Colors.transparent, child: _buildInkWell()),
    );
  }

  Widget _buildInkWell() {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: onPressed ?? () {},
      child: const Icon(
        Icons.notifications_none_rounded,
        size: AppSpacing.iconSize,
        color: AppColors.textPrimary,
      ),
    );
  }
}
