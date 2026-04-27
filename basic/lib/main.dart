import 'package:flutter/material.dart';
import 'Exercise1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Exercises',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Exercise1(), // Directly opens Exercise 1
    );
  }
}
