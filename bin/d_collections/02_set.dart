//Set
//-> collection yang hanya menyimpan nilai unik
//untuk mengatasi duplikasi data (ada data sama)

// syntak keyword :
// Set<tipe_data> namaSet = new Set.from([data, data, data, data]);

//================================
//Contoh-1
void main() {
  Set<int> anotherSet = new Set.from([1, 4, 6, 4, 1]);
  print(anotherSet); //{1, 4, 6}
}

//data duplikat 1 dan 4
//membuang angka yang sama
//================================
