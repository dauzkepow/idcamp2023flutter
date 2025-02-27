//Variabel Scope
/*
    Setiap variabel memiliki scope atau lingkupnya masing-masing
    Sebuah variabel dianggap satu lingkup selama masih berada di satu blok kurung kurawal yang sama.
    Lingkup ini menentukan bagian kode mana yang dapat membaca dan menggunakan variabel tersebut.
*/

/*
//==================
//-- Contoh-1
void main() {
  var isAvaiableForDiscount = true;
  var price = 300000;
  num discount = 0;

  if (isAvaiableForDiscount) {
    discount = 10 / 100 * price;
  }

  print('You need pay : ${price - discount}'); //270000.0
}

//variabel discount bisa diakses dari dalam kode if
//karena masih di dalam satu scope fungsi main()

//=====================
*/

/*
//=====================
//-- Contoh-2 - memisahkan contoh-1 menjadi dua fungsi
void main() {
  var price = 300000;
  var discount = checkDiscount(price); //panggil fungsi checkDiscount(price)
  print('You need to pay : ${price - discount}');
}

//fungsi checkDiscount dengan parameter price
num checkDiscount(num price) {
  num discount = 0; // pembuatan variabel baru dengan scope lebih kecil
  if (price >= 100000) {
    discount = 10 / 100 * price;
  }

  return discount;
}
//=====================
*/

//Variabel discount dideklarasikan pada fungsi checkDiscount()
//sehingga memiliki scope pada fungsi tersebut saja.
//Nilainya akan berbeda dengan variabel discount pada fungsi main()
//Saat variabel dideklarasikan pada suatu fungsi tertentu,
//ia hanya menjangkau di dalamnya saja karena cakupannya tidak bisa menjangkau ke fungsi lain.

//--Contoh-3 - deklarasi variabel secara global
//dideklarasikan di luar blok kode apapun
//bisa diakses dimanapun selama masih berada di berkas yang sama

/*
//=====================
var price = 300000; //variabel price dideklarasikan diluar fungsi apapun

void main() {
  var discount = checkDiscount(price); // variabel price dapat diakses di main()
  print('You need to pay : ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  // selain itu, ia dapat diakses juga di checkDiscount(),
  if (price >= 100000) {
    discount = 10 / 100 * price; // bahkan, di level pengondisian if.
  }

  return discount;
}
//=====================
*/

//variabel price  dapat memiliki cakupan yang lebih dalam
//sehingga memungkinkan diakses hingga ke level control flow atau pengondisian if
//Namun, perlu Anda perhatikan bahwa variabel hanya dapat dipanggil pada cakupan yang ia miliki.
//tidak dapat diakses jika diluar kemampuannya

//-- Contoh-4
//contoh kesalahan pemanggilan variabel
//Ia memanggil variabel discountApplied
//tetapi proses deklarasinya terjadi pada perintah berikutnya.
//Hal ini harus dihindari karena pemanggilan variabel dapat dilakukan setelah proses deklarasi terjadi.

//=====================
var price = 300000;

void main() {
  var discount = checkDiscount(price);
  print('You need pay: ${price - discount}');
}

num checkDiscount(num price) {
  num discount = 0;
  // pemanggilan variabel yang salah sehingga terjadi error
  if (!discountApplied) {
    if (price >= 100000) {
      discount = 10 / 100 * price;

      // proses deklarasi seharusnya terjadi sebelum pemanggilan variabel
      var discountApplied = true;
    }
  }
  return discount;
}
//=====================

//suatu variabel harus dideklarasikan sebelum dipanggil
