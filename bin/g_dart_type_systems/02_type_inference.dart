//Type Inference - var
/*
  - keyword :
  var namaVariabel = nilai;


  - dart memiliki analyzer yang dapat menentukan menyimpulkan tipe untuk field, method, 
    variabel lokal dan beberapa tipe argumen generic
  - ketika analyzer tidak memiliki informasi yang cukup untuk menyimpulkan tipe tertentu,
    maka tipe dynamic akan digunakan
  - misalnya berikut ini adalah contoh penulisan variabel map dengan tipe yang eksplisit :

  Map<String, dynamic> company = {'name' : 'Dicoding', 'yearsFounded' : 2015};

  - atau, Anda dapat menggunakan var dan Dart akan menentukan tipenya :

  var company = {'name': 'Dicoding', 'yearsFounded': 2015}; // Map<String, Object>

  - type inference menentukan tipe dari entri kemudian menentukan tipe dari variabelnya.
  - Pada contoh di atas, kedua key dari map adalah String, namun nilainya memiliki
    tipe yang berbeda yaitu String dan int dimana keduanya merupakan turunan dari Object
  - Sehingga variabel company akan memiliki tipe Map<String, Object>.

  - Saat menetapkan nilai objek ke dalam objek lain, kita bisa mengganti tipenya dengan 
    tipe yang berbeda tergantung pada apakah objek tersebut adalah consumer atau producer.
  - Perhatikan assignment berikut :

  Fish fish = Fish();

  - Fish fish adalah consumer dan Fish() adalah producer
  - Pada posisi consumer, aman untuk mengganti consumer bertipe spesifik dengan tipe lebih umum
  - Jadi aman untuk mengganti Fish fish dengan Animal fish karena Animal adalah supertype dari Fish
  
  Animal fish = Fish();

  - Namun mengganti Fish fish dengan Shark fish melanggar type safety karena bisa saja
    Fish memiliki subtype lain dengan perilaku berbeda, misalnya FlyingFish

  Shark fish = Fish(); //Error

  - Pada posisi producer, aman untuk mengganti tipe yang umum (supertype, Animal() ) 
    dengan tipe yang lebih spesifik (subtype, Shark())
*/

//======================================
//Contoh-1
void main() {
  Fish fish = Shark();
  Shark ikan = Shark();
}

class Animal {}

///Bird
class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}

///Fish
class Fish implements Animal {}

class Shark implements Fish {}

class FlyingFish implements Fish {}
