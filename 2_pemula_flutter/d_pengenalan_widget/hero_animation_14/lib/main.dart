/*
Hero Animation
implementasi dua widget Hero dengan struktur sebagai berikut :
  - Hero widget sebagai start point = merepresentasikan grafis dan ditandai dengan tag 
    yang ditampilkan pada source code
  - Hero widget sebagai endpoint (destination) = sama seperti widget yang ditampilkan
    pada source route, yaitu widget yang merepresentasikan grafis dan memiliki tag yang 
    berada pada destination route
  - pembuatan route yang berisi tujuan akhir dari hero animation. Route ini berfungsi untuk
    menentukan widget yang ada di akhir animasi
  - Menjalankan animasi dengan memanggil destination route yang berada di dalam stack navigator
    Navigator akan melakukan operasi push dan pop untuk menjalankan hero animation dengan
    melakukan komparasi antara tag widget yang ada di source dan destination route
  
  https://www.dicoding.com/blog/menerapkan-animasi-pada-project-flutter/

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contoh Hero Animation',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

//HomeScreen
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Hero Animation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Hero() untuk animasi
            Hero(
              tag: 'logo', //tag harus sama
              child: Image.asset(
                'assets/dicoding.png',
                width: 150,
                height: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SecondScreen();
                      },
                    ),
                  );
                },
                child: Text('To another screen'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//SecondScreen()
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Hero() untuk animasi
            Hero(
              tag: 'logo', //tag harus sama
              child: Image.asset('assets/dicoding.png', width: 55, height: 55),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Kembali'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
 - Untuk menerapkan widget Hero(), perlu membungkus widget yang ingin dianimasikan di kedua
   layar (dalam hal ini Image.asset(...)) 
 - Tag Hero perlu diperhatikan
 - ketika error animasi tidak jalan dengan baik, cek kembali tag pada source dan destination
   route adalah sama
 - dalam satu source route tidak boleh dua atau lebih widget memiliki tag yang sama
 - kasus seperti ini akan ditemukan ketika ingin menerapkan Hero Animation pada ListView
 */