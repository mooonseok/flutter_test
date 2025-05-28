import 'package:flutter/material.dart';
import 'package:flutter_test_project/home_screen_4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen4(
        items: List.generate(10000, (i) => "Item $i"),
      ),
    );
  }
}
