//For Loops
//perulangan membutuhkan variabel indeks dan tahu berapa kali perulangan yang dibutuhkan

//ada suatu kondisi dimana kita perlu melakukan hal yang sama berkali-kali
//misalnya menampilkan semua nama pengguna yang terdafter di aplikasi

/*
contoh tidak praktis
print(1);
print(2);
print(3);
print(4);
print(5);
print(6);
print(7);
print(8);
print(9);
print(10);
*/

/*
//==========================
//-- Contoh-1 - menampilkan angka 1 sampai 100
void main() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}
//==========================
*/

/*
 1. variabel index seringkali diberi nama i (menginisialisasi nilai awal) | int i = 1;
 2. pengecekan kondisi apakah perulangan masih perlu dilakukan, 
    jika true maka kode dalam blok for akan dijalankan | i <= 10;
 3. increment/decrement melakukan penambahan atau pengurangan variabel index | i++
 
 Jika i kurang dari sama dengan 10, maka jalankan kode berikut.

*/

/*
Latihan buat kode seperti berikut
*
**
***
****
*****
******
*******
********
*********
**********
*/

/*
//==========================
void main() {
  // index [i] akan berulang untuk menampilkan teks tiap baris
  for (var i = 0; i < 10; i++) {
    // index [j] akan berulang untuk menampilkan teks tiap kolom
    String text = "";
    for (var j = 0; j <= i; j++) {
      text = text + "*";
    }
    print(text);
  }
}
//==========================
*/

//FOR-IN
//perulangan element data yang di dalam array atau List
/*
for (variable_name in list_object) {
  statements
}
*/

//==========================
//Contoh-2
void main() {
  List<int> listAngka = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Output :');

  for (var angka in listAngka) {
    print(angka);
  }
}

///output
///1
///2
///3
///4
///5
///6
///7
///8
///9
///10
///
//==========================
