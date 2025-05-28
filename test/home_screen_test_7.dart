import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_project/main.dart';

void main() {
  testWidgets('text 입력, 드래그 ~~', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField), 'hi');

    await tester.tap(find.byType(FloatingActionButton));

    await tester.pump();

    expect(find.text('hi'), findsOneWidget);

    await tester.drag(find.byType(Dismissible), const Offset(500, 0));

    await tester.pumpAndSettle(const Duration(milliseconds: 1000));

    expect(find.text('hi'), findsNothing);
  });
}
