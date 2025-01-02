// Single line comment

/*
  multi
  line
  comment
 */

/// documentation comment
/// mengabaikan semua teks kecuali yang tertutup dalam kurung siku ([])
/// dalam kurung siku kita dapat memasukkan referensi dari nama kelas, variabel, atau fungsi
///

/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada fungsi [calculate]
void main(List<String> arguments) {
  // Mencetak Hello Dart! Dart is great. pada konsol
  print('Hello Dart! Dart is great.');
  // Testing documentation comment with [].
  print('6 * 7 = ${calculate()}');
}

int calculate() {
  return 6 * 7;
}

//gunakan ctrl lalu arahkan kursor mouse ke text dalam kurung siku []
