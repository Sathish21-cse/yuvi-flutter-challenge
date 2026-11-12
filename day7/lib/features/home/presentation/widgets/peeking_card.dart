import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';

/// Decorative third card peeking in from the bottom of the home screen.
class PeekingCard extends StatelessWidget {
  /// Creates the bottom peeking card.
  const PeekingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: SizedBox(
        height: AppSpacing.peekingCardHeight,
        child: OverflowBox(
          alignment: Alignment.topCenter,
          maxHeight: AppSpacing.peekingCardFullHeight,
          child: _buildFullCard(),
        ),
      ),
    );
  }

  Widget _buildFullCard() {
    return Container(
      width: double.infinity,
      height: AppSpacing.peekingCardFullHeight,
      padding: const EdgeInsets.only(
        top: AppSpacing.mealCardPadding,
        right: AppSpacing.mealCardPadding,
      ),
      decoration: const BoxDecoration(
        color: AppColors.peekingCardBackground,
        borderRadius: BorderRadius.all(Radius.circular(AppSpacing.cardRadius)),
      ),
      child: _buildHeaderRow(),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_buildActionCircle()],
    );
  }

  Widget _buildActionCircle() {
    return Container(
      width: AppSpacing.mealButtonSize,
      height: AppSpacing.mealButtonSize,
      decoration: const BoxDecoration(
        color: AppColors.peekingCardCircle,
        shape: BoxShape.circle,
      ),
    );
  }
}
