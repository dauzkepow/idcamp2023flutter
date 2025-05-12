//image asset
/*
  - menampilkan gambar dari asset yang didaftarkan ke project flutter
  - untuk mendaftarkan asset gambar pada project kita harus menambahkannya pada pubspec.yaml
  - buat folder images yang nantinya akan berisi gambar
  - setelah menambahkan gambar, lalu mendaftarkan gambar tesebut ke pucspec.yaml

  ...
  flutter:
    uses-material-design: true
 
    assets:
      - images/android.png #daftarkan gambar disini bisa dengan foldernya
      - images/ #bisa juga mendaftarkan foldernya saja
  ... 

  - perhatikan pula indentasi kodenya
  - assets: sejajar dengan uses-material-design: true dengan jarak 2 spasi
  - sedangkan images/android.png berada di dalam assets berjarak 4 spasi
  - jangan lupa save dan perlu full restart
  - setelah mendaftarkan asset panggil kode dengan keyword :
    Image.asset(lokasi_asset)
  - 

*/

import 'package:flutter/material.dart';

class C_image_asset extends StatelessWidget {
  const C_image_asset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gambar dari assets flutter')),
      body: Center(
        child: Image.asset('images/android.png', width: 200, height: 200),
      ),
    );
  }
}
