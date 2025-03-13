//Constructor
//-> untuk mengonstruksi objek baru
/*
  - Ketika suatu objek dibuat, semua properti pada kelas tersebut harus memiliki nilai
  - dapat langsung menginisialisasi pada properti tertentu atau melalui constructor
  - constructor = fungsi spesial dari sebuah class yang digunakan untuk membuat objek
  - Perbedaan constructor dan fungsi biasa :
    + constructor memiliki nama yang sama dengan nama class
    + constructor tidak memiliki nilai kembalian (return type)
    + constructor otomatis dipanggil ketika sebuah objek dibuat
    + jika tidak mendefinisikan constructor, default constructor tanpa argument dibuat

  - secara default sebuah constructor pada class tidak menerima argumen apapun
  Contoh :
    //class Animal dengan nilai default
    class Animal {
      String name = '';
      int age = 0;
      double weight = 0;
    }

  - untuk membuat objek baru dari kelas Animal, tidak perlu memberikan argumen apapun
    var dicodingCat = Animal();

  - karena tidak memasukkan nilai ketika membuat objek, 
    maka nilai default dari variabel property akan digunakan
  - perlu hati-hati jika tidak memberikan nilai pada property.
    karena akan membuat property bernilai null sehingga bisa menyebabkan error
 */

  //untuk memberikan nilai pada property, silakan akses property yang ada di dalam sebuah class
  //03_constructor/animal.dart
  //03_constructor/main.dart

/* 
  - Dengan membuat constructor, tidak hanya bisa menginisialisasi nilai 
    namun juga menjalankan instruksi tertentu ketika objek dibuat

  - Contoh :
    class Animal { //nama class
      //property variabel
      String name = '';
      int age = 0;
      double wight = 0;

      //constructor
      Animal(String name, int age, double weight) {
        this.name = name;
        this.age = age;
        this.weight = wight;
      }
    }

  - Keyword this menunjuk pada atribut yang ada di class tersebut.
  - this umumnya digunakan untuk menghindari ambiguitas antara 
    atribut dari class dan parameter yang memiliki nama yang sama
  - jika constructor hanya digunakan untuk menginisalisasi nilai property,
    maka kode constructor dapat diringkas menjadi berikut :

    Animal(this.name, this.age, this.weight);
*/

//--- Named Constructor ---
/*
  - beberapa kasus kita mungkin akan membutukan beberapa constructor untuk skenario yang berbeda-beda
  - pada situasi ini bisa memanfaatkan named constructor
  - named constructor dapat membuat beberapa constructor pada class yang sama
  - setiap constructor memiliki nama yang unik

  - Contoh :
    class_name.constructor_name (arguments) {
      //Statements
    }
*/
//buka kembali berkas 03_constructor/animal.dart
//lalu tambahkan name constructor


//--- Initializer List ---
/* 
  - terkadang kita ingin mendeklarasikan salah satu property class dengan nilai default
  - skenario tersebut dapat dilakukan denganmendeklarasikan property di dalam constructor body

  Contoh :
  class Animal {
  ...
  ...

    Animal.cat(this.name, this.weight) {
      //di dalam constructor body
      age = 2;
    }
  }

  - namun cara diatas kurang tepat, 
    karena variabel age seharusnya didefinisikan sebelum constructor body
  - kita bisa memanfaatkan initializer list dengan mendeklarasikan property class sebelum constructor body berjalan

  Contoh :
  class Animal {
  ...
  ...

    Animal.cat(this.name, this.weight) : age = 2 {
      //write your code here
    }
  }

  
*/

