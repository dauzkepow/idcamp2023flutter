//Expanded

import 'package:flutter/material.dart';

class Rainbow extends StatelessWidget {
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(child: Container(color: Colors.red)),
        Expanded(child: Container(color: Colors.orange)),
        Expanded(child: Container(color: Colors.yellow)),
        Expanded(child: Container(color: Colors.green)),
        Expanded(flex: 2, child: Container(color: Colors.blue)), //flex 2
        Expanded(child: Container(color: Colors.indigo)),
        Expanded(child: Container(color: Colors.purple)),
      ],
    );
  }
}

/*
  - Expanded - responsif menyesuaikan widget dengan beberapa tipe layar hp, tablet
  - mengembangkan child dari row atau column sesuai dengan ruang tersedia
  - saat aplikasi dijalankan masing masing container akan menempati ruang kosong yang ada
  - jika dijalankan di ukuran layar yang berbeda, maka ukuran container juga akan 
  menyesuaikan seluruh container menempati ruang dengan ukuran yang sama, 
  disebabkan karena Expanded memiliki parameter flex yang memiliki nilai default 1.
  - dapat mengubah nilai flex ini sesuai perbandingan yang diinginkan, 
  misal nilai flex 2 pada salah satu container biru

  - maka container warna biru ini akan menjadi lebih besar dengan perbandingan 
  2/(1 + 1 + 1 + 1 + 2 + 1 + 1) atau 2/8 dari halaman

*/

//sumber = https://api.flutter.dev/flutter/widgets/Expanded-class.html
