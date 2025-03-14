/*
//========================
//Contoh-1
import 'animal.dart';

void main() {
  //tanpa constructor
  var dicodingCat = Animal();

  //inisialisasi nilai objek
  dicodingCat.name = 'Elmo';
  dicodingCat.age = 2;
  dicodingCat.weight = 4.2;
}
//========================
*/

/*
//========================
//Contoh-2
import 'animal.dart';

void main() {
  //dengan constructor
  var dicodingCat = Animal('Elmo', 2, 4.2);
}

//========================
*/

/*
//========================
//Contoh-3
import 'animal.dart';

void main() {
  var dicodingCat = Animal('Elmo', 2, 4.2);
}

//========================
*/

//========================
//Contoh-4
import 'animal.dart';

void main() {
  var dicodingCat = Animal.cat('Loli', 4.2);
}

//========================
