import 'package:flutter/material.dart';
import 'package:wisatabandung/model/tourism_place.dart';

//jika memiliki beberapa teks dengan style font yang sama dapat menggunakan variabel
//untuk menyimpan TextStyle
var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

//============== dengan constructor ==============
//agar halaman detail bisa menampilkan informasi sesuai tempat wisata yang dipilih,
//perlu mengirimkan data TourismPlace melalui constructor

class DetailScreen extends StatelessWidget {
  final TourismPlace place;

  const DetailScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //bedakan tampilan berdasarkan ukuran layar
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(place: place);
        } else {
          return DetailMobilePage(place: place);
        }
      },
    );
  }
}

//DetailWebPage
//Sama halnya TextEditingController, ScrollController juga harus di-dispose
//ketika widget sudah tidak lagi digunakan
//Ubah DetailWebPage menjadi StatefulWidget supaya kita bisa memanggil method dispose.
class DetailWebPage extends StatefulWidget {
  final TourismPlace place;

  DetailWebPage({super.key, required this.place});

  @override
  State<DetailWebPage> createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  //inisialisasi objek scrollController
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Padding = jarak antara konten dengan pinggir halaman
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
        //Center = konten ditengah
        child: Center(
          //SizeBox = menentukan ukuran lebar maksimum dari konten yang tampil
          child: SizedBox(
            width: 1200, //ukuran lebar maksimum 1200 pixel
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wisata Bandung',
                  style: TextStyle(fontFamily: 'Staatliches', fontSize: 32),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.place.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          const SizedBox(height: 16),
                          //Scrollbar = agar bisa discroll dengan mouse pc
                          Scrollbar(
                            //tambahkan pada Scrollbar
                            controller: _scrollController,
                            //Container = memberikan tinggi pada ListView
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 16),
                              height: 150, //tinggi images yang tampil
                              //ListView agar menerapkan scrolling beberapa item (children)
                              child: ListView(
                                //tambahkan pada ListView
                                controller: _scrollController,
                                scrollDirection:
                                    Axis.horizontal, //scrolling horizontal
                                children:
                                    //menggunakan fungsi map() = mengubah objek menjadi list widget
                                    widget.place.imageUrls.map((url) {
                                      //Padding untuk memberi jarak gambar
                                      return Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        //ClipRRect gambar sudut tidak bersiku
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          //gambar dari url
                                          child: Image.network(url),
                                        ),
                                      );
                                    }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.place.name,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.calendar_today),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.place.openDays,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.access_time),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.place.openTime,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.monetization_on),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.place.ticketPrice,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 16.0,
                                ),
                                child: Text(
                                  widget.place.description,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //dispose ketika widget sudah tidak digunakan agar tidak boros RAM
  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

//DetailMobilePage()
class DetailMobilePage extends StatelessWidget {
  //variabel property
  final TourismPlace place;

  //tambahkan constructornya
  //keyword required agar parameter place wajib disertakan ketika membuat objek DetailScreen
  //sesuaikan juga informasi yang ditampilkan dengan property yang didapat dari constructornya

  const DetailMobilePage({Key? key, required this.place}) : super(key: key);

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



//Codelab-4 Selesai
//sekarang tampilan aplikasi Wisata Bandung sudah lebih sesuai dengan ukuran resolusi layar
//Sudah belajar banyak menyusun halaman menggunakan widget, hingga membuat halaman yang 
//dapat responsif terhadap perbedaan ukuran layar

//https://github.com/dicodingacademy/a159-flutter-pemula-labs/tree/main/wisatabandung/codelab-4