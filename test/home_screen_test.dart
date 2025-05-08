import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_project/home_screen_3.dart';

void main() {
  testWidgets('title message가 잘 표시되어야 한다.', (tester) async {
    //title: T, message: M
    await tester.pumpWidget(const MaterialApp(
      home: HomeScreen3(
        title: 'T',
        message: 'M',
      ),
    ));
    //T 글자가 있는 객체
    final titleFinder = find.text('T');
    //M 글자가 있는 객체
    final messageFinder = find.text('M');
    //각각 1개씩 있는지 검사
    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
