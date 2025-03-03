//Break and Continue
/*
anda memiliki aplikasi yang menyimpan data 20 bilangan prima pertama
pengguna dapat mencari bilangan prima lalu komputer akan menampilkan urutan berapa bilangan tersebut
ketika bilangan prima tersebut sudah ditentukan tentunya komputer tidak perlu melanjutkan proses perulangan lagi
nah, disinilah kita bisa menggunakan break untuk menghentikan dan keluar dari proses iterasi

menentukan bilangan prima 20 pertama
*/

/*
//========================
//Contoh-1 - Break
void main() {
  //bilangan prima di bawah 100
  var primeNumbers = [
    2,
    3,
    5,
    7,
    11,
    13,
    17,
    19,
    23,
    29,
    31,
    37,
    41,
    43,
    47,
    53,
    59,
    61,
    67,
    73,
    79,
    83,
    89,
    97,
  ];

  var searchNumber = 13;
  print("Bilangan prima di antara 1-100: $searchNumber");

  for (var i = 0; i < primeNumbers.length; i++) {
    if (searchNumber == primeNumbers[i]) {
      print('$searchNumber adalah bilangan prima ke-${i + 1}');
      break; //untuk menghentikan perulangan dan keluar dari blok if{}
    }
    print('$searchNumber != ${primeNumbers[i]}');
  }
}
/*
//Output :
Bilangan prima di antara 1-100: 13
13 != 2
13 != 3
13 != 5
13 != 7
13 != 11
13 adalah bilangan prima ke-6
*/

//ketika kode diatas dijalankan, proses iterasi akan dihentikan ketika angka yang diinputkan
//sama dengan bilangan prima yang dicari
//========================
*/

//Continue
//========================
//Contoh-2 - Continue
//melewatkan proses iterasi dan lanjut
//menampilkan angka 1 sampai 10 kecuali angka kelipatan 3
void main() {
  print('========================');
  print('Contoh-2 - Continue');

  for (var i = 0; i <= 10; i++) {
    if (1 % 3 == 0) {
      continue;
    }
    print(i);
  }
}

/// Output:
/// 1
/// 2
/// 4
/// 5
/// 7
/// 8
/// 10
//========================
