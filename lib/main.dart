// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'screens/Family.dart';
import 'Toku_App.dart';
import 'screens/Numbers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Toku_App(),
      routes: {
        "Numbers": (context) => numbers(),
        "Family_screen": (context) => family(),
      },
    );
  }
}
