/*
  Padding
  -> widget khusus untuk memberikan jarak pada suatu widget
  - Widget Padding harus memiliki child
  - child disini merupakan widget yang nantinya akan diberi padding
  - Parameter padding ditambahkan untuk menentukan besaran padding yang diinginkan
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Padding')),
        //text Hi dibungkus container backgound biru
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: const Text('Ini Padding'),
        ),
      ),
    );
  }
}


//sumber = https://api.flutter.dev/flutter/widgets/Padding-class.html