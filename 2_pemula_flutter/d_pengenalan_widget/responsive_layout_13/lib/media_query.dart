//Media Query
//class yang dapat kita gunakan untuk mendapatkan ukuran dan orientasi layar
//mengembalikan ukuran layar yang digunakan

import 'package:flutter/material.dart';

class Media_Query extends StatelessWidget {
  const Media_Query({super.key});

  @override
  Widget build(BuildContext context) {
    //variabel Media Query
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text('Contoh Media Query')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Screen width: ${screenSize.width.toStringAsFixed(2)}',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
          Text(
            'Orientation: $orientation',
            style: const TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
