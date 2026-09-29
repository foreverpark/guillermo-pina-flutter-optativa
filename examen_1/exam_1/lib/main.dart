import 'package:flutter/material.dart';
import 'package:exam_1/widgets/login.dart';
import 'package:exam_1/themes/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Login()),
      theme: AppTheme.themeData,
    );
  }
}
