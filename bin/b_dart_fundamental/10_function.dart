//Function
/*
  menghasilkan output berdasarkan input tertentu yang diberikan
  prosedur(blok kode) yang dapat digunakan kembali
  main() = contoh function
  print() = fungsi untuk mencetak
*/

//print('Hello Brot');
//mengambil nilai string atau object lainnya dan menampilkan ke konsol

//untuk mendeklarasikan fungsi, dengan menentukan tipe nilai balik (return value) lalu nama fungsi dan parameter inputnya
/*
  returnType functionName(type parameter1, type parameter2, ... ) {
    return result;
  }
  */

/*
  setiap fungsi dart selalu mengembalikan nilai namun ada satu tipe data khusus yang bisa kita lihat
  pada fungsi main yaitu return type void
  void = tidak menghasilkan output atau nilai kembalian
  digunakan untuk kumpulan instruksi atau prosedur yang berulang dan sering digunakan
  */

//fungsi setelah dibuat bisa dipanggil pada fungsi main() atau pada program lain

/*
//================
//panggil ke main()
void main() {
  greet(); //hello brot
}

//buat fungsi greet()
void greet() {
  print('hello brot');
}

//void greet() => print('hello brot');
//==================
*/

/*
  jika memiliki 30 instruksi greet dan ternyata versi terbaru aplikasi memerlukan perubahan text yang ditampilkan
  cukup ubah satu baris kode saja, tidak perlu 30 barus kode yang berbeda

  jika memiliki kode yang cukup panjang lebih baik kode tersebut dimasukkan ke dalam fungsi agar mudah dibaca
*/

//-- #Function Parameters
//->fungsi bisa berupa input data(parameter)
//untuk menambah parameter ke dalam fungsi, bisa memasukkannya ke dalam tanda kurung
//fungsi bisa menerima nol, satu, atau beberapa parameter

//-- Contoh fungsi dengan dua parameter

/*
//=====================
void main() {
  greet('Dicoding', 2015); //panggil fungsi greet()
}

//fungsi greet dengan parameter name dan bornYear
void greet(String name, int bornYear) {
  var age = 2025 - bornYear;
  print('Hallo $name! Tahun ini Anda berusia $age Tahun');
}

///Output
///Hallo Dicoding! Tahun ini Anda berusia 10 Tahun

//=====================
*/

//Fungsi juga bisa menghasilkan output atau mengembalikan nilai
//keyword = return

//-- Contoh fungsi dengan mengembalikan nilai

//=====================
void main() {
  var firstNumber = 7;
  var secondNumber = 10;
  print(
    "Rata - rata dari $firstNumber & $secondNumber adalah ${average(firstNumber, secondNumber)}",
  );
}

//double average(num num1, num num2) {
//  return (num1 + num2) / 2;
//}

//atau dengan arrow syntax
double average(num num1, num num2) => (num1 + num2) / 2;

///Output
///Rata - rata dari 7 & 10 adalah 8.5
//Jika fungsi hanya memiliki satu baris kode bisa disingkat dengan anotasi => (arrow syntax)

//=====================


//-- #Optional Parameter []
/*
  memiliki fungsi berikut :
  void greetNewUser(String name, int age, bool isVerified){}
 
  cara panggil :
  greetNewUser('Widy', 20, true);

  namun dart mendukung optional parameter = tidak wajib mengisi parameter yang diminta
  untuk membuat parameter menjadi opsional perlu memasukkannya ke dalam kusung siku []

  void greetNewUser([String name = "dico", int age = 10, bool isVerified = true]){} //nilai default

  Cara ini disebut dengan positional optional parameters, jadi bisa dipanggil berikut
  greetNewUser('Widy', 20, true);
  greetNewUser('Widy', 20);
  greetNewUser('Widy);
  greetNewUser();

  Setiap parameter yang tidak dimasukkan akan memiliki nilai null
  Namun sejak versi 2.12, Dart memiliki fitur null safety
  di mana suatu variabel secara default tidak bisa memiliki nilai null.
  Solusinya, kita bisa menambahkan tanda tanya (?) setelah tipe data
  supaya bisa menyimpan nilai null atau memberikan nilai parameter default. 
  Nilai ini akan digunakan jika kita tidak memasukkan parameternya.

  void greetNewUser([String? name, int? age, bool isVerified = false]) {}

  Dengan cara ini, urutan parameter masih perlu diperhatikan
  sehingga jika kita hanya ingin mengisi parameter terakhir
  kita perlu mengisi parameter sebelumnya dengan null

  greetNewUser(null, null, true);

  Untuk mengatasi masalah di atas kita bisa memanfaatkan "Named Optional Parameters"
  Pada opsi ini kita menggunakan kurung kurawal pada parameter.

  void greetNewUser({String? name, int? age, bool? isVerified})

  Dengan cara diatas bisa memasukkan parameter tanpa memperdulikan urutan parameter dengan menyebutkan nama parameternya
  greetNewUser(name: 'Widy', age: 20, isVerified: true);
  greetNewUser(name: 'Widy', age: 20);
  greetNewUser(age: 20);
  greetNewUser(isVerified: true);


  parameter ini bersifat opsional dan secara default akan bernilai null.
  Untuk memenuhi null safety, menandai parameter wajib diisi dengan keyword required.

  void greetNewUser({required String name, required int age, bool isVerified = false}) {}

  






*/