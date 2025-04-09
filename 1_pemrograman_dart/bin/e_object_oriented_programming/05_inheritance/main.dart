import 'cat.dart';

void main() {
  //objek
  var dicodingCat = Cat('Elmo', 2, 2.2, 'White');

  //method
  dicodingCat.walk(); //Elmo is walking

  //method eat() ambil dari class Induk Animal
  dicodingCat.eat(); //Elmo is eating

  print(dicodingCat.weight); //2.4000000000000004
}
