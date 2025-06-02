//ListView = widget untuk menampilkan beberapa item
//dalam bentuk baris atau kolom yang bisa di-scroll
//children

/*
  Scrollable Widgets
  - SingleChildScrollView + Column
  - ListView
    Default constructor
    ListView.builder
    ListView.separated = menampilkan widget setelahnya dipisahkan garis
    ListView.custom = jarang dipakai

  - GridView = bentuk 2D (Baris dan Kolom)
    Default constructor = jarang
    GridView.count = berapa kolom (potrait 2, landscape 4)
    Gridview.builder = item banyak
    Gridview.custom = jarang
    Gridview.extend = jarang

  - DraggableScrollableSheet
  ...

  - Jika menampilkan list dengan data jumlah besar dengan ListView
*/

import 'package:flutter/material.dart';
import 'package:listview_10/gridview_default.dart';
import 'package:listview_10/listview_builder.dart';
import 'package:listview_10/listview_default.dart';
import 'package:listview_10/listview_dinamis.dart';
import 'package:listview_10/listview_manual.dart';
import 'package:listview_10/listview_separeted.dart';
import 'package:listview_10/single_child_scroll_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView',
      theme: ThemeData(),
      //home: const Listview_Manual(), //listview_manual.dart
      //home: const Listview_Dinamis(), //listview_dinamis.dart
      //home: const ListView_Builder(), //listview_builder.dart
      //home: const ListView_Separeted(), //listview_separeted.dart
      //home: const Single_Child_Scroll_View(), //single_child_scroll_view.dart
      //home: const ListView_Default(), //listview_default.dart
      home: const GridView_Default(), //gridview_default.dart
    );
  }
}


//referensi =
//https://api.flutter.dev/flutter/widgets/ListView-class.html
//https://youtu.be/T-IvdKNZ0vg?si=LaFzTNQL4SNqoLE-