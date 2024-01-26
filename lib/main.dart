import 'package:flutter/material.dart';
import 'package:piddu/cakecutting.dart';
import 'package:piddu/card.dart';
import 'package:piddu/countdown.dart';
import 'package:piddu/final.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade700),
        buttonTheme: ButtonThemeData(buttonColor: Colors.white),
        useMaterial3: true,
      ),
      home:CountdownWidget(targetDate: DateTime(2024, 1, 31, 23, 59, 59))
    );
  }
}