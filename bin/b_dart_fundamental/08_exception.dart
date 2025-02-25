//Exception - Error Handling, penanganan error
//->Kondisi eror pada saat aplikasi berjalan (runtime)

//Ketika exception terjadi aplikasi akan dihentikan dan program setelahnya juga tidak akan dieksekusi.

//contoh prinsip matematika tidak bisa membagi bilangan dengan nol (0)
void main() {
  /*
  var a = 7;
  var b = 0;
  print(a ~/ b); //error
  */

  /*
    Unhandled exception:
    IntegerDivisionByZeroException
    #0 int.~/ (dart:core-patch/integers.dart:24:7)
    #1 main (file:///home/glot/main.dart:4:11)
    #2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
    #3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)
  */

  //IntegerDivisionByZeroException - tidak bisa membagi bilangan angka 0
  //sebagai developer memastikan aplikasi tetap berjalan bagaimana pun kondisinya perlu cara untuk mengatasi exception
  //gunakan try dan catch

  print('======= on Exception ========');
  //perbaikan dengan try catch
  //pindahkan kode yang bisa menimbulkan exception ke blok try
  //try merupakan kode yang berpeluang menjadi exception perlu ditangani
  //gunakan on Exception untuk mengatasi ketika exception terjadi
  try {
    var a = 7;
    var b = 0;
    print(a ~/ b);
  } on Exception {
    print("Can not divided by zero!"); //Can not divided by zero!
  }

  print('======= Catch ========');

  //jika ada exception lain yang belum diketahui secara spesifik
  //gunakan catch setelah blok try
  //-- contoh
  try {
    var c = 8;
    var d = 0;
    print(c ~/ d);
  } catch (e) {
    print("Exception happened: $e");
    //Exception happened: IntegerDivisionByZeroException
    //e = object exception
  }

  print('=======Stack Trace ========');

  //bisa juga menambahkan stack trace (s)
  //bisa melihat detail exception dan di baris mana
  try {
    var e = 9;
    var f = 0;
    print(e ~/ f);
  } catch (e, s) {
    print(
      "Exception happened: $e",
    ); //Exception happened: IntegerDivisionByZeroException
    print("Stack trace: $s"); //Stack trace: #0
  }

  //Blok catch dapat digabungkan dengan on
  //Catch akan menangkap apabila tidak ada exception yang memenuhi blok on yang terpasang.
  /*
    try{
      //kode yang berpotensi error
    } on Exception {
      //isi error
    } catch (e, s) {
      //isi error
    } finally {
      //selalu dijalankan apapun yang terjadi
    }
  */

  print('======= Finally ========');
  //Finally
  //tetap dijalankan tanpa peduli apa pun hasil yang terjadi pada blok try-catch
  try {
    var x = 5;
    var y = 0;
    print(x ~/ y);
  } catch (e, s) {
    print(
      'Exception happened: $e',
    ); //Exception happened: IntegerDivisionByZeroException
    print('Stack trace: $s'); //Stack trace: #0
  } finally {
    print(
      "Baris ini akan selalu dieksekusi",
    ); //Baris ini akan selalu dieksekusi
  }
}
