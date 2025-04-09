/*

#1_Data Types

//untuk menghindari bug

# tipe data yang didukung oleh Dart antara lain:
int	      Integer (bilangan bulat)	                        5, -7, 0
double	  Bilangan desimal	                                3.14, 18.0, -12.12
num	      Bilangan bulat dan bilangan desimal	              5, 3.14, -99.00
bool	    Boolean	                                          true, false
String	  Teks yang terdiri dari 0 atau beberapa karakter	  ‘Dicoding’, ‘Y’, ‘’
List	    Daftar nilai	                                    [1, 2, 3], [‘a’, ‘b’, ‘c’]
Map	      Pasangan key-value	                              {“x”: 4, “y”: 10}
dynamic	  Tipe apa pun	

ketika kita mendeklarasikan variabel tanpa melakukan inisialisasi, variabel akan memiliki tipe dynamic.
Karena sebuah variabel bernilai dynamic bisa berisi tipe apa pun, maka tidak ada masalah jika kita mengubah nilai di dalamnya.
dynamic bisa berisi tipe apa pun

*/

/*
//contoh
void main() {
  //contoh-1
  var x; // dynamic
  x = 7;
  x = 'Dart is great';
  print(x); //Dart is great

  //contoh-2
  var y = 7; // int
  //y = 'Dart is great'; // Kesalahan assignment
  print(y);
}
*/

//#2_Menerima input pengguna
// menggunakan stdin.readLineSync()
// bagian dari library dart:io maka perlu diimport dulu
// import 'dart:io';

/*
Contoh aplikasi :
menerima input nama dan usia dari pengguna lalu menampilkan pesan

Start()
Output = Nama Anda :
Input = String name
Output = Usia Anda :
Input = int age
Output = Halo $name, usia Anda $age tahun
End()
*/

import 'dart:io';

void main() {
  stdout.write('Nama Anda : ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia Anda : ');
  int? age = int.tryParse(stdin.readLineSync()! ?? '') ?? 0;
  print('Halo $name, usia Anda $age tahun');
}

/*
print() stdout.write() sasma sama mencetak object ke konsole

print = mencetak baris baru
stdout.write = hanya menampilkan object saja
! input tidak akan bernilai null
?? jika gagal input nilai maka nilai default 0
int.tryParse() = konversi String menjadi int
input dari stdin.readLineSync() akan bertipe String
jika ingin menyimpan dan operasikan input dalam tipe data lain perlu melakukan konversi dulu

 */
