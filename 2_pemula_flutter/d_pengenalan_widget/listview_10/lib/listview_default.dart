//ListView Default tanpa constructor apapun

import 'package:flutter/material.dart';

class ListView_Default extends StatelessWidget {
  const ListView_Default({super.key});

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
      appBar: AppBar(title: const Text('ListView Default')),
      body: ListView(
        children: [for (String data in _dataName) ListTile(title: Text(data))],
      ),
    );
  }
}
