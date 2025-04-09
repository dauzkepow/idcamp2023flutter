import 'bird.dart';

void main() {
  var dicodingBird = Bird('Boby', 2, 0.8, 'Brown');

  dicodingBird.fly(); //Boby is flying - ambil dari class Bird
  dicodingBird.eat(); //Boby is eating. - ambil dari class Animal

  print('weight = ${dicodingBird.weight}');
}
