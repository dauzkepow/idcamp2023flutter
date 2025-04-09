//Cascade Notation - cascade operator
/*
  - Operator memungkinkan untuk melakukan beberapa urutan operasi objek yang sama
  - bisa akses property dari objek dan menjalankan method di dalamnya bersamaan ketika menginstansiasi objek
  - keyword (.. atau ?..)
  - Contoh :
    void main() {
      var dicodingCat = Animal('', 2, 4.2)
        ..name = 'Gray'
        ..eat();
    }
  
  - menginstansiasi objek Animal dengan constructor seperti biasa
  - kemudian cascade operator yang mengikutinya 
    akan melakukan operasi berdasarkan objek yang dikembalikan constructor
  - kode tersebut melakukan hal yang sama apabila kita menuliskan seperti ini :
  - Contoh :
    var dicodingCat = Animal('', 2, 4.2);
    dicodingCat.name = 'Gray';
    dicodingCat.eat();
    
  //04_cascade_operator/animal.dart
  //04_cascade_operator/main.dart

  - Cascade Notation juga akan sering ditemui pada builder pattern :
  - Contoh :
    final addressBook = (AddressBookBuilder()
      ..name = 'jenny'
      ..email = 'jenny@example.com'
      ..phone = '415-555-0100')
    .build();
*/
