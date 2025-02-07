//# String
//-> menyimpan data dalam bentuk teks
/*
dapat didefinisikan dengan menggunakan tanda petik satu maupun petik dua

String singleQuote = 'Ini adalah String';
String doubleQuote = "Ini juga String";




*/

void main() {
  //penggunaan tanda petik secara bergantian
  print(
      '"What do you think of Dart?" he asked'); //"What do you think of Dart?" he asked

  //text memiliki kedua tanda petik
  //gunakan backslash [\] untuk mengurangi ambiguitas
  //escape string
  print(
      '"I think it\'s great!" I answered confidently'); //"I think it's great!" I answered confidently
  //hanyalah tanda petik dan tidak boleh ditafsirkan sebagai pembatas string.
  //bisa juga untuk mengabaikan simbol lain
  print(
      "Windows path: C:\\Program Files\\Dart"); //Windows path: C:\Program Files\Dart

  //Variabel = Expression
  //String interpolation -> memasukkan nilai variabel ke string
  //dengan simbol $
  var name = 'Daus';
  print('Hello $name, nice to meet you'); //Hello Daus, nice to meet you
  print('1 + 1 = ${1 + 1}'); //1 + 1 = 2

  print('');
  //menampilkan $ dalam bentuk dollar
  print(r'Dia baru saja membeli komputer seharga $1,000.00');
  //Huruf ‘r’ sebelum String akan memberitahu Dart untuk menganggap String sebagai raw,
  //yang berarti akan mengabaikan interpolation.

  /*
  #Unicode mendefinisikan nilai numerik unik untuk setiap huruf, angka, dan simbol
  Cara umum untuk mengekspresikan unicode adalah \uXXXX,
  di mana XXXX adalah nilai heksadesimal 4 digit.
  Misalnya karakter hati (♥) adalah \u2665.
   */
  print('Hi \u2665'); //unicode hati
}
