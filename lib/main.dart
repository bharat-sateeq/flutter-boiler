import 'package:flutter/material.dart';

import 'package:sateeq/theme/app_theme.dart';
import 'package:sateeq/views/pages/ApiTesting.dart';
import 'package:sateeq/views/pages/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sateeq',
      theme: GlobalTheme.lightTheme,
      darkTheme: GlobalTheme.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/api_testing': (context) => const ApiTest(),
      },
    );
  }
}
