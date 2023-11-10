// ignore_for_file: unused_import

import 'package:flutter/material.dart';

import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          appBarTheme: const AppBarTheme(
            elevation: 0.0,
            color: Colors.white,
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
      routes: {
        'ResultScreen': (context) => const ResultScreen(),
      },
    );
  }
}
