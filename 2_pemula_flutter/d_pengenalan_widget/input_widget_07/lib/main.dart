/*
  Input Widget
  - untuk interaksi dengan pengguna
  - input ini berkaitan dengan state yang dapat sering berubah
  - karena itu umumnya input widget akan ditempatkan di dalam StatefulWidget
*/

import 'package:flutter/material.dart';
import 'package:input_widget_07/Ccheckbox.dart';
import 'package:input_widget_07/Textfield/Controller.dart';
import 'package:input_widget_07/Textfield/OnChanged.dart';
import 'package:input_widget_07/Cradio.dart';
import 'package:input_widget_07/cSwitch.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: OnChanged(),
      //home: Controller(),
      home: Ccheckbox(),
      //home: Cradio(),
      //home: cSwitch(),
    );
  }
}
