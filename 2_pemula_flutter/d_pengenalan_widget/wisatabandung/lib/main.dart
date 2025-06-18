import 'package:flutter/material.dart';
import 'codelab_4/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      //home: const DetailScreen_1(),
      //home: const DetailScreen(), //detail_screen.dart
      home: MainScreen(),
    );
  }
}
