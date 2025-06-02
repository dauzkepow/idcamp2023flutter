//Listview Separated
//menmapilkan daftar item yang dipisahkan dengan separator

//itemBuilder = fungsi mengembalikan widget untuk ditampilkan
//itemCount = isi dengan jumlah seluruh item yang ingin ditampilkan
//parameter separatorBuilder = mengembalikan widget yang akan berperan sebagai separator

import 'package:flutter/material.dart';

class ListView_Separeted extends StatelessWidget {
  const ListView_Separeted({super.key});

  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
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

        //bisa diberikan widget baru di bawah ListView.separated()
        separatorBuilder: (BuildContext context, int index) {
          //return const Divider(thickness: 10);

          //setiap 2 item diberi divider()
          if (index % 2 == 1) {
            return const Divider(thickness: 10);
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}
