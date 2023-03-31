import 'package:flutter/material.dart';
import 'package:ui_1/connection_page.dart';
import 'package:ui_1/trail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TrailPage(),
    );
  }
}
