//Extension Methods - extension - on
//versi 2.7 Dart
//-> supaya kita bisa membuat fungsionalitas tambahan dari library yang sudah ada

/*
  keyword :
  extension extensionName on <type> {
    //member definision
  }

  - ketika menggunakan library baik bawaan dart atau milik orang lain,
    ada kemungkinan library tersebut kurang lengkap sehingga perlu menambahkan beberapa fungsionalitas
  - namun akan jadi PR kita untuk mengubah library yang sudah ada
  - dengan extention method, dapat membuat fungsi atau method tambahan lalu menggunakanannya sesuai
    dengan kebutuhan aplikasi kita

  - Contoh variabel list integer :
    var unsortedNumbers = [2, 5, 3, 1, 4];
  
  - kita memiliki kebutuhan untuk mengurutkan nilai di dalam list tersebut namun List pada Dart
    tidak memiliki fungsi untuk mengurutkannya
  - Dart memiliki fungsi sort() namun bersifat mentransformasi list dan tidak mengembalikan nilai
  - selection sort algoritm
  - https://www.tutorialspoint.com/data_structures_algorithms/selection_sort_algorithm.htm

*/

//kita bisa membuat extension method dari objek list dengan sintak seperti ini
//membuat method untuk mengurutkan data di dalam list menggunakan selection sort algoritm
//lalu panggil method ini dari objek list
//===================================
//Contoh-1
//panggil method sort list dari objek list

//jika di berkas yang berbeda
//import 'extension.dart';

void main() {
  var unsortedNumbers = [2, 5, 3, 1, 4];
  print('unsort Number : $unsortedNumbers');

  var sortedNumbers = unsortedNumbers.sortAsc();
  print('sorted Number : $sortedNumbers'); //[1, 2, 3, 4, 5]
}

//method mengurutkan data
extension Sorting on List<int> {
  List<int> sortAsc() {
    var list = this;
    var length = this.length;

    for (int i = 0; i < length - 1; i++) {
      int min = i;
      for (int j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      int tmp = list[min];
      list[min] = list[i];
      list[i] = tmp;
    }

    return list;
  }
}
