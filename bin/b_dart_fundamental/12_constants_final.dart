//Constants & Final
//Terkadang butuh menyimpan sebuah nilai yang tidak akan pernah berubah selama program berjalan
//Variabel telah membantu kita untuk menyimpan nilai dan bisa diakses dengan nama yang deskriptif

//Constants = untuk menyimpan nilai yang tidak akan berubah selama program berjalan.
//keywotd = const

/*
  const pi = 3.14;
  Type inference dari Dart otomatis mendeteksi tipe data dari const pi sebagai double
  bisa juga menentukan tipe data secara eksplisit
  const num pi = 3.14;

*/

/*
//===========================
//-- Contoh-1 - Hitung luas lingkaran const
const num pi = 3.14; //deklarasi di luar fungsi apapun

void main() {
  var radius = 7;
  print('Luas lingkaran radius $radius = ${calculateCircleArea(radius)}');
  //Luas lingkaran radius 7 = 153.86
  print('');
  print('========================');
  print('');
}

//fungsi calculateCircleArea dengan parameter radius
num calculateCircleArea(num radius) => pi * radius * radius; //pi diakses disini
//===========================
*/

//perbedaan const dan final
/*
  const = nilai harus sudah diketahui sebelum program dijalankan (compile-time constants)
          variabel yang tidak bisa dirubah selama program berjalan
          const pi = 3.14;

  final = nilainya masih bisa diinisialisasi ketika aplikasi berjalan (runtime)
          variabel yang tidak bisa berubah namun bisa dideklarasikan di waktu lain
          final double phi;
          phi = 3.14;
*/

//===========================
//-- Contoh-2 - final (immutable)
void main() {
  final firstName = "Daus";
  final lastName = "Kepow";

  //lastName = 'Bisma'; // tidak bisa dilakukan pengubahan nilai

  print('Hello $firstName $lastName'); //Hello Daus Kepow
}
//===========================

/*
masih bisa menerima input dan menyimpannya pada variabel firstName dan lastName
namun nilai variabel tersebut tidak bisa diubah setelah diinisialisasi

immutable variable = Variabel yang nilainya tidak bisa berubah
mutable variabel = variabel yang nilainya bisa dirubah

memungkinkan kita terhindar dari bug yuang tidak terduga karena terjadi perubahan nilai
jika yakin bahwa variabel Anda nilainya tetap, gunakanlah const atau final.

Jadi kapan kita harus menggunakan const dan kapan final?
const = compile-time constant memiliki performa yang lebih baik, memori lebih sedikit
final = melindungi variabel agar tidak berubah.

*/
