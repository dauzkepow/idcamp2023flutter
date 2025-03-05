//Switch-case
//untuk mengatasi banyak kondisi yang dicek dengan if
/*

switch (variable/expression) {
  case value1:
    // do something
    break;
  case value2:
    // do something
    break;
  ...
  ...
  default:
    // do something else
}

//Tanda kurung setelah keyword switch berisi variabel atau ekspresi yang akan dievaluasi.
//case = setiap kondisi yang mungkin terjadi
//value1 = nilai valid

//Jika kondisi pada case sama dengan variabel pada switch,
//maka blok kode setelah titik dua (:) akan dijalankan.

//break; = keluar dari proses switch.
//default sama seperti else = Jika tidak ada nilai yang sama dengan variabel pada switch maka blok kode ini akan dijalankan.

*/

//===========================
//Contoh-1
void main() {
  var grade = 'A';
  switch (grade) {
    case 'A':
      print('Excelent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Poor');
      break;
    default:
      print('Invalid choice');
      break;
  }
}

//===========================

/*
//===========================
//Contoh-2
void main() {
  final firstNumber = 13;
  final secondNumber = 18;
  final operator = "+";
  //operator = variabel
  //'+' = value

  switch (operator) {
    case '+':
      print(
        '$firstNumber $operator $secondNumber = ${firstNumber + secondNumber}',
      );
      break;
    case '-':
      print(
        '$firstNumber $operator $secondNumber = ${firstNumber - secondNumber}',
      );
      break;
    case '*':
      print(
        '$firstNumber $operator $secondNumber = ${firstNumber * secondNumber}',
      );
      break;
    case '/':
      print(
        '$firstNumber $operator $secondNumber = ${firstNumber / secondNumber}',
      );
      break;

    default:
      print('Operator tidak ditemukan');
  }

  ///output
  ///13 + 18 = 31
}
//===========================
*/
