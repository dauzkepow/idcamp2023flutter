import 'package:flutter/material.dart';

class C_image_network extends StatelessWidget {
  //const C_image_network({super.key});
  const C_image_network({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gambar dari Network')),
      body: Center(
        child: Image.network(
          'https://picsum.photos/200/300',
          width: 200,
          height: 200,
        ),
      ),
    );
  }
}

/*
  - Panggil method Image.network
  - dengan url 'https://picsum.photos/200/300',
  - width dan height masing masing 200
*/
