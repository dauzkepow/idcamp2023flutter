//Switch
/*
  - Inputan yang mengembalikan nilai boolean true atau false
  - Switch umumnya digunakan sebagai konfigurasi on/off pada halaman setting.

*/

import 'package:flutter/material.dart';

class cSwitch extends StatefulWidget {
  const cSwitch({super.key});

  @override
  State<cSwitch> createState() => _cSwitchState();
}

class _cSwitchState extends State<cSwitch> {
  bool lightOn = false; //Switch nilai awal berada pada posisi nonaktif

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contoh Switch')),
      body: Switch(
        value: lightOn,
        //nilai yang berubah dimasukkan ke setState()
        //value = nilai yang disimpan lightOn
        onChanged: (bool value) {
          setState(() {
            lightOn = value;
          });

          //tampilkan dalam snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(lightOn ? 'Light On' : 'Light OFF'),
              duration: Duration(seconds: 1),
            ),
          );
        },
      ),
    );
  }
}


//sumber = https://api.flutter.dev/flutter/material/Switch-class.html