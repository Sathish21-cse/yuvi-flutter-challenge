import 'package:flutter_test/flutter_test.dart';

import 'package:day1/main.dart';

void main() {
  testWidgets('Home header renders smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const CalorieTrackerApp());

    expect(find.text('Good Morning 👋'), findsOneWidget);
    expect(find.text('Ann Ezechukwu'), findsOneWidget);
  });
}
