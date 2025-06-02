//SingleChildScrollView
//satu child
//bisa digabung dengan column

import 'package:flutter/material.dart';

class Single_Child_Scroll_View extends StatelessWidget {
  const Single_Child_Scroll_View({super.key});

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
      appBar: AppBar(title: const Text('Single Child Scroll View')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (String data in _dataName) ListTile(title: Text(data)),
          ],
        ),
      ),
    );
  }
}

//lebih baik menggunakan perulangan for untuk mengeulang data yang diulang
