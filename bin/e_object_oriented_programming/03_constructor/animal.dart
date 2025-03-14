/*
//========================
//Contoh-1 - tanpa constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
}
//========================
*/

/*
//========================
//Contoh-2 - dengan constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  //deklarasi constructor
  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }
}
//========================
*/

/*
//========================
//Contoh-3 - constructor dengan named constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  //deklarasi constructor
  Animal(String name, int age, double weight) {
    this.name = name;
    this.age = age;
    this.weight = weight;
  }

  //atau dengan cara berikut
  //Animal(this.name, this.age, this.weight);

  //contoh deklarasi Named Constructor
  Animal.name(this.name);
  Animal.age(this.age);
  Animal.weight(this.weight);
}
//========================
*/

//========================
//Contoh-4 - Initializer list
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  //constructor
  Animal(this.name, this.age, this.weight);

  // Mendefinisikan properti kelas sebelum constructor body berjalan
  // named constructor = Animal.cat() {}
  Animal.cat(this.name, this.weight) : age = 2 {
    print("This cat named $name is $age years old, weight $weight KG");
    //This cat named Loli is 2 years old, weight 4.2 KG
  }
}
//========================
