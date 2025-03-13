/*
//tanpa constructor
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;
}
*/

//class dengan constructor
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
