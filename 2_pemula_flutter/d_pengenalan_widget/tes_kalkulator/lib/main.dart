import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Kalkulator());
  }
}

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  double? a = 0;
  double? b = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Input Widget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan angka pertama',
                labelText: 'Your number 1',
              ),
              // Penting untuk menampilkan keyboard angka
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  //akan mencoba mengubah String menjadi double.
                  a = double.tryParse(value) ?? 0; //nilai disimpan di _name
                });
              },
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'Masukkan angka pertama',
                labelText: 'Your number 2',
              ),
              onChanged: (value) {
                setState(() {
                  //akan mencoba mengubah String menjadi double.
                  //jika memasukkan teks maka akan diganti 0
                  b = double.tryParse(value) ?? 0; //nilai disimpan di _name
                });
              },
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    //aksi yang dilakukan
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(content: Text('Hasil = ${a! + b!}'));
                      },
                    );
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //aksi yang dilakukan
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(content: Text('Hasil = ${a! - b!}'));
                      },
                    );
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //aksi yang dilakukan
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(content: Text('Hasil = ${a! * b!}'));
                      },
                    );
                  },
                  child: const Text('X'),
                ),
                ElevatedButton(
                  onPressed: () {
                    //aksi yang dilakukan
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(content: Text('Hasil = ${a! / b!}'));
                      },
                    );
                  },
                  child: const Text('/'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
