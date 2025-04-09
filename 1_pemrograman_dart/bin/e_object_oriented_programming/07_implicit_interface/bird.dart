import 'animal.dart';
import 'flyable.dart';

class Bird extends Animal implements Flyable {
  String featherColor;

  Bird(String name, int age, double weight, this.featherColor)
      : super(name, age, weight);

  //harus wajib mengimplementasi fungsi fly() yang terdapat pada interface Flyable.
  //karena class Bird meng-implements dan meng-import class Flyable
  @override
  void fly() {
    print('$name is flying');
  }
}

/*
  - @override menunjukkan fungsi tersebut mengesampingkan fungsi yang ada di interface atau kelas induknya,
    lalu menggunakan fungsi yang ada dalam kelas itu sendiri sebagai gantinya
*/
