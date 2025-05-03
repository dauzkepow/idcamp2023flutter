/*
  - Container = widget untuk styling, membuat shape(bentuk), dan layout pada widget child-nya
  - lebar(width), tinggi(height)
  - Padding = jarak antara konten (child) dengan container
  - Margin = jarak antara Container dengan bagian luar container
  
  Dekorasi Container -> bagian dari container untuk styling
  - dapat menentukan warna backgound(solid/gradient color)
  - shadow
  - border
  - border radius (membulatkan sudut)
  - mengatur shape (bentuk)
  - dan lain lain
  
  - untuk menggunakan decoration cukup menambahkan parameter decoration pada container 
    lalu beri nilai BoxDecoration.
  - ketika menggunakan color pada BoxDecoration pastikan tidak memberi parameter color 
    pada container
  - boxShadown merupakan sebuah Array [].
  - Di dalamnya terdapat BoxShadow yang artinya pada Container dapat memberikan banyak 
    bayangan atau shadown
  - Penggunaan borderRadius harus bentuk selain circle (lingkaran) agar tidak error bug

            Container(
          decoration: BoxDecoration(
          color: Colors.red,
          shape : BoxShape.circle,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              offset: Offset(3, 6),
              blurRadius: 10,
            ),
          ],
          border: Border.all(color: Colors.green, width: 3),
          ...

          ),
        ),


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
      title: 'Flutter Container',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Container')),
        //text Hi dibungkus container backgound biru
        body: Container(
          decoration: BoxDecoration(
            color: Colors.red, //warna
            shape: BoxShape.rectangle, //bentuk
            //bayangan
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(3, 6),
                blurRadius: 10,
              ),
            ],
            border: Border.all(color: Colors.green, width: 3), //batas garis
            borderRadius: BorderRadius.circular(10), //border tidak ujung lancip
          ),
          //color: Colors.blue, //warna background container
          //width: 200, //lebar
          //height: 100, //tinggi
          padding: const EdgeInsets.all(10), //jarak child dengan container
          margin: const EdgeInsets.all(10), //jarak dengan luar container
          child: const Text('Hi', style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}


//sumber = https://api.flutter.dev/flutter/widgets/Container-class.html