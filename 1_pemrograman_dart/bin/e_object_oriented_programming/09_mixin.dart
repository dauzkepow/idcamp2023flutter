//Mixin - mixin - with
//-> cara menggunakan kembali kode class dalam banyak hirarki class
//.> menambah fungsionalitas dari satu kelas ke kelas lain tanpa harus menggunakan pewarisan
//-> memungkinkan sebuah kelas untuk mengakses property dan method dari kelas lain tanpa menjadi child class

/*
  - keyword = mixin
  gambar 09_mixin.jpeg

  - kita memiliki supperclass Animal dengan tiga subclass
  - dibawahnya ada beberapa kelas turunan yang memiliki perilaku (method) berbeda-beda
  - beberapa hewan memiliki perilaku yang sama, seperti cat dan duck sama-sama bisa berjalan
  - kita bisa membuat kelas Walkable, Swimable, dan Flyable
  - Sayangnya dart tidak mendukung multiple inheritance, 
    sehingga sebuah kelas hanya bisa mewarisi satu kelas induk saja
  - Kita bisa membuat interface lalu mengimplementasikannya ke kelas Cat atau Duck
    Namun, implementasi interface mengharuskan kita untuk meng-override method
    dan membuat implementasi fungsi di masing-masing kelas

    Contoh :
    mixin Flyable {
      void fly() {
        print("i'm flying");
      }
    }

    mixin Walkable {
      void walk() {
        print("i'm walking");
      }
    }

    mixin Swimable {
      void swim() {
        print("i'm swimming");
      }
    }

  - kelas mixin dapat didefinisikan dengan keyword class seperti kelas pada umumnya
  - Jika tidak ingin kelasnya bertindak seperti kelas biasa
    misal seperti bisa diinstansiasi menjadi objek, gunakan saja keyword mixin
  - Setelah membuat class seperti diatas kita bisa menambahkan sebagai mixin 
    dengan keyword with dan diikuti dengan satu atau beberapa kelas mixin

  Contoh :
  class Cat extends Mammal with Walkable {}

  class Duck extends Bird with Walkable, Flyable, Swimmable {}

  - dengan mixin memungkinkan objek cat untuk memanggil metode walk().
  - Sementara objek duck bisa memanggil metode walk(), fly(), swim()

  Contoh :
  void main() {
    var donald = Duck();
    var garfield = Cat();

    garfield.walk(); //i'm walking

    donal.walk(); //i'm walking
    donal.swim(); //i'm swimming
  }

  - jika diperhatikan mixin ini memang mirip dengan multiple inheritance
  - Namun, class mixin ini tidak termasuk ke dalam hirarki parent-child atau inheritance
  - mixin memungkinkan kita terhindar dari masalah yang sering terjadi 
    pada multiple inheritance yang dikenal dengan diamond problem,
    yaitu dua parent class yang memiliki method dengan nama yang sama 
    sehingga child class-nya ambigu dalam menjalankan method yang sama

  - sebagai contoh kita punya kelas bernama Performer
    Contoh :
    abstract class Performer {
      void perform();
    }

  - lalu kita punya kelas turunan dari Performer
    Contoh :
    class Dancer extends Performer {
      @override
      void perform() {
        print('Dancing');
      }
    }

   class Singer extends Performer {
      @override
      void perform() {
        print('Singing');
      }
   }

  - kita asumsikan Dart memiliki dukungan terhadap multiple ingeritance sehingga kita punya 1 kelas lagi
  Contoh :
  class Musician extends Dancer, Singer {
    void showTime() {
      perform();
    }
  } 

  - kira kira method perform() mana yang dijalankan?
  - Dart bisa menghindari situasi seperti itu dengan mixin


  - ketika mancampur (mixing) kelas, kelas yang digunakan sebagai mixin tidak paralel
    namun saling bertumpuk
  - itulah mengapa kelas atau method pada mixin tidak ambigu satu sama lain
  - urutan menjadi hal yang terpenting dalam menerapkan mixin
  - misal kita telah menerapkan mixin pada kelas Musician
  - lalu buat objek yang akan menjalankan method perform()

 */

//================================
//Contoh-1 - mixin
void main() {
  var arielNoah = Musician();
  arielNoah.perform(); //Singing
}

//Umum
abstract class Performer {
  void perform();
}

//Spesifik
mixin Dancer implements Performer {
  @override
  void perform() {
    print('Dancing');
  }
}

//Spesifik
mixin Singer implements Performer {
  @override
  void perform() {
    print('Singing');
  }
}

//Pewarisan dari Performer dan panggil class mixin dengan with
class Musician extends Performer with Dancer, Singer {
  void showTime() {
    perform();
  }
}


//=======================

/*
  - seperti yang dijelaskan kelas mixin bersifat stack atau bertumpuk
  - kelas kelas ini berurutan dari yang paling umum hingga spesifik
  - sehingga sesuai urutan mixin di atas kelas Musician akan menampilkan method dari Singer
    karena berada di urutan terkahir atau paling spesifik
    - Performer
    - Dancer
    - Singer
    - Musician


*/