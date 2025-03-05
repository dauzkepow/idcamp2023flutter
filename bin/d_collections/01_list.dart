//List
//-> menampung banyak data dalam satu objek

/*
  dalam kehidupan sehari hari list untuk menyimpan daftar belanja, nomor telpon, dll
  bisa menyimpan bermacam-macam tipe data (String, number dan boolean)

  syntak keyword :
  List<tipe_data> namaList = [data, data, data, data];

  List<int> numberList = [1,2,3,4,5];

  - contoh diatas objek list berisi kumpulan data integer
  - karena kompiler bisa tahu tipe data yang ada dalam list, maka tidak perlu menulis secara eksplisit

  var numberList = [1,2,3,4,5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];

  - definisikan tipe data bisa dimasukkan ke dalam list di dalam tanda kurung siku []
  - jika tidak didefinisikan nilai secara eksplisit ke dalam list,
    maka list akan menyimpan tipe dynamic atau semua tipe data
*/

//==================================
//Contoh-1
void main() {
  List dynamicList = [1, 'Dicoding', true];
  List<String> a = ['a', 'b', 'c'];
  List<int> numberList = [1, 2, 3, 4, 5];

  print(dynamicList.runtimeType); //List<dynamic>
  print(a.runtimeType); //List<String>
  print(numberList.runtimeType); //List<int>
}
//==================================