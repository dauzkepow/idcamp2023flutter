//menampilkan list secara dinamis untuk memiliki banyak data dengan jumlah tidak menentu

import 'package:flutter/material.dart';

class Listview_Dinamis extends StatelessWidget {
  const Listview_Dinamis({super.key});

  //menampilkan angka 1 sampai 10
  final List<int> numberList = const <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //masukkan variabel list sebagai children lalu panggil fungsi map()
        //fungsi map() berguna untuk memetakan atau mengubah item di dalam list menjadi objek
        //fungsi map ini membutuhkan satu buah parameter berupa fungsi atau lambda () {}
        //karena parameter children ini membutukan nilai berupa list widget,
        //maka kita perlu mengembalikan setiap item dari numberList menjadi widget yang
        //akan ditampilkan
        children:
            numberList.map(
              (number) {
                return Container(
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Center(
                    child: Text(
                      '$number',
                      style: const TextStyle(fontSize: 50),
                    ),
                  ),
                );
              },
            ).toList(), //mengembalikan fungsi map menjadi objek List dengan fungsi .toList()
      ),
    );
  }
}
