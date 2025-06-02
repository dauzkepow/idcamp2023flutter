//Listview.builder
//cocok digunakan pada ListView dengan jumlah item yang cukup besar
//karena flutter hanya render tampilan item yang terlihat dilayar, tidak seluruh item di awal
//memerlukan dua parameter = itemBuilder dan itemCount
//itemBuilder = fungsi mengembalikan widget untuk ditampilkan
//itemCount = isi dengan jumlah seluruh item yang ingin ditampilkan

import 'package:flutter/material.dart';

class ListView_Builder extends StatelessWidget {
  const ListView_Builder({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
      ),
    );
  }
}
