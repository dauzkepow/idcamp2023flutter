//Image = untuk menampilkan gambar ke flutter
//Image.network = menampilkan gambar dari sumber lain, internet [Image.network(url)]
//Image.asset = menampilkan gambar yang disimpan di project flutter
//sumber = https://api.flutter.dev/flutter/widgets/Image-class.html

import 'package:flutter/material.dart';
import 'package:image_08/C_image_asset.dart';
import 'package:image_08/C_image_network.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: C_image_network(),
      home: C_image_asset(),
    );
  }
}
