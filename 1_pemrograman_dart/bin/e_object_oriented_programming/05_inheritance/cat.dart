import 'animal.dart';

class Cat extends Animal {
  //property
  final String furColor;

  //Inheritance Constructor ikut turunan dari Animal (name, age, weight)
  Cat(String name, int age, double weight, String furColor)
      : this.furColor = furColor,
        super(name, age, weight);

  //atau
  //Cat(String name, int age, double weight, this.furColor) : super(name, age, weight);

  //method
  void walk() {
    print('$name is walking');
  }
}

//karena class Cat turunan dari class Animal,
//maka kita bisa mengakses sifat(property) dan perilaku(method)
//dari Animal melalui class Cat
