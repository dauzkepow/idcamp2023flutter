/*
  - Button = widget yang dapat menerima trigger sentuhan atau dapat melakukan sesuatu ketika
    ketika disentuh
    
  - ElevateButton memiliki 2 parameter :
    OnPressed = function event ketika tombol ditekan dan sebenarnya ada event lain
                seperti onLongPress dan onHighlightChanged
    child = diisi oleh widget lain pada umumnya
    https://api.flutter.dev/flutter/material/ElevatedButton-class.html

  - TextButton = widget button yang memiliki tampilan polos selayaknya text
                 umumnya digunakan pada toolbars, dialog, bersama komponen button lain
    https://api.flutter.dev/flutter/material/TextButton-class.html

  - OutlinedButton = TextButton dengan tambahan outline, umumnya digunakan untuk tombol 
                     atau aksi yang penting tetapi bukan aksi utama dalam aplikasi
    https://api.flutter.dev/flutter/material/OutlinedButton-class.html

  - IconButton = widget button dengan icon, tidak memiliki child
    https://api.flutter.dev/flutter/material/IconButton-class.html

  - DropdownButton = saat diklik muncul pop-up daftar beberapa item yang dapat dipilih
    https://api.flutter.dev/flutter/material/DropdownButton-class.html

*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

/*
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                //Elevate Button
                ElevatedButton(
                  onPressed: () {
                    //aksi ketika diklik
                  },
                  child: const Text('Elevate Button'),
                ),

                //TextButton
                TextButton(
                  onPressed: () {
                    //aksi ketika diklik
                  },
                  child: const Text('Text Button'),
                ),

                //OutlinedButton
                OutlinedButton(
                  onPressed: () {
                    //aksi ketika diklik
                  },
                  child: const Text('Outlined Button'),
                ),

                //IconButton
                IconButton(
                  onPressed: () {
                    //aksi ketika diklik
                  },
                  icon: const Icon(Icons.volume_up),
                  tooltip: 'Increase volume by 10',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

//DropdownButton
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: DropdownApp(), //dropdown manual
      home: DropdownListApp(), //dropdown dengan List<String>
    );
  }
}

class DropdownApp extends StatefulWidget {
  //const DropdownApp({super.key});
  const DropdownApp({Key? key}) : super(key: key);

  @override
  State<DropdownApp> createState() => _DropdownAppState();
}

class _DropdownAppState extends State<DropdownApp> {
  String? language;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropdownButton Manual')),
      body: DropdownButton<String>(
        items: const <DropdownMenuItem<String>>[
          DropdownMenuItem<String>(value: 'Dart', child: Text('Dart')),
          DropdownMenuItem<String>(value: 'Kotlin', child: Text('Kotlin')),
          DropdownMenuItem<String>(value: 'Swift', child: Text('Swift')),
        ],

        value: language,
        hint: const Text('Select Language'),
        onChanged: (String? value) {
          setState(() {
            language = value;
          });
        },
      ),
    );
  }
}

/*
  - DropdownButton tidak menggunakan child maupun children akan tetapi menggunakan items
    dimana berisi list dari widget DropdownMenuItem
  - Pada widget DropdownMenuItem terdapat child untuk tiap itemnya dan value yang ada pada
    DropdownMenuItem adalah nilai dari variabel tiap itemnya
    child = nilai yang tampil
    value = nilai yang disimpan sebagai variabel
  - Nantinya akan dibutuhkan parameter onChanged ketika ada perubahan atau ketika memilih
    salah satu dari item tersebut dan mengubah nilai language atau value dari DropdownButton
  - Sedangkan hint berfungsi ketika nilai value dari DropdownButton null atau kosong

*/

//DropdownButton dengan List<String>
class DropdownListApp extends StatefulWidget {
  const DropdownListApp({super.key});

  @override
  State<DropdownListApp> createState() => _DropdownListAppState();
}

class _DropdownListAppState extends State<DropdownListApp> {
  // List data yang akan digunakan dalam dropdown
  final List<String> _items = ['Apel', 'Jeruk', 'Mangga', 'Pisang'];

  // Menyimpan Nilai yang dipilih
  String? _selectedItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dropdown dengan List<String>')),
      body: DropdownButton(
        hint: Text('Pilih Buah'),
        value: _selectedItem, //simpan nilai yang terpilih ke value
        onChanged: (String? newValue) {
          setState(() {
            _selectedItem = newValue;
          });
        },
        items:
            _items.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(child: Text(value), value: value);
            }).toList(),
      ),
    );
  }
}
