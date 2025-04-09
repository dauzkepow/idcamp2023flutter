//Apa itu Future
/*
  - keyword :
    Future<tipe_data> namaFungsi() {
      return ...
      ...
    }

  - untuk melakukan pemrograman secara asynchronous dengan Dart, kita menggunakan Future
  - Future adalah sebuah objek yang mewakili potensial atau kesalahan yang akan tersedia pada
    suatu waktu di masa mendatang.
  - Future ibarat sebuah kotak paket
  - Saat anda menerima paket tersebut, akan ada tiga kondisi yang mungkin terjadi
    1. paket masih tertutup (uncomplete)
    2. paket dibuka lalu berisi barang sesuai pesanan (completed with data)
    3. paket dibuka namun tidak sesuai (completed with error)
  - Penerima dari future dapat menentukan callbacks yang akan menangani 
    nilai atau kesalahan tersebut
  - perhatikan kode berikut
  void main() {
    print('Creating the future');
    print('main() done');
  }

  - tentunya sudah tahu urutan program dan apa yang akan ditampilkan pada konsol.
  - Lalu bagaimana jika perintah print yang pertama kita pindahkan ke objek future??
*/

/*
//============================
//Contoh-1
void main() {
  final myFuture = Future(() {
    print('Creating the future');
    return 12;
  });
  print('main() done');
}
///Output 
///main() done
///Creating the future
//============================
*/

/*
  - jika kode diatas dijalankan, seluruh fungsi main akan dieksekusi sebelum fungsi yang ada
    di dalam Future().
  - ini disebabkan karena future masih berstatus uncompleted, sehingga ketika program dijalankan
    konsol akan tampil seperti berikut :
    main() done
    Creating the future
  - bagaimana caranya kita membuat dan memanfaatkan future ini?

  - Uncompleted
    mari kita buat sebuah fungsi yang mengembalikan nilai Future
  
  Future<String> getOrder() {
    return Future.delayed(Duration(seconds:3), () {
      return 'Coffe Boba';
    });
  }

  - pada Future kita bisa menambahkan method delayed untuk menunda eksekusi kode di dalam Future.
  - Dimana parameter pertama berisi durasi penundaan dan parameter kedua adalah blok kode
    atau fungsi yang akan dijalankan.
  - Pada kasus ini kita menggunakan delayed untuk menunda waktu eksekusi seolah 
    kita sedang mengambil data dari internet.
  - Karena nilai yang dikembalikan pada Future berupa String, kita bisa secara eksplisit
    menentukan tipe parameter generic Future<String>.

  
  - Completed with Data
    setelah Future dijalankan, kita memerlukan handler untuk menangani status complete with data
    caranya gunakan method .then() dari objek Future
*/

/*
//============================
//Contoh-2
void main() {
  //completed with data
  getOrder().then((value) {
    print('Your ordered: $value');
  });
  print('Getting your order...');
}

//uncompleted
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffe Boba';
  });
}

///output
///Getting your order...
///Your ordered: Coffe Boba //muncul setelah 3 detik
//============================
*/

/*
  - Fungsi getOrder() akan dijalankan secara asynchronous hingga setelah 3 detik kode Future
    akan dijalankan dan mengembalikan nilai
   
  - Bagaimana jika objek Future menghasilkan kondisi completed with error?

  - Completed with Error
    kita dapat menambahkan method .catchError() setelah then.
    Sehingga ketika terjadi error atau exception di dalam Future, blok kode ini dijalankan
    Mari kita ubah sedikit kode di atas untuk mendukung skenario completed with error 
*/

/*
//============================
//Contoh-3
void main() {
  //.then() = completed with Data
  getOrder().then((value) {
    print('Your ordered: $value');
    //catchError() = completed with Error
  }).catchError((error) {
    print('Sorry. $error');
  });
  print('Getting your order...');
}

//uncompleted
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvaiable = false;
    if (isStockAvaiable == false) {
      return 'Coffe Boba';
    } else {
      throw 'Out Stock is not enough!';
    }
  });
}
///output
///Getting your order...
///Sorry. Out Stock is not enough!
//============================
*/

/*
  - Sampai disini harusnya Anda sudah paham dengan ketiga state yang ada pada Future serta
    bagaimana menuliskan kode untuk menanganinya. Seperti pada fungsi main() ada tiga blok
    kode yang mewakili state Future :
    1. Fungsi getOrder() yang berisi Future yang masih uncompleted
    2. Method .then() yang menangani kondisi completed with data
    3. Method .catchError() yang menangani kondisi complete with error

  - Ada satu method lagi yang bisa kita gunakan yaitu .whenCompleted().
    method ini akan dijalankan ketika suatu fungsi Future selesai dijalankan, tidak peduli
    apakah menghasilkan nilai atau error.
    ini seperti blok finally pada try-catch-finally
*/

//============================
//Contoh-4
void main() {
  //.then() = completed with Data
  getOrder().then((value) {
    print('Your ordered: $value');
    //catchError() = completed with Error
  }).catchError((error) {
    print('Sorry - $error');
    //whenComplete() = pesan setelah selesai menjalankan Future
  }).whenComplete(() {
    print('Thank You');
  });
  print('Getting your order...');
}

//uncompleted
Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvaiable = true;
    if (isStockAvaiable == false) {
      return 'Coffe Boba';
    } else {
      throw 'Out Stock is not enough!';
    }
  });
}

///Output
///Getting your order...
///Sorry - Out Stock is not enough!
///Thank You
//============================
