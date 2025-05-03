/*
  Row = menyusun widget secara horizontal

  Row(
    children: <Widget>[
      //di sini berisi widget-widget
    ],
  )

  - untuk membuat widget berjajar secara horizontal harus memasukkan ke dalam 
    parameter children
  - parameter children berisi kumpulan list dari widget karena dapat menyusun beberapa
    widget sekaligus didalamnya
  - Parameter mainAxisAlignment = mengatur alignment horizontal
  - Parameter crossAxisAlignmnet = mengatur alignment vertikal


  Column = menyusun widget secara vertikal
  - Parameter mainAxisAlignment = mengatur alignment vertikal
  - Parameter crossAxisAlignmnet = mengatur alignment horizontal

  Column(
    children: <Widget>[
      //di sini berisi widget-widget
    ]
  )


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
        appBar: AppBar(title: const Text('Row and Column')),
        /*
        //Row
        body: Row(
          //mengatur alignment
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //mainAxisAlignment: MainAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: const <Widget>[
            Icon(Icons.share),
            Icon(Icons.thumb_up),
            Icon(Icons.thumb_down),
          ],
        ),
        */
        body: Column(
          children: const <Widget>[
            Text(
              'Sebuah Judul',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text('Lorem ipsum dolor sit amet'),
          ],
        ),
      ),
    );
  }
}


//row = https://api.flutter.dev/flutter/widgets/Row-class.html
//column = https://api.flutter.dev/flutter/widgets/Column-class.html
//