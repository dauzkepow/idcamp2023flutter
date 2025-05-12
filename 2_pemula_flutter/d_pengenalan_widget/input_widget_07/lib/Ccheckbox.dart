//Checkbox
//inputan benar atau salah
//berisi centang jika nilainya adalah benar dan kosong jika salah

import 'package:flutter/material.dart';

class Ccheckbox extends StatefulWidget {
  const Ccheckbox({super.key});

  @override
  State<Ccheckbox> createState() => _CcheckboxState();
}

class _CcheckboxState extends State<Ccheckbox> {
  bool agree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contoh Checbox')),
      body: ListTile(
        leading: Checkbox(
          value: agree,
          onChanged: (bool? value) {
            setState(() {
              agree = value!;
              showSnackBar();
            });
          },
        ),
        title: Text('Agree / Disagree'),
      ),
    );
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('$agree'), duration: Duration(seconds: 1)),
    );
  }
}


//sumber : https://api.flutter.dev/flutter/material/Checkbox-class.html