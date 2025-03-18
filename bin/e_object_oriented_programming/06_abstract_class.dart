//Abstract Class - abstract
//-> Gambaran umum dari sebuah kelas

/*
  - keyword = abstract

  - tidak dapat direalisasikan dalam sebuah objek
  - modul sebelumnya sudah mempunyai kelas Animal
  - Secara harfiah hewan merupakan sebuah sifat (property)
  - kita tidak tahu bagaimana objek hewan tersebut
  - kita bisa melihat bentuk kucing, ikan, dan burung namun tidak untuk hewan
  - maka dari itu konsep abstract class perlu diterapkan 
    agar kelas Animal tidak dapat direalisasikan dalam bentuk objek
    namun tetap dapat menurunkan sifatnya (property dan method) kepada kelas turunannya
  - untuk menjadikan sebuah kelas menjadi abstract, 
    perlu menambah keyword = abstract sebelum penulisan kelas
  
  Contoh :
  abstract class Animal {
    String name;
    int age;
    double weight;

    // ...
  }


  - Dengan begitu kelas Animal tidak dapat diinisialisasikan menjadi sebuah objek
  Contoh :
  var dicodingCat = Animal('Elmo', 2, 4.2);  // Error: The class 'Animal' is abstract and can't be instantiated.


*/

//==========================
//Contoh-1

//abstract class Animal { //objek error jika class Animal menjadi abstract
class Animal {
  //property - sifat
  String name = '';
  int age = 0;
  double weight = 0;

  //constructor
  Animal(this.name, this.age, this.weight);

  //method - perilaku
  void eat() {
    print('$name is eating');
    weight = weight + 0.2;
  }

  void sleep() {
    print("$name is sleeping");
  }
}

void main() {
  var dicodingCat =
      Animal('Mika', 5, 6.5); //objek error jika class Animal menjadi abstract

  dicodingCat.eat();
  print(dicodingCat.weight);
}
