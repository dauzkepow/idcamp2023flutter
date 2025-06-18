//List Daftar tempat wisata

import 'package:flutter/material.dart';
import 'package:wisatabandung/codelab_2/detail_screen_2.dart';
import 'package:wisatabandung/model/tourism_place.dart'; //import ke main_screen.dart

/*
//============== memunculkan satuan data ======================
class MainScreen extends StatelessWidget {
  //const MainScreen({super.key});
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wisata Bandung')),

      //Widget InkWell = agar bisa klik pindah halaman, parameter onTap() {},
      body: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return DetailScreen();
              },
            ),
          );
        },
        //Widget Card = tampilan seperti kartu dengan ujung membulat dan bayangan di belakang
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //pakai Expanded agar menyesuaikan ukuran layar
              Expanded(flex: 1, child: Image.asset('images/farm-house.jpg')),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Farm House Lembang',
                        style: const TextStyle(fontSize: 16.0),
                      ),
                      const SizedBox(height: 10),
                      Text('Lembang'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//============== batas satuan data ======================
*/

//============== dengan listview ambil data dari objek TourismPlace ======================
class MainScreen extends StatelessWidget {
  //const MainScreen({super.key});
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wisata Bandung')),

      //ListView untuk menampilkan beberapa data
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index]; //variabel

          //Widget InkWell = agar bisa klik pindah halaman, parameter onTap() {},
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    //tambahkan data place pada constructor
                    return DetailScreen(place: place);
                  },
                ),
              );
            },
            //Widget Card = tampilan seperti kartu dengan ujung membulat dan bayangan di belakang
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //pakai Expanded agar menyesuaikan ukuran layar
                  Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(height: 10),
                          Text(place.location),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}

//https://github.com/dicodingacademy/a159-flutter-pemula-labs/tree/main/wisatabandung/codelab-3

//callenge tambahkan Hero Animation
//https://www.dicoding.com/blog/menerapkan-animasi-pada-project-flutter/
