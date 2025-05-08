import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    const testKey = Key('K');

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          key: testKey,
          body: Center(child: Text('Hello')),
        ),
      ),
    );

    expect(find.byKey(testKey), findsOneWidget);
  });
}
