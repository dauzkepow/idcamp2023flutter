import 'animal.dart';

void main() {
  var dicodingCat = Animal('Elmo', 5, 4.2);

  dicodingCat.eat(); //Elmo is eating.
  dicodingCat.poop(); //Elmo is pooping.
  print(dicodingCat.weight); //4.300000000000001 (4.2 + 0.2 - 0.1)
}
