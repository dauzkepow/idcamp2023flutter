//High Order Function
//-> fungsi yang menggunakan fungsi lainnya sebagai parameter, menjadi tipe kembalian, keduannya
/*
  - Kita bisa memanfaatkan lambda untuk membuat higher-order function
  - Coba perhatikan fungsi berikut:
    
  void myHigherOrderFunction(String message, Function myFunction) {
    print(message);
    print(myFunction(3,4));
  }

  - Fungsi diatas merupakan higher order function karena menerima parameter fungsi lain
  - untuk memanggil fungsi diatas bisa langsung memasukkan lambda sebagai parameter
    maupun variabel yang berisi nilai berupa fungsi  
 */

//===================================
//Contoh-1
void main() {
  //Opsi 1
  int Function(int num1, int num2) sum = (int num1, int num2) => num1 + num2;
  myHigherOrderFunction('Hello', sum);

  //Opsi 2
  myHigherOrderFunction('Helloo', (num1, num2) => num1 + num2);
}

//fungsi myHigherOrderFunction akan memanggil fungsi sum yang dijadikan parameter.
void myHigherOrderFunction(
  String message,
  int Function(int num1, int num2) myFunction,
) {
  print(message); //Hello
  print(myFunction(3, 4)); //7 - sum(3,4) atau return 3 + 4
}
//===================================

//namun eklarasi higher order function ini bisa menjadi sedikit tricky
//misalnya kode di bawah ini tidak akan terdeteksi error namun ketika dijalankan malah crash
//kenapa????

/*

  void myHigherOrderFunction(String message, Function myFunction) {
    print(message);
    print(myFunction(4));
  }

  - karena kita tidak menentukan spesifikasi dari fungsi seperti jumlah parameter
    atau nilai kembaliannya
  - maka semua jenis fungsi akan bisa dijalankan termasuk pemanggilan myFunction seperti diatas
  - untuk mengatasinya kita bisa lebih spesifik menentukan seperti apa fungsi yang valid
    untuk menjadi parameter
  
  void myHigherOrderFunction(String message, int Function(int num1, int num2) myFunction) {}

  - pada fungsi diatas kita perlu memasukkan fungsi dengan dua parameter 
    dan nilai kembali berupa int sebagai parameter

  - pada materi collection sebenarnya kita telah menggunakan satu fungsi 
    yang merupakan higher order function yaitu fungsi forEach().
  - Sebagai contoh kita punya daftar bilangan fibonacci yang disimpan ke sebuah variabel
*/

/*
//===================================
//Contoh-2
void main() {
  var fibonacci = [0, 1, 1, 2, 3, 5, 8, 13];

  // ketika memanggil fungsi ini kita melaukan operasi pada masing-masing item misalnya mencetak ke konsol
  fibonacci.forEach((item) {
    print(item);
  });
}
///Output
///0
///1
///1
///2
///3
///5
///8
///13
//===================================
*/

/*
//=============================
//Contoh-2
//higher order function menerima fungsi sebagai parameter
void prosesAngka(int a, int b, Function operasi) {
  var hasil = operasi(a, b);
  print('Hasil operasi: $hasil');
}

int tambah(int x, int y) => x + y;
int kali(int x, int y) => x * y;

void main() {
  prosesAngka(4, 2, tambah); //6
  prosesAngka(4, 2, kali); //8
}

//prosesAngka menerima dua angka a dan b dan sebuah fungsi operasi untuk hitung hasil
//tambah dan kali adalah fungsi yang akan dikirim sebagai parameter ke prosesAngka
*/
