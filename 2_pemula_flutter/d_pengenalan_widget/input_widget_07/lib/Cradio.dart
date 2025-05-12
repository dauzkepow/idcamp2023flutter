//Radio

/*
  - inputan yang digunakan untuk memilih salah satu dari beberapa pilihan 
    dalam suatu kelompok


*/

import 'package:flutter/material.dart';

class Cradio extends StatefulWidget {
  const Cradio({super.key});

  @override
  State<Cradio> createState() => _CradioState();
}

/*
class _CradioState extends State<Cradio> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh Input Radio')),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Radio<String>(
              value: 'Dart', //nilai yang disimpan variabel
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackBar();
                });
              },
            ),
            title: Text('Dart'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Kotlin',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackBar();
                });
              },
            ),
            title: Text('Kotlin'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Swift',
              groupValue: language,
              onChanged: (String? value) {
                setState(() {
                  language = value;
                  showSnackBar();
                });
              },
            ),
            title: Text('Swift'),
          ),
        ],
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$language selected'),
        duration: Duration(seconds: 1),
      ),
    );
  }
}
*/

//Contoh Radio dengan List
class _CradioState extends State<Cradio> {
  List<String> options = ['Apel', 'Jeruk', 'Pisang', 'Mangga'];
  String? buah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Radio dengan List')),
      body: Column(
        children:
            options.map((option) {
              return RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: buah,
                onChanged: (value) {
                  setState(() {
                    buah = value;
                    showSnackBar();
                  });
                },
              );
            }).toList(),
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$buah selected'), duration: Duration(seconds: 1)),
    );
  }
}


//sumber https://api.flutter.dev/flutter/material/Radio-class.html