import 'package:flutter/material.dart';
import 'package:jopi_library/dashboard.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jopi Library',
      theme: ThemeData(),
      home: const DashboardScreen(),
    );
  }
}