import 'package:flutter/material.dart';
import 'package:navigation_12/second_screen.dart';

/*
//nagivasi kosongan biasa
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Pertama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SecondScreen(); //pindah ke screen dua
                },
              ),
            );
          },
          child: const Text('Pindah Screen'),
        ),
      ),
    );
  }
}
*/

//Mengirimkan data Antar Halaman
/*
  - terkadang perlu saling berinteraksi dan saling kirim data
  - bisa pakai constructor dari sebuah class untuk mengirimkan data antar halaman

*/

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  //data variabel
  final String message = 'Hello from First Screen!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Pertama')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondScreen(message), //data message
              ),
            );
          },
          child: const Text('Pindah Screen'),
        ),
      ),
    );
  }
}
