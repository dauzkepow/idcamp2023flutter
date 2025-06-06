//Responsive Layout
//menerapkan layout yang bisa beradaptasi dengan berbagai ukuran layar yang berbeda
//

import 'package:flutter/material.dart';
import 'package:responsive_layout_13/layout_builder.dart';
import 'package:responsive_layout_13/media_query.dart';
import 'package:responsive_layout_13/responsive_3_tampilan.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: Media_Query() //media_query.dart
      //home: Layout_Builder(), //layout_builder.dart
      home: Responsive_3_Tampilan(),
    );
  }
}
