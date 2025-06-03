import 'package:expanded_11/c_expanded.dart';
import 'package:expanded_11/c_flexible.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Rainbow(),
      home: ExpandedFlexiblePage(),
    );
  }
}
