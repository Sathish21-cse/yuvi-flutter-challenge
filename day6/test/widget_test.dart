import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day1/features/home/presentation/widgets/home_header.dart';
import 'package:day1/features/home/presentation/widgets/today_calorie_card.dart';

void main() {
  testWidgets('Home screen renders header and today calorie card', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [HomeHeader(), TodayCalorieCard()]),
          ),
        ),
      ),
    );

    // Header checks
    expect(find.text('Good Morning 👋'), findsOneWidget);
    expect(find.text('Ann Ezechukwu'), findsOneWidget);

    // Today calorie card checks
    expect(find.text('Today Calorie'), findsOneWidget);
    expect(find.text('1980'), findsOneWidget);
    expect(find.text('kcal'), findsOneWidget);
    expect(find.text('520'), findsOneWidget);
    expect(find.text('Left'), findsOneWidget);
  });
}
