//================================
//Contoh-1
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

//================================
