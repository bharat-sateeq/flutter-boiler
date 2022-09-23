import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sateeq',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Center(child: Text('Welcome')),
    );
  }
}
