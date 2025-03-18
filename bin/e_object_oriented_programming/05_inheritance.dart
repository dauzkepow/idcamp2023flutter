//Inheritance - Pewarisan - extends
//-> kemampuan suatu program untuk membuat class baru dari class yang ada
/*
  class Parent{}
  class Child extends Parent{}

  - keyword = extends

  - beberapa objek bisa memiliki beberapa karakteristik, perilaku, method, fungsi yang sama
    namun mereka bukanlah objek yang sama
  - konsep :
    anak mewarisi sifat dari orang tuanya
  - dalam OOP class yang menurunkan sifat disebut kelas induk (parent class/ superclass)
  - kelas yang mewarisi kelas induknya disebut kelas anak (child class/subclass)
  - kembali ke contoh objek kucing
  - selain kucing hewan lain yang bersifat sama
  - misalnya ikan dan burung juga memiliki nama, berat, dan umur (property)
  - juga melakukan aktivias makan, tidur, dan BAB (eek) (method)
  - yang membedakan objek tersebut adalah cara mereka bernafas dan bergerak
  - Tabel
  Cat         Fish        Bird
  +name       +name       +name
  +weight     +weight     +weight
  +age        +age        +age
  +furColor   +skinColor  +featherColor
  --------------------------------------
  -eat()      -eat()      -eat()
  -sleep()    -sleep()    -sleep()
  -poop()     -poop()     -poop()
  -walk()     -swim()     -fly() 

  - bisa dilihat diatas objek Cat, Fish, Bird memiliki
    beberapa property dan method yang sama seperti name, weight, age, eat(), poop(), sleep()
  - dibandingkan membuat 3 kelas dan menuliskan ulang property yang sama,
    kita bisa memanfaatkan inheritance dengan mengelompokkan property dan fungsi yang sama
    caranya buat sebuah class baru yang nantinya akan diturunkan sifatnya

  class Animal
  //property
  +name
  +weight
  +age
  -----------------------
  //method
  -eat()
  -sleep()
  -poop()

  Cat         Fish        Bird
  +furColor   +skinColor  +featherColor
  -walk()     -swim()     -fly()

  - setelah membuat class Animal dapat membuat class lainnya lalu melakukan extends ke kelas induknya
    class ChildCLass extends ParentClass {
      //...
    }
  - dengan begitu kelas Cat mewarisi kelas Animal

05_inheritance/animal.dart
05_inheritance/cat.dart
05_inheritance/main.dart


//----------- Inheritance Constructor ----------------
  - Karena class Animal memiliki constructor untuk menginisialisasi property di dalamnya,
    maka semua class turunannya juga perlu mengimplementasikan constructor tersebut
  - ketika membuat class Cat tanpa mendefinisikan constructor kita akan mengalami error
  Pada class turunan :
  keyword :
  Cat(String name, int age, double weight) : super (name, age, wight);

  - super diatas akan diarahkan ke constructor dari kelas Animal
  - jika ingin menginisialisasikan nilai furColor melalui constructor , maka bisa menambahkan parameter di dalam constructor
  keyword :
  Cat(String name, int age, double weight, String furColor) : this.furColor = furColor, super(name, age, weight);

  atau bisa meringkasnya seperti materi constructor
  Cat(String name, int age, double weight, this.furColor) : super (name, age, wight);

*/
