//tiga model tampilan berdasarkan ukuran layar

import 'package:flutter/material.dart';

class Responsive_3_Tampilan extends StatelessWidget {
  const Responsive_3_Tampilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive 3 tampilan')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          //variabel ukuranLayar constraints.maxwidth
          double ukuranLayar = constraints.maxWidth;

          //ukuran layar dibawah 600 kebawah = mode ListView
          if (ukuranLayar < 600) {
            return ListView(children: _generateContainers());
            //ukuran layar 900 kebawah = GridView 2 kolom
          } else if (ukuranLayar < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
            //full ukuran layar GridView 6 kolom
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }
}

//buat list container jumlah 20
List<Widget> _generateContainers() {
  return List<Widget>.generate(20, (index) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: Colors.blueGrey,
      height: 200,
    );
  });
}
