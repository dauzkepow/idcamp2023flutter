//Set = {}
//-> collection yang hanya menyimpan nilai unik
//untuk mengatasi duplikasi data (ada data sama)
//data ditampilkan di kurung kurawal {}

// syntak keyword :
// Set<tipe_data> namaSet = new Set.from([data, data, data, data]);
//var nama_variabel = {data, data, data};

/*
//================================
//Contoh-1
void main() {
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  print(anotherSet); //{1, 4, 6}
}

//data duplikat 1 dan 4
//membuang angka yang sama
//================================
*/

//-- menambah data fungsi .add() atau .addAll() --
//.add() = menambah satu item ke dalam set
//.addAll() = menambah beberapa item sekaligus
//nilai duplikat diabaikan

/*
//================================
//Contoh-2
void main() {
  var numberSet = {1, 4, 6};

  //menambahkan data ke dalam set
  numberSet.add(6);
  numberSet.addAll({2, 2, 3});

  print(numberSet); //{1, 4, 6, 2, 3}
}
//================================
*/

//-- Hapus data remove --
//.remove()
/*
//================================
//Contoh-3
void main() {
  var numberSet = {1, 4, 6, 2, 3};

  //menghapus nilai 3 dari Set
  numberSet.remove(3);

  print(numberSet); //{1, 4, 6, 2}
}
//menghapus nilai 3 di dalam Set, bukan index ke-3
//================================
*/

//-- Menampilkan data pada index tertentu --
//.elementAt()
/*
//================================
//Contoh-4
void main() {
  var numberSet = {1, 4, 6, 2, 3};

  //Mendapatkan data Set pada index ke-2
  print(numberSet.elementAt(2)); //6
}
//================================
*/

//-- UNION dan INTERSECTION --
//mengetahui gabungan dan irisan dari dua buah Set
//.union() = gabungan
//.intersection() = irisan

//================================
//Contoh-5
void main() {
  var setA = {1, 2, 4, 5};
  var setB = {1, 5, 7};

  var union = setA.union(setB);
  var intersection = setA.intersection(setB);

  print("Union : $union"); //Union : {1, 2, 4, 5, 7}
  print("Intersection : $intersection"); //Intersection : {1, 5}
}
//================================
