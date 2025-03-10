//Map
//-> menyimpan data dengan format key-value

/*
//--- keyword syntax : ---
  var nama_variabel = {
    'key' : 'value',
    'key' : 'value',
    ...
    ...
  };

  - key : value
  - key tidak bisa sama
  - String sebelah kiri titik dua (:) = key
  - sebelah kanan titik dua (:) = value
  - untuk mengakses nilai Map, bisa menggunakan key yang sudah dimasukkan
  - Misalnya menggunakan key "Jakarta" untuk mendapatkan value "Indonesia"

//--- bisa juga seperti ini : ---
  Map<String, String> capital = {
    'Jakarta' : 'Indonesia',
    'London' : 'England',
  };

  - <String kiri untuk tipe data key, String kanan untuk tipe data value>

*/

/*
//==============================
//Contoh-1
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  print(capital['Jakarta']); //Indonesia
}
//==============================
*/

//Dapat menampilkan key apa saja yang ada di dalam Map dengan property .keys
//untuk mengetahui nilai apa saja yang ada di dalam Map dengan property .values

/*
//==============================
//Contoh-2
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  //buat variabel mapKeys untuk menampilkan key apa saja di dalam Map
  var mapKeys = capital.keys;
  print("mapKeys: $mapKeys"); //mapKeys: (Jakarta, London, Tokyo)

  //buar variabel mapValues untuk menampilkan values apa saja di dalam map
  var mapValues = capital.values;
  print("mapValues: $mapValues"); //mapValues: (Indonesia, England, Japan)
}
//==============================
*/

//-- Menambah key-value baru ke dalam Map --
//==============================
//Contoh-3
void main() {
  var capital = {
    'Jakarta': 'Indonesia',
    'London': 'England',
    'Tokyo': 'Japan',
  };

  //tambah key-value baru
  capital['New Delhi'] = 'India';

  print(capital);
  //{Jakarta: Indonesia, London: England, Tokyo: Japan, New Delhi: India}
}
//==============================
