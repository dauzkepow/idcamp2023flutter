//Stream (aliran)
//-> urutan peristiwa asynchronous yang dapat kita dengarkan, tidak perlu mengecek pembaharuan
//   karena aliran memberi tahu Anda secara otomatis ketika ada update terbaru yang tersedia

/*
//==============================
//Contoh-1

import 'dart:math';

Stream<int> randomNumber() async* {
  final random = Random();

  for (var i = 0; i < 100; i++) {
    await Future.delayed(Duration(seconds: 3));
    yield random.nextInt(50) + 1;
  }
}
//==============================
*/

//==============================
//Contoh-2
import 'dart:async';

void main() async {
  final StreamController stc = StreamController();

  //membaca data yang lewat lalu didengarkan
  final StreamSubscription sub = stc.stream.listen((data) {
    print('Data: $data'); //tampilkan data
  });

  //cara memasukkan data ke Stream
  stc.sink.add('Hello Daus'); //Data: Hello Daus
  await Future.delayed(Duration(seconds: 3)); //delay 3 detik
  stc.sink.add('0986778999'); //Data: 0986778999
}


//==============================
//StreamController termasuk paket async