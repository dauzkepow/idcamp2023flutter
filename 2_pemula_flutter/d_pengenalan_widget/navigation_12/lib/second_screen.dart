import 'package:flutter/material.dart';

/*
//navigasi kosongan biasa
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            Navigator.pop(context); //kembali ke screen sebelumnya
          },
          child: const Text('Kembali'),
        ),
      ),
    );
  }
}
*/

//Dengan menampilkan Data
class SecondScreen extends StatelessWidget {
  //buat variabel sama seperti di screen pertama yang akan
  //ditampilkan di screen kedua
  final String message;

  //masukkan ke constructor untuk menampung datanya
  const SecondScreen(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Kedua')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message), //ditampilkan datanya
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}
