//Class
//-> Blueprint untuk sebuah objek

/*
  - didalam class bisa mendefinisikan sifat, ciri-ciri (attribute) dan perilaku (behaviour) dari objek yang akan dibuat
  Contoh :
  Class Animal
  atribut :
   - nama
   - berat
   - umur
  perilaku :
   - makan
   - tidur
   - eek

  Setiap class memiliki attribute dan behaviour
  Attribute, Property, Sifat, Ciri-ciri = variabel
  Behaviour,Perilaku, method = fungsi

  Animal
  + String name
  + int age
  + double weight

  - eat()
  - sleep()
  - poop()

  --- cara penulisan (keyword) class ---
  class Nama_Class {
    //variabel
    //function
  }

*/

//--- Objek dari suatu class ---
/*
  var object_name = class_name(property1, property2);

  - sebuah objek sama seperti variabel
  - menggunakan var untuk menginisialisasikan sebuah objek
  - objek yang disimpan ke dalam variabel ini juga dikenal dengan instance atau instance of a class
  - instance ini menyimpan alamat memori dari objek (reference)
  - proses membuat variabel instance seperti diatas disebut instansiasi (instantiation)

  var dicodingCat = Animal('Gray', 2, 4.2);

  - menggunakan nama class serta diikuti dengan tanda kurung ()
  - di dalam tanda kurung kita bisa memasukkan parameter untuk menginisialisasi nilai di dalam objek
  - tanda kurung ini merupakan sebuah constructor
  - setelah objek terbuat kita bisa menjalankan fungsi atau menampilkan nilai dari property yang ada di dalamnya
*/

//===============================
//Contoh-1
void main() {
  //objek dicodingCat
  //urutan sesuai konstruktor
  var dicodingCat = Animal('Gray', 2, 4.2);

  //cara panggil nilai dalam class Animal()
  dicodingCat.eat(); //Gray is eating.
  dicodingCat.poop(); //Gray is pooping.
  print('age is : ${dicodingCat.age}'); //age is : 2
  print(dicodingCat.weight); //4.300000000000001 (4.2 + 0.2 - 0.1)
}

//class Animal
class Animal {
  //variabel
  String name;
  int age;
  double weight;

  //konstruktor
  Animal(this.name, this.age, this.weight);

  //fungsi
  void eat() {
    print("$name is eating");
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping');
  }

  void poop() {
    print('$name is pooping');
    weight = weight - 0.1;
  }
}

//===============================
