/*
  - Flexible
  - digunakan untuk mengatur ukuran widget di dalam Row atau Column secara flexible
  - Perbedaan Flexible dan Expanded adalah widget Flexible memungkinkan child widget-nya 
    berukuran lebih kecil dibandingkan ukuran ruang yang tersisa
  - Sementara child widget dari Expanded harus menempati ruang yang tersisa dari Column
    atau Row

 */

import 'package:flutter/material.dart';

class ExpandedFlexiblePage extends StatelessWidget {
  const ExpandedFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(children: const [ExpandedWidget(), FlexibleWidget()]),
            Row(children: const [ExpandedWidget(), ExpandedWidget()]),
            Row(children: const [FlexibleWidget(), FlexibleWidget()]),
            Row(children: const [FlexibleWidget(), ExpandedWidget()]),
          ],
        ),
      ),
    );
  }
}

//ExpandedWidget
class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
      ),
    );
  }
}

//FlexibleWidget
class FlexibleWidget extends StatelessWidget {
  const FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(color: Colors.teal, fontSize: 24),
          ),
        ),
      ),
    );
  }
}


//sumber = https://api.flutter.dev/flutter/widgets/Flexible-class.html