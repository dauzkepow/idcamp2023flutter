//Operator
//->menginstruksikan komputer untuk melakukan operasi

void main() {
  print('===== operator assignment =====');
  //=== #operator assignment (=) ===
  //->untuk inisialisasi nilai variabel
  var firstNumber = 5; //memasukkan nilai 5 ke variabel firstNumber
  print(firstNumber); //5

  print('===== operator Aritmatika =====');
  //=== #Operator Aritmatika ===
  var secondNumber = 4;
  var thirdNumber = 13;
  var sum = secondNumber + thirdNumber;
  print(sum); //17

  print('==============');
  //aritmatika umum
  print(5 + 2); // int add = 7
  print(5 - 2); // int subtract = 3
  print(5 * 2); // int multiply = 10
  print(5 / 2); // double divide = 2.5
  print(5 ~/ 2); // int intDivide = 2
  print(5 % 2); // int modulo = 1
  print('==============');
  //Operator aritmatika pada pemrograman memiliki aturan yang sama dengan matematika,
  //di mana perkalian dan pembagian akan didahulukan sebelum penjumlahan atau pengurangan.
  print(2 + 4 * 2); // output: 10
  print('==============');
  //Jika Anda ingin melakukan operasi penjumlahan terlebih dahulu, gunakan tanda kurung atau parentheses.
  print((1 + 3) * (4 - 2)); //8
  print('==============');
  //mendukung increment dan decrement
  var a = 0, b = 5;
  a++;
  b--;
  print(a); //1
  print(b); //4
  print('==============');
  //a++ di atas dapat diartikan dengan a = a + 1

  //contoh lain
  var c = 0;
  c += 5; //c = c + 5 atau c = 0 + 5
  print(c); //5

  //bisa juga untuk perkalian
  var d = 2;
  d *= 3; //d = d * 3 atau d = 2 * 3
  print(d); //6

  print('===== operator perbandingan =====');
  //=== #Operator Perbandingan ===
  //-> mengembalikan nilai dalam bentuk boolean.
  /*
    == sama dengan
    != tidak sama dengan
    > lebih dari
    < kurang dari
    >= lebih dari sama dengan
    <= kurang dari sama dengan
  */
  if (2 <= 3) {
    print('Ya, 2 kurang dari sama dengan 3');
  } else {
    print("Anda salah");
  }

  /// Output:
  /// Ya, 2 kurang dari sama dengan 3

  print('===== operator logika =====');
  /*
    || OR
    && AND
    ! NOT

    boolean AND akan menghasilkan nilai true jika semua operand-nya true
    OR jika salah satu operand true
  */
  if (2 < 3 && 2 + 4 == 5) {
    print('Untuk mencetak ini semua kondisi harus benar');
  } else {
    print(
        '2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil');
  }

  /// Output :
  /// 2 kurang dari 3, tapi 2 + 4 tidak sama dengan 5, maka ini akan tampil

  if (false || true || false) {
    print("Ada satu nilai true");
  } else {
    print('Jika semuanya false, maka ini akan tampil');
  }

  ///Output :
  ///Ada satu nilai true
}
