//class sebagai library

/*
//-- Sebelum encapsulasi --
class Animal {
  String name = '';
  int age = 0;
  double weight = 0;

  Animal(this.name, this.age, this.weight);

  void eat() {
    print('$name is eating.');
    weight = weight + 0.2;
  }

  void sleep() {
    print('$name is sleeping.');
  }

  void poop() {
    print('$name is pooping.');
    weight = weight - 0.1;
  }
}
//property weight bisa diakses langsung
*/

//-- setelah ecapsulasi --
//_namaProperty
//set
//get

class Animal {
  String _name = '';
  int _age = 0;
  double _weight = 0;

  Animal(this._name, this._age, this._weight);

  //property variabel yang perlu diakses dari berkas lain gunakan setter getter
  //Setter
  set name(String value) {
    _name = value;
  }

  //Getter
  double get weight => _weight;
  int get age => _age;
  //String get name => _name;

  void eat() {
    print('$_name is eating.');
    _weight = _weight + 0.2;
  }

  void sleep() {
    print('$_name is sleeping.');
  }

  void poop() {
    print('$_name is pooping.');
    _weight = _weight - 0.1;
  }
}
