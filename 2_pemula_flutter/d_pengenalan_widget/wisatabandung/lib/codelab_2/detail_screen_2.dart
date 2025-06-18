import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

//jika memiliki beberapa teks dengan style font yang sama dapat menggunakan variabel
//untuk menyimpan TextStyle
var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

/*
//============== batas satuan data ======================
class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //tambah gambar dari assets paling atas
            Image.asset('images/farm-house.jpg'),

            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: const Text(
                'Farm House Lembang',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  //fontFamily sesuai yang ditambahkan ke pubspec.yaml
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text('Open Everyday', style: informationTextStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8.0),
                      Text('09:00 - 20:00', style: informationTextStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0),
                      Text('Rp 25.000', style: informationTextStyle),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              ),
            ),

            //SizedBox yang memiliki parameter height
            SizedBox(
              height: 150, //tinggi images yang tampil
              //ListView agar menerapkan scrolling beberapa item (children)
              child: ListView(
                scrollDirection: Axis.horizontal, //scrolling horizontal
                children: <Widget>[
                  //Padding untuk memberi jarak gambar
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    //ClipRRect gambar sudut tidak bersiku
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      //gambar dari url
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
//============== batas satuan data ======================

//https://github.com/dicodingacademy/a159-flutter-pemula-labs/tree/main/wisatabandung/codelab-2

//============== dengan constructor ==============
//agar halaman detail bisa menampilkan informasi sesuai tempat wisata yang dipilih,
//perlu mengirimkan data TourismPlace melalui constructor

class DetailScreen extends StatelessWidget {
  //variabel property
  final TourismPlace place;

  //tambahkan constructornya
  //keyword required agar parameter place wajib disertakan ketika membuat objek DetailScreen
  //sesuaikan juga informasi yang ditampilkan dengan property yang didapat dari constructornya

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Widget Stack = untuk menyusun widget seperti column dan row
            //bedanya Stack disusun secara bertumpuk (stacked)
            Stack(
              children: <Widget>[
                //tambah gambar dari assets paling atas
                Image.asset(place.imageAsset),
                //SafeArea = widget akan berada di area yang aman
                SafeArea(
                  //Padding() = jarak antar widget
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    //Row() = list horizontal
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //CircleAvatar = ruang lingkaran
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                          //IconButton = tombol dengan icon
                          child: IconButton(
                            onPressed: () {
                              //Navigator.pop() = kembali ke halaman sebelumnya
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        //tampilkan tombol isFavorite sejajar dengan icon navigasi back
                        //dengan Row()
                        const FavoriteButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  //fontFamily sesuai yang ditambahkan ke pubspec.yaml
                  fontFamily: 'Staatliches',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const Icon(Icons.calendar_today),
                      const SizedBox(height: 8.0),
                      Text(place.openDays, style: informationTextStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.access_time),
                      const SizedBox(height: 8.0),
                      Text(place.openTime, style: informationTextStyle),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      const Icon(Icons.monetization_on),
                      const SizedBox(height: 8.0),
                      Text(place.ticketPrice, style: informationTextStyle),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                place.description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16.0, fontFamily: 'Oxygen'),
              ),
            ),

            SizedBox(
              height: 150, //tinggi images yang tampil
              //ListView agar menerapkan scrolling beberapa item (children)
              child: ListView(
                scrollDirection: Axis.horizontal, //scrolling horizontal
                children:
                    //menggunakan fungsi map() = mengubah objek menjadi list widget
                    place.imageUrls.map((url) {
                      //Padding untuk memberi jarak gambar
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        //ClipRRect gambar sudut tidak bersiku
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          //gambar dari url
                          child: Image.network(url),
                        ),
                      );
                    }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Tombol Favorit
//memberikan gambaran bagaimana mengubah state aplikasi
//dan bagaimana widget dapat tampil sesuai dengan state yang ada
//karena state berubah maka harus pakai StatefulWidget

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  //variabel bool isFavorite = state yang dapat berubah dan widget tampil sesuai state
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    //IconButton() = tombol icon
    return IconButton(
      //ubah icon yang ditampilkan sesuai kondisi state dengan ekspresi ternary
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      //state isFavorite akan berubah ketika di klik
      //panggil fungsi setState() untuk mengubah state
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}

//Ketikan icon favorit diklik dan fungsi setState() dipanggil, maka method build akan kembali
//dijalankan dan widget akan dibuat dan ditampilkan menurut state-nya
