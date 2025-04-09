//Future dengan async-await
/*
  - Pada materi sebelumnya kita telah mempelajari Future untuk berurusan 
    dengan proses asynchronous
  - Seperti yang kita tahu penulisan kode asynchronous akan sedikit berbeda 
    dengan proses synchronous.
  - Contohnya program pesan kopi kita sebelumnya jika dituliskan secara asynchronous
    akan seperti berikut :
    02_future_dengan_async_await.jpeg

  - Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita
    bisa menuliskan proses asynchronous layaknya proses synchronous. Bagaimana caranya???
  - dengan gaya penulisan synchronous, kira-kira kode program pesan kopi kita akan seperti :
    
    void main() {
      print('Getting your order...');
      var order = getOrder();
      print('You order: $order');
    }
  
  - Namun ketika kode diatas dijalankan hasilnya tidak akan sesuai yang kita harapkan
    kerena fungsi getOrder() merupakan objek Future.

    Getting your order...
    You order: Instance of 'Future<String>'
  
  - Output ini disebabkan karena fungsi main() masih merupakan fungsi synchronous
    untuk mengubahnya menjadi fungsi asynchronous tambahkan keyword async sebelum function body
  
  void main() async { ... }

  - kemudian tambahkan keyword await sebelum fungsi yang mengembalikan nilai Future

  var order = await getOrder();

  - Dari perubahan diatas yang memanfaatkan async-await kita telah berhasil menuliskan proses
    asynchronous dengan gaya synchronous

*/

/*
//==========================================
//Contoh-1 - asynchronous dengan gaya synchronous tanpa async - await
void main() {
  print('Getting your order...');
  var order = getOrder();
  print('You order: $order');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffe Boba';
  });
}

///output
///Getting your order...
///You order: Instance of 'Future<String>'
///Output ini disebabkan karena fungsi main() masih merupakan fungsi synchronous
//==========================================
*/

/*
//==========================================
//Contoh-2 - dengan async - await

//untuk mengubahnya menjadi fungsi asynchronous tambahkan keyword async
//sebelum function body main
void main() async {
  print('Getting your order...');
  //tambahkan keyword await sebelum fungsi yang mengembalikan nilai Future
  var order = await getOrder();
  print('You order: $order');
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Coffe Boba';
  });
}

///output
///Getting your order...
///You order: Coffe Boba

//==========================================
*/

//==========================================
//Contoh-3 - async - await dengan error handling try-catch
//untuk menangani error

void main() async {
  print('Getting your order...');
  try {
    var order = await getOrder(); //uncompleted
    print('You order: $order'); //completed with data
  } catch (e) {
    print('Sorry.. $e'); //completed with error
  } finally {
    print('Thank you'); //when complete
  }
}

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    //return 'Coffe Boba';
    var isStockAvaiable = true;
    if (isStockAvaiable == true) {
      return 'Coffe Boba';
    } else {
      throw 'Out Stock is not enough!';
    }
  });
}

///output
///Getting your order...
///You order: Coffe Boba
///Thank you

//begitu juga method whenComplete() bisa digantikan dengan blok finally
//==========================================
