
//Ringkasan Aturan Effective Dart
/*
  Contoh aturan yang ada di dalam Effective Dart
  - DO name types using UpperCamelCase
    Class, enum, typedef, dan type parameter harus menggunakan huruf kapital pada huruf
    pertama dari setiap kata termasuk kata pertama.

    abstract class Animal {}
    abstract class Mammal extends Animal {}
    mixin FLyable {}
    class Cat extends Mammal with Walkable {}
  
  - DON'T use prefix letters
    Karena Dart dapat memberitahu Anda tipe, cakupan, dan properti lain pada sebuah deklarasi
    maka tidak ada alasan untuk menambahkan prefix pada sebuah identifier

    var instance; //good
    var mInstance; //bad
  
  - PREFER starting function or method comments with third-person verbs
    sebuah komentar dokumentasi harus fokus menjelaskan apa yang dilakukan kode tersebut.
    Menambahkan kata kerja dari sudut pandang orang ketiga di awal komentar adalah salah satu
    cara melakukannya.

    // Returns `true` if [username] and [password] inputs are valid.
    bool isValid(String username, String password) { }

  - PREFER a noun phrase for a non-boolean property or variable
    Seorang developer yang membaca kode kita akan fokus pada apa yang ada pada property.
    Jika mereka lebih peduli tentang bagaimana suatu property ditentukan, maka lebih baik 
    dibuat menjadi method dengan nama menggunakan kata kerja.

    // Good
    cat.furColor;
    calculator.firstNumber;
    list.length;
 
    // Bad
    list.deleteItems;

  - Sementara untuk variabel atau property booleans PREFER gunakan kata kerja non-imperative :
    list.isEmpty
    dialog.isOpen

  - Do use ?? to convert null to a boolean value
    Aturan ini berlaku ketika sebuah expression dapat mengevaluasi nilai true, false, atau null
    dan Anda perlu meneruskan hasilnya ke sesuatu yang tidak menerima nilai null

    if(stock?.isEnough) {
      print('Making you a cup of coffee...');
    }

    kode diatas akan menghasilkan exception ketika stock-nya null. Untuk mengatasinya kita perlu
    memberikan nilai default ketika nilai awalnya null. Sehingga kodenya akan menjadi berikut :

    stock?.isEnough ?? false;

  - AVOID using curly braces in interpolation when not needed
    Seperti yang kita tahu, Dart dilengkapi dengan fitur string interpolation untuk
    menggabungkan nilai string dengan nilai lain secara lebih mudah.

    print('Hi, ${name}, You are ${thisYear - birthYear} years old.');

    Namun jika Anda menginterpolasi identifier sederhana, maka curly braces ({}) tidak perlu ditulis
    
    print('Hi, $name, You are ${thisYear - birthYear} years old.');

  - PREFER async/await over using raw futures
    Kode asynchronous bisa jadi sangat sulit untuk dibaca dan di-debug, bahkan ketika menggunakan
    abstraksi yang bagus seperti Future. sintaks async-await memungkinkan Anda menuliskan kode
    asynchronous dengan gaya synchronous sehingga memudahkan membaca kode.

    // raw future
    void main() {
      getOrder().then((value) {
        print('You order: $value');
      })
      .catchError((error) {
        print('Sorry. $error');
      });
      print('Getting your order...');
    }

    // async-await
    void main() async {
      print('Getting your order...');
      try {
        var order = await getOrder();
        print('You order: $order');
      } catch (error) {
        print('Sorry. $error');
      }
    }

  - CONSIDER making the code read like a sentence
    Penamaan dalam kode baik itu nama variabel, fungsi, maupun lainnya adalah hal yang sangat
    penting namun juga tidak mudah. Sebagai solusi kita bisa membayangkannya seolah sedang 
    membuat kalimat.

    // “If store is open ...”
    If (store.isOpen)

    // “hey garfield, eat!”
    garfield.eat();

    // Bad example
    // Ambigu apakah memerintahkan toko untuk tutup atau mendapatkan status dari toko
    If (store.close)

  - CONSIDER using function type syntax for parameters
    Dart memiliki sintaks khusus untuk mendefinisikan parameter yang tipenya fungsi.
    Caranya yaitu dengan menuliskan tipe kembalian sebelum nama parameter kemundian
    parameter dari fungsi setelahnya.

    List filter(bool predicate(item)) {}

    Sejak Dart versi 2, terdapat notasi umum tipe fungsi sehingga bisa digunakan untuk
    parameter berupa fungsi

    List filter(Function predicate) { }  // function type syntax

  - Info lengkap Effective Dart Style = https://dart.dev/effective-dart/style
*/