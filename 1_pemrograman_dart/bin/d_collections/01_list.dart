//List = []
//-> menampung banyak data dalam satu objek

/*
  dalam kehidupan sehari hari list untuk menyimpan daftar belanja, nomor telpon, dll
  bisa menyimpan bermacam-macam tipe data (String, number dan boolean)

  syntak keyword :
  List<tipe_data> namaList = [data, data, data, data];

  List<int> numberList = [1,2,3,4,5]; //data sesuai tipe data Listnya
  List<dynamic> namaList = [data, data, data, data]; //kumpulan nilai campuran tipe data

  - contoh diatas objek list berisi kumpulan data integer
  - karena kompiler bisa tahu tipe data yang ada dalam list, maka tidak perlu menulis secara eksplisit

  var numberList = [1,2,3,4,5];
  var stringList = ['Hello', 'Dicoding', 'Dart'];

  - definisikan tipe data bisa dimasukkan ke dalam list di dalam tanda kurung siku []
  - jika tidak didefinisikan nilai secara eksplisit ke dalam list,
    maka list akan menyimpan tipe dynamic atau semua tipe data
*/

/*
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
*/

//ketika bermain dengan List, ada saat dimana kita ingin mengakses posisi tertentu dari List
//menggunakan fungsi indexing seperti berikut :

/*
//==================================
//Contoh-2
void main() {
  List dynamicList = [1, 'Dicoding', true];
  print(dynamicList); //[1, Dicoding, true]
  print(dynamicList[1]); //Dicoding
  print(dynamicList[3]); //error Unhandled exception:
}

/*
  fungsi indexing = []
  dalam sebuah List index dimulai dari 0
  [1, Dicoding, true]
  index 0 = 1
  index 1 = Dicoding
  index 2 = true


ketika menampilkan item dari List yang diluar ukuran List tersebut
misal print(dynamicList[3]);
Hasilnya error 

Unhandled exception:
RangeError (length): Invalid value: Not in inclusive range 0..2: 3
*/
//==================================
*/

//-- Untuk menampilkan seluruh item dari list bisa dengan looping --
/*
//==================================
//Contoh-3
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];
  for (var i = 0; i < stringList.length; i++) {
    print(stringList[i]);
  }
}
///Output
///Hello
///Dicoding
///Dart

//memanfaatkan perulangan sebanyak jumlah data dalam List untuk mencetak data
//banyaknya data di dalam List dipanggil dengan properti .length
//==================================
*/

//-- Menggunakan foreach untuk menampilkan data di dalam list --
/*
//==================================
//Contoh-4
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  //perulangan foreach dengan lamda / anonymous function
  stringList.forEach((s) => print(s));
}

///Output
///Hello
///Dicoding
///Dart
//==================================
*/

//-- Manipulasi data List --
//-- fungsi .add() = menambah data ke akhir list --

/*
//==================================
//Contoh-5
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  //Menambahkan data di akhir list
  stringList.add('Flutter');

  print(stringList); //[Hello, Dicoding, Dart, Flutter]
}
//==================================
*/

//-- fungsi .insert(index, data) = menambah data ke list tidak harus di akhir --
/*
//==================================
//Contoh-6
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  //menambah data di index ke-0
  stringList.insert(0, "Programming");

  print(stringList); //[Programming, Hello, Dicoding, Dart]
}
//==================================
*/

//-- ubah nilai dalam list --
//langsung inisialisasi nilai baru sesuai index
/*
//==================================
//Contoh-7
void main() {
  List<String> stringList = ["Hello", "Dicoding", "Dart"];

  //ubah data list
  stringList[0] = 'Mbloo';

  print(stringList); //[Mbloo, Dicoding, Dart]
}
//==================================
*/

//-- hapus data list .remove() --
/*
//==================================
//Contoh-8
void main() {
  List<String> stringList = [
    "Programming",
    "Hello",
    "Dicoding",
    "Dart",
    "Flutter",
  ];

  //-- Hapus List nilai = Programming --
  //stringList.remove('Programming');
  //print(stringList); //[Hello, Dicoding, Dart, Flutter]

  //-- hapus List index ke-1 --
  //stringList.removeAt(1);
  //print(stringList); //[Programming, Dicoding, Dart, Flutter]

  //-- hapus List terakhir --
  //stringList.removeLast();
  //print(stringList); //[Programming, Hello, Dicoding, Dart]

  //-- hapus List mulai index-0 sampai ke-1 (index 2 masih dipertahankan) --
  stringList.removeRange(0, 2);
  print(stringList); //[Dicoding, Dart, Flutter]
}
//==================================
*/

//-- Spread Operator --
//-> menambahkan banyak nilai ke dalam list dengan cara yang singkat
//menyebarkan nilai di dalam collection menjadi beberapa element
//keyword (...)

/*
//==================================
//Contoh-9
void main() {
  var favorites = ["Seafood", "Salad", "Nugget", "Soup"];
  var others = ["Cake", "Pie", "Donut"];
  var allFavorites = [favorites, others];
  print(allFavorites); //[[Seafood, Salad, Nugget, Soup], [Cake, Pie, Donut]]

  //list diatas tidak langsung tergabung

  //dengan menggunakan spread operator dapat memasukkan masing masing elemen di dalam list ke list lainnya
  var allFavorites1 = [...favorites, ...others];
  print(allFavorites1); //[Seafood, Salad, Nugget, Soup, Cake, Pie, Donut]
}
//==================================
*/

//-- Untuk mengatasi List yang bernilai null --
//null-aware spread operator
//keyword (...?)

//==================================
//Contoh-10
void main() {
  List<dynamic>? list;
  List<dynamic>? list2 = [0, ...?list];
  print(list); //null
  print(list2); //[0]
}

//==================================
