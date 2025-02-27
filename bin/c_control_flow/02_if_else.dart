//IF-ELSE
//pengecekan kondisi

/*
  Ekspresi if untuk menguji suatu konsisi
  jika hasil ekspresi bernilai true maka blok kode dijalankan
  jika false maka proses yang ditentukan akan dilewatkan
*/

/*
//==========================
//-- Contoh-1 - if
void main() {
  var isRaining = true;

  print('Prepare before going to office.'); //Prepare before going to office.
  if (isRaining) {
    print('Bring an umbrella'); //Bring an umbrella
  }

  print('Going to the office'); //Going to the office
}
//jika ubah isRaining menjadi false maka blok if akan dilewatkan
//dan program tidak akan mengingatkan untuk membawa payung

//==========================
*/

//lalu bagaimana jika anda ingin melakukan operasi lain ketika kondisi bernilai false?
//yaitu dengan menggunakan false

/*
//==========================
//-- Contoh-2 - if else
void main() {
  var openHours = 8;
  var closeHours = 21;
  var now = 17;

  if (now > openHours && now < closeHours) {
    print("Hello, we'e open");
  } else {
    print("Sorry, we're closed");
  }

  ///output
  ///Hello, we'e open
}
//==========================
*/

//bisa juga untuk mengecek beberapa kondisi sekaligus dengan menggabungkan else dan if

//==========================
//-- Contoh-3
void main() {
  var score = 85;
  print('nilai anda : ${calculateScore(score)}'); //variabel input sesuai fungsi
}

//tipe data String, nama fungsi calculateScore, parameter score
String calculateScore(score) {
  if (score > 90) {
    return 'A'; //return sesuai tipe data nama String
  } else if (score > 80) {
    return 'B';
  } else if (score > 70) {
    return 'C';
  } else if (score > 60) {
    return 'D';
  } else {
    return 'E';
  }
}
//return sesuai tipe data nama String
//jika tipe data num maka return berupa angka
//==========================

/*
---- Conditional Expressions ----
conditional ? true expression : false expression
var shopStatus = now > openHours ? "Hello, we're open" : "Sorry, we're closed!";

expression1 ?? expression2
var buyer = name ?? 'user';

jika variabel name tidak bernilai null, buyer menyimpan nilai dari name
jika bernilai null buyer akan berisi 'user'

*/
