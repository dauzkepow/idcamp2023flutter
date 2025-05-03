//Scaffold
//-> widget untuk membuat tampilan dasar material design (halaman dasar, pondasi bangunan)
//MaterialApp = Tanah Kosong

/*
  - Scaffold memiliki 3 bagian :
    Merah = AppBar
    Hijau = Body
    Biru = FloatingActionButton
  
  keyword :
  class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

  - AppBar -> Header (bagian paling atas) aplikasi atau toolbar
  - umumnya terdapat judul dan ActionButton
  - Title pada Appbar tidak hanya spesifik Text saja, melainkan juga dapat
  - diisi dengan widget lainnya seperti TextField untuk kolom pencarian atau lainnya

  - Body -> bagian utama dari Scaffold dan banyak code di body ini

  - FloatingActionButton -> tombol bulat kanan bawah
    menampilkan sebuah tombol aksi
*/

//=============================================
//Contoh-Scaffold
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //MaterialApp(); = Tanah Kosong
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FirstScreen(), //panggil fungsi FirstScreen disini
    );
  }
}

class FirstScreen extends StatelessWidget {
  //const FirstScreen({super.key});
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'First Screen',
          style: TextStyle(color: Colors.white),
        ),
        //Icon search pada bagian kanan AppBar
        //action bisa menampung beberapa widget
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search, color: Colors.white),
          ),
        ],
        //drawer pada kiri AppBar
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu, color: Colors.white),
        ),
      ),
      //body
      body: const Center(child: Text('Hello World')),
      //floatingactionbutton
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}


//sumber 
//https://api.flutter.dev/flutter/material/Scaffold-class.html
//https://flutter.github.io/samples/#