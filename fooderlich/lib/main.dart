import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final theme = FooderlichTheme.dark(); 

    return MaterialApp(
      title: 'Fooderlich',
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

