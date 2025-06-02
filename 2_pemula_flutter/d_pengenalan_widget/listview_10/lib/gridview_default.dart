import 'package:flutter/material.dart';

class GridView_Default extends StatelessWidget {
  const GridView_Default({super.key});

  //Variabel
  final List<String> _dataName = const [
    'Soekarno',
    'Mohammad Hatta',
    'Ki Hajar Dewantara',
    'Cut Nyak Dien',
    'Pangeran Diponegoro',
    'Tuanku Imam Bonjol',
    'RA Kartini',
    'Sultan Hasanuddin',
    'Teuku Umar',
    'Kapitan Pattimura',
    'Jenderal Sudirman',
    'KH Hasyim Asy’ari',
    'KH Ahmad Dahlan',
    'Dewi Sartika',
    'Sutan Sjahrir',
    'Tan Malaka',
    'Agus Salim',
    'Wage Rudolf Supratman',
    'Dr. Cipto Mangunkusumo',
    'Frans Kaisiepo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView Default')),

      /*
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, //jumlah kolom yang ditampilkan
          crossAxisSpacing: 10, //spasi horizontal
          mainAxisSpacing: 20, //spasi vertikal
          //childAspectRatio: 1 / 2, //perbandingan width dan height
          //mainAxisExtent: 100, //mengatur panjang height
        ),
        children: [
          for (String data in _dataName)
            ListTile(title: Text(data), tileColor: Colors.blue),
        ],
      ),
      */

      //dengan GridView.count()
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for (String data in _dataName)
            ListTile(title: Text(data), tileColor: Colors.blue),
        ],
      ),
    );
  }
}
