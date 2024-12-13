import 'package:fl_examen_orj/screens/home_screen_orj.dart';
import 'package:flutter/material.dart';
import 'package:fl_examen_orj/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreenOrj(),
      theme: AppTheme.lightTheme,
    );
  }
}