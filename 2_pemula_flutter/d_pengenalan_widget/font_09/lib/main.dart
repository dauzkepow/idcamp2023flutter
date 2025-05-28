/*
  - unduh font dari Google Font Oswald = https://fonts.google.com/specimen/Oswald
  - tambah font ke project
  - buat folder font lalu masukkan font yang telah di download ke folder font
  - daftarkan font di pubspec.yaml
  - Pada file pubspec.yaml
    untuk mendaftarkan font Oswald kita tuliskan Oswald pada bagian family yang menjadi
    nama font yang kita panggil pada kode dart. 
    Lalu dalam family kita masukkan fonts yang di dalamnya terdapat asset yang nantinya 
    akan mengarah pada file font.ttf

  
*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //ubah font default pada class ThemeData, parameter fontFamily
      //theme: ThemeData(fontFamily: 'Oswald', primarySwatch: Colors.blue),
      home: Scaffold(
        body: Center(
          child: Text(
            'Custom Font Oswald',
            style: TextStyle(
              //nama fontFamily yang didaftarkan di pubcpec.yaml = 'Oswald'
              fontFamily: 'Oswald',
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}

//setelah mengubah font perlu full restart
