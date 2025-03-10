//Null Safety
//->deklarasi variabel tidak bernilai (null)

/*
  sejak dart 2.12 
  variabel digunakan untuk menyimpan nilai
  string = teks
  num = angka

  String name = "kepow";
  int age = 30

  namun variabel juga bisa tidak memiliki nilai (null)
  null terjadi karena belum menginisialisasi nilai
  atau memang secara eksplisit menentukan nilai nuil variabel

  String favouriteFood = null;

  nilai null bisa menyebabkan kesalahan program Null Pointer Exception (NPE)

  analogi :
  ada teman mau mentraktir mekanan favorit anda
  tapi anda tidak memiliki manakan favorit maka ia bingung

  jika nilai variabel null (tidak ada)
  komputer juga akan bingung (crash atau error)

  ada kasus tertentu di mana kita membutuhkan nilai null
  seperti variable favouriteFood diatas karena tidak semua orang memiliki makanan favorit

  Null safety adalah jawaban dari kasus di atas. 

  Untuk menggunakan fitur null safety, kita perlu menggunakan versi Dart 2.12

  berkas pubspec.yaml 
  environment:
  sdk: '>=2.12.0 <3.0.0'

  dengan null safety secara default sebuah variabel tidak bisa memiliki nilai null,
  kecuali kita mendeklarasikannya secara eksplisit.

  int age = null;               // Compile error
  String? favoriteFood = null; 

  tanda tanya (?) menunjukkan bahwa variabel favoriteFood boleh memiliki nilai null (nullable)
  sedangkan variabel age harus memiliki nilai angka dan tidak boleh null (non-nullable)

  kode diatas tidak akan bisa dijalankan karena gagal dalam proses kompilasi
  oleh karena itu null safety sangat berguna untuk membuat kode menjadi lebih aman
  karena proses yang melibatkan nilai null dapat dibatasi dan ditentukan diawal

*/

//jika kita memikili fungsi dengan parameter non-nullable, maka argumen nullable akan terdeteksi error
/*
//========================
//-- Contoh-1

void main() {
  String? favoriteFood = null; //variabel nullable
  buyAMeal(favoriteFood); //error
}

//fungsi buyAMeal dengan parameter favoriteFood non-nullable
void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}

/*
//error
[{
	"resource": "/c:/development/project/idcamp2023flutter/bin/b_dart_fundamental/13_null_safety.dart",
	"owner": "_generated_diagnostic_collection_name_#0",
	"code": {
		"value": "argument_type_not_assignable",
		"target": {
			"$mid": 1,
			"path": "/diagnostics/argument_type_not_assignable",
			"scheme": "https",
			"authority": "dart.dev"
		}
	},
	"severity": 8,
	"message": "The argument type 'String?' can't be assigned to the parameter type 'String'. ",
	"source": "dart",
	"startLineNumber": 58,
	"startColumn": 12,
	"endLineNumber": 58,
	"endColumn": 24
}]
*/
//========================
*/

//untuk mengakses variabel null seperti diatas ada beberapa cara
//pertama, ubah parameter agar dapat menerima nilai null lalu lakukan pengecekan nilai null

/*
//========================
//-- Contoh-2

void main() {
  String? favoriteFood = null;
  buyAMeal(favoriteFood);
}

//fungsi buyAMeal dengan parameter favoriteFood non-nullable
void buyAMeal(String? favoriteFood) {
  if (favoriteFood == null) {
    print('Beli Nasi Goreng');
  } else {
    print('I bought a $favoriteFood');
  }
}
//========================
*/

//kedua, menggunakan operator (!)
//dengan operator ini menjad jaminan bahwa variabel tidak akan bernilai null
//namun jika bernilai null akan tetap terjadi crash
//jadi gunakan operator ! ketika yakin 100% bahwa variabel tersebut tidak akan null

//========================
//-- Contoh-3

void main() {
  String? favoriteFood = "Ayam Goreng";
  buyAMeal(favoriteFood); //agar mengembalikan nilai non-null
}

void buyAMeal(String favoriteFood) {
  print('I bought a $favoriteFood');
}
//========================
