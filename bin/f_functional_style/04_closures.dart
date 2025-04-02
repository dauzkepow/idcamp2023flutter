//Closures
//-> suatu fungsi dapat dibuat dalam lingkup global atau di dalam fungsi lain
//-> kemampuan function atau anonymous function berinteraksi dengan data-data disekitarnya
//-> fungsi yang bisa merubah nilai variabel dalam satu scope

/*
  - suatu fungsi dapat mengakses variabel di dalam lexical scope-nya
  - Lexical scope berarti bahwa pada sebuah fungsi bersarang (nested function).
    fungsi yang berada di dalam memiliki akses ke variabel di lingkup induknya
*/

/*
//==================================
//Contoh-1
void main() {
  var ClosureExample = calculate(2);
  ClosureExample(); //Value is 3
  ClosureExample(); //Value is 4
}

Function calculate(base) {
  var count = 1;
  return () => print('Value is ${base + count++}');
}
//==================================
*/

/*
  - di dalam fungsi calculate() terdapat variabel count dan mengembalikan nilai berupa fungsi
  - fungsi lambda di dalamnya memiliki akses ke variabel count karena berada pada lingkup yang sama
  - karena variabel count berada pada scope calculate, maka umumnya variabel tersebut akan hilang
    atau dihapus ketika fungsinya selesai dijalankan
  - Namun pada kasus diatas fungsi lambda atau closureExample masih memiliki referensi atau
    akses ke variabel count sehingga bisa dirubah
  - Variabel pada mekanisme diatas telah tertutup (closed covered) 
    yang berarti variabel tersebut berada di dalam closure


*/

//scope = lingkup, bagian

//==================================
//Contoh-2 - dari PZM

void main() {
  var counter = 0;

  //fungsi increment mengubah data variabel counter karena masih satu scope
  void increment() {
    print('Increment');
    counter++;
  }

  print(counter); //0
  increment(); //Increment
  increment(); //Increment
  print(counter); //hasil berubah = 2
}
//==================================
