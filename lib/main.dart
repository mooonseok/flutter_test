import 'package:flutter/material.dart';
import 'package:flutter_test_project/home_screen_3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen3(
        title: 'title',
        message: 'message',
      ),
    );
  }
}
