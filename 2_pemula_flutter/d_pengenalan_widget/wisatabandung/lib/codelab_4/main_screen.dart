import 'package:flutter/material.dart';
import 'package:wisatabandung/codelab_4/detail_screen.dart';
import 'package:wisatabandung/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //untuk memudahkan ukuran layout, tampilkan lebar layar pada Text AppBar
        //lebar diatas 600 sudah banyak ruang kosong lebih baik ditempati widget lain
        //lebar 600 batas breakpoint ukuran mobile
        //lebar diatas 600 buat tampilan berbeda dengan grid
        title: Text(
          //'Wisata Bandung, Size: ${MediaQuery.of(context).size.width}',
          'Wisata Bandung',
        ),
      ),
      //body untuk menampilkan TourismPlaceList() atau TourismPlaceGrid()
      //menggunakan widget LayoutBuilder() untuk mendapatkan ukuran layar
      //body: TourismPlaceList(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          //lebar layar kurang dari sama dengan 600 = ListView()
          //lebar 600 sampai 1200 = GridView(gridCount: 4)
          //lebar => 1200 = GridView(gridCount: 6)

          if (constraints.maxWidth <= 600) {
            return TourismPlaceList();
          } else if (constraints.maxWidth <= 1200) {
            return TourismPlaceGrid(gridCount: 4); //constructor gridCount: 4
          } else {
            return TourismPlaceGrid(gridCount: 6); //constructor gridCount: 4
          }
        },
      ),
    );
  }
}

//Tampilan ListView
class TourismPlaceList extends StatelessWidget {
  const TourismPlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return DetailScreen(place: place);
                },
              ),
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
    );
  }
}

//Tampilan GridView
class TourismPlaceGrid extends StatelessWidget {
  final int gridCount; //variabel

  //masukkan ke constructor
  const TourismPlaceGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: GridView.count(
        crossAxisCount: gridCount, //tampilkan parameter gridCount
        crossAxisSpacing: 16, //atur jarak samping
        mainAxisSpacing: 16, //atur jarak atas bawah
        children:
            tourismPlaceList.map((place) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailScreen(place: place);
                      },
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.asset(place.imageAsset, fit: BoxFit.cover),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          place.name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                        child: Text(place.location),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
