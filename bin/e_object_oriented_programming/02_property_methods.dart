//Property & Method
/*
  - kita telah mempelajari variabel untuk menyimpan nilai
  - function untuk menuliskan set instruksi yang bisa digunakan kembali

  - Attribute, Property, Sifat, Ciri-ciri = variabel
  - Behaviour,Perilaku, method = fungsi
  
  - sama seperti variabel, deklarasi property di dalam class dengan menentukan tipe data
    atau menginisiasikan nilainya secara eksplisit
  
  class Animal {
    String _name = '';
    int _age = 0;
    double _weight = 0;
  }


  - oop memiliki konsep enkapsulasi dimana kita bisa menyembunyikan informasi di dalam objek
    sehingga status atau data di dalam objek tidak bisa dirubah atau bahkan dilihat
  - umumnya bahasa pemrograman memiliki visibility modifer untuk menentukan siapa saja yang bisa akses property dan method
    namun, dart tidak memiliki keyword visibility modifier seperti private atau public
  
  - Bagaimana cara mengaksesnya ???

  - Jadikan class sebagai library lalu panggil dengan keyword import
  - untuk membuat class sebagai library cukup membuat berkas baru. sehingga ada 2 berkas

*/

//contoh file 02_property_methods -> animal.dart dan main.dart
//library animal.dart
//library main.dart

/*
  - Property private hanya bisa diakses pada berkas atau library yang sama
    kita akan membutuhkan private property ini di saat kita tidak ingin objek diubah dari luar
    karena dart tidak memiliki modifier private,
    sebagai gantinya menggunakan underscore (_) sebelum nama property atau variabel

  Contoh :
    String _name = '';
    int _age = 0;
    double _weight = 0;
  
  - Setelah menambahkan underscore pada nama variabel atau property
    akan mendapatkan error di berkas main.dart ketika mengakses property weight
    Apa pasal??
    kini weight bersifat private dan tidak bisa diakses dari luar berkasnya.
    Solusinya menambahkan setter dan getter untuk mendapatkan nilai serta mengubahnya dari luar berkas

  Contoh :
    //Setter
    set name(String value) {
      _name = value;
    }

    //Getter
    double get weight => _weight;


  - Selain dengan setter, juga bisa mengubah nilai dengan property dari pemanggilan method
    pada contoh class Animal tentunya tidak bisa langsung mengubah nilai berat badan,
    namun kita bisa menambah dan mengubah nilainya melalui proses makan atau buang air besar (EEK)

  Contoh :
    void eat() {
      print('$_name is eating.');
      _weight = _weight + 0.2;
    }

    void poop() {
      print('$_name is pooping.');
      _weight = _weight - 0.1;
    }

*/

//Sehingga keseluruhan kode berkas atau library animal.dart menjadi seperti ini :

class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  //Setter
  set name(String value) {
    _name = value;
  }

  //Getter
  double get weight => _weight;
  int get age => _age;

  //Methods
  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
