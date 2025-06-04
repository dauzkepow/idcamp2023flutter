//Navigation
/*
  - untuk berpindah halaman akan menjadi tumpukan (stack)
  - method Navigator.push = pindah satu screen ke screen lain, screen pertama ditumpuk 
    screen kedua
  
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WidgetScreen();
    }));
  },

  - untuk perpindahan screen perlu parameter onPressed pada tombol ElevatedButton pada screen
    pertama
  - Parameter context = variabel BuildContext yang ada pada method build
  - Parameter Route = menentukan tujuan kemana akan pindah screen
    Route isikan dengan MaterialPageRoute yang didalamnya terdapat builder yang nantinya
    akan diisi dengan tujuan screen-nya
  



  - method Navigator.pop = kembali dari screen dua ke screen satu, maka screen dua 
    akan dihapus

  onPressed: () {
      Navigator.pop(context);
  },

  - parameter context = variabel dari method build


*/

import 'package:flutter/material.dart';
import 'package:navigation_12/first_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FirstScreen());
  }
}


//sumber = https://docs.flutter.dev/cookbook/navigation