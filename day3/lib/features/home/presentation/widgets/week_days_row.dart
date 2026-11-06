import 'package:flutter/material.dart';

import 'week_day_item.dart';

/// Row displaying the seven days of the current week.
class WeekDaysRow extends StatelessWidget {
  /// Creates the week days row.
  const WeekDaysRow({super.key});

  static const List<String> _letters = ['S', 'M', 'T', 'W', 'T', 'F', 'S'];
  static const List<String> _numbers = [
    '22',
    '23',
    '24',
    '25',
    '26',
    '27',
    '28',
  ];
  static const int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < _letters.length; i++)
          WeekDayItem(
            letter: _letters[i],
            number: _numbers[i],
            isSelected: i == _selectedIndex,
          ),
      ],
    );
  }
}

