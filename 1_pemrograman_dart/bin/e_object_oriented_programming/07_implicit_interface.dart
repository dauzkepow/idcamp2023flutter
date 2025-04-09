//Implicit Interface - implements - @override

/*
  - keyword = implements

  - selain abscract class, cara lain yang bisa digunakan untuk menerapkan abstraksi dalam OOP adalah interface
  - merupakan set instruksi yang bisa diimplementasikan oleh objek
  - sebagai penghubung antara sesuatu yang abstrak dengan sesuatu yang nyata
  - bayangkan remote TV atau tombol yang ada di hp anda
    tombol-tombol ini bisa kita sebut sebagai inferface
    kita tidak perlu tahu dan peduli tentang bagaimana fungsi yang ada di dalamnya
  - Dart tidak memiliki keyword atau syntax untuk deklarasi interface seperti bahasa permograman OOP lainnya
  - setiap class dapat bertidak sebagai interface
  - di Dart disebut dengan implicit interface
  - bisa mengimplementasikan beberapa interface sekaligus pada satu class

  class ClassName implements InterfaceName


  - setelah kelas mengimplementasikan interface, 
    maka kelas tersebut wajib mengimplementasikan semua metode yang ada di dalam interface
  - Misalnya kita buat kelas baru bernama Flyable yang akan bertindak sebagai interface
  Contoh :
  class Flyable {
    void fly() {}
  }

  - kita dapat membiarkan body dari method fly() tetap kosong 
    karena fungsi implementasinya akan dilakukan oleh class
  - Selanjutnya buat class baru yang mengimplementasikan interface Flyable
  Contoh :
  class Bird extends Animal implements FLyable {
    String featherColor;

    Bird(String name, int age, double weight, this.featherColor) : super (name, age, weight);
    
  }

  - Anda akan mendapati error yang memberikan pesan "Missing concrete implementation of Flyable.fly"
    artinya kita harus mengimplementasikan fungsi fly pada interface Flyable
  - @override menunjukkan fungsi tersebut mengesampingkan fungsi yang ada di interface atau kelas induknya,
    lalu menggunakan fungsi yang ada dalam kelas itu sendiri sebagai gantinya
*/

//07_implicit_interface/animal.dart
//07_implicit_interface/flyable.dart
//07_implicit_interface/bird.dart
//07_implicit_interface/main.dart
