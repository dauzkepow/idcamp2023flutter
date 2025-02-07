//Exception
//->Kondisi eror pada saat aplikasi berjalan (runtime)

//Ketika exception terjadi aplikasi akan dihentikan dan program setelahnya juga tidak akan dieksekusi.

//contoh prinsip matematika tidak bisa membagi bilangan dengan nol (0)
void main() {
  var a = 7;
  var b = 0;
  print(a ~/ b); //error

  /*
    Unhandled exception:
    IntegerDivisionByZeroException
    #0 int.~/ (dart:core-patch/integers.dart:24:7)
    #1 main (file:///home/glot/main.dart:4:11)
    #2 _startIsolate.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:305:32)
    #3 _RawReceivePortImpl._handleMessage (dart:isolate-patch/isolate_patch.dart:174:12)
  */

  //sebagai developer memastikan aplikasi tetap berjalan bagaimana pun kondisinya perlu cara untuk mengatasi exception
  //gunakan try dan catch
}
