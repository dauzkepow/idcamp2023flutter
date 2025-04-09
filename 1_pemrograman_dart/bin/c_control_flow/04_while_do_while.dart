//While and do-while
//instruksi while mengevaluasi ekspresi boolean
//dan menjalankan kode di dalam blok while ketika bernilai true.

/*
//=======================
//Contoh-1
void main() {
  var i = 1;

  while (i <= 10) { //variabel dievaluasi sebelum dijalankan blok kode {}
    print(i); //jalankan blok kode {}
    i++;
  }
}

//perulangan while tidak memiliki ketergantungan dengan variabel index seperti for
//while lebih cocok digunakan pada kasus dimana kita tidak tahu pasti berapa banyak perulangan yang diperlukan
//=======================
*/

/*
//do-while
//=======================
//Contoh-2
void main() {
  var i = 1;

  do {
    print(i); //menjalankan blok kode satu kali
    i++;
  } while (i <= 15); //variabel dievaluasi setelah blok kode {} dijalankan
}
//=======================
*/

//while akan cek kondisi sebelum blok kode di dalamnya dijalankan
//do-while mengevaluasi boolean expression setelah blok kodenya dijalankan
//kode di dalam do-while akan dijalankan satu kali dulu

//Infinite Loop = looping terus menerus karena kesalahan coding
/*
//=======================
//Contoh-3 - infinite loop
void main() {
  var i = 1;
  while (i < 5) {
    print(i); //infinite loop
    //i++; //harus diberi increment/decrement
  }
}

//variabel i selali bernilai 1, kondisi i < 5 selalu true
//akibatnya aplikasi terus mencetak 1 sampai pc crash
//harus diberi increment atau decrement
//=======================
*/

//Challenge
/*
Latihan membuat kode seperti berikut
**********
*********
********
*******
******
*****
****
***
**
*

// Gunakan dua while atau do-while loops untuk baris dan kolom.

*/

//=======================
void main() {
  // variabel [i] akan berulang untuk menampilkan teks tiap baris
  int i = 10;
  while (i > 0) {
    // variabel [j] akan berulang untuk menampilkan teks tiap kolom
    int j = i;
    String text = "";
    while (j > 0) {
      text = "$text*";
      j--;
    }
    print(text);
    i--;
  }
}
