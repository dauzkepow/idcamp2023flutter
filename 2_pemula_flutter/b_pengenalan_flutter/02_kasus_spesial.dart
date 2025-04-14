//Kasus Spesial

/* 
menjelaskan situasi umum dimana kode yang dimodifikasi tidak akan berjalan lagi setelah 
hot reload dalam beberapa kasus, perubahan kecil pada kode dart akan memungkinkan anda 
untuk terus menggunakan hot reload untuk aplikasi anda. 
Dalam beberapa kasus kita perlu melakukan hot restart atau full restart

  - Aplikasi mati atau keluar
    hot reload akan berhenti jika aplikasi terhenti atau keluar
    misalnya jika aplikasi terlalu lama berada di background
  - Compilation errors
    Ketika perubahan kode melihatkan kesalahan kompilasi, 
    hot reload selalu menghasilkan pesan kesalahan yang seperti di bawah ini:

    Hot reload was rejected:'/Users/ ...
    Widget build(BuildContext context) {
     ...

    Dalam situasi ini cukup perbaiki kesalahan pada baris kode Dart 
    yang ditentukan untuk tetap menggunakan hot reload.
  - CupertinoTabView’s builder
    Hot reload tidak akan berjalan ketika ada perubahan pada builder di CupertinoTabView.
  - Tipe enum
    Hot reload tidak akan bekerja ketika tipe enum diubah menjadi kelas reguler atau sebaliknya.

    // Contoh sebelum:
    enum Level { beginner, intermediate, advanced }

    // Contoh sesudah:
    class Level {
      Level(this.id);
      int id;
    }

  - Perubahan Font
    Hot reload mendukung sebagian besar perubahan aset. 
    Namun, jika mengubah font, Anda harus menggunakan hot restart.

  - Generic Types
    Hot reload tidak akan bekerja ketika pendeklarasian tipe generik dimodifikasi.
    // Contoh sebelum:
    class A<X> {
      X ax;
    }

    // Contoh sesudah:
    class A<X, Y> {
      X ax;
      Y ay;
    }

  - Native code
    Jika Anda mengubah kode native tiap platform (seperti Java, Kotlin, Swift, atau Objective-C),
    Anda harus melakukan full restart (stop dan run kembali project) untuk melihat perubahan.
  
  - State sebelumnya dikombinasikan dengan kode baru
    Fitur hot reload pada Flutter kadang-kadang digambarkan sebagai stateful hot reload
    yang mempertahankan status aplikasi Anda.
    ini memungkinkan anda untuk melihat efek perubahan terbaru saja 
    tanpa membuang kondisi saat ini.
    Misalnya, jika aplikasi Anda mengharuskan pengguna untuk login, 
    Anda dapat memodifikasi dan melakukan hot reload beberapa halaman di bawah hierarki 
    navigasi, tanpa memasukkan kembali kredensial login Anda. 
    Saat disimpan, maka hasil output akan sesuai dengan yang kita inginkan atau kita ubah.

    Jika perubahan kode memengaruhi kondisi aplikasi Anda, seperti data atau fungsi 
    yang seharusnya berjalan dengan baik tiba-tiba berhenti berfungsi. 
    Maka disarankan untuk menggunakan Hot Restart.

    Seperti kode di bawah ini :
    class MyWidget extends StatelessWidget {
      Widget build(BuildContext context) {
        return GestureDetector(onTap: () => print('T'));
      }
    }

    Diubah menjadi :
    class MyWidget extends StatefulWidget {
      @override
      State createState() => MyWidgetState();
    }
 
    class MyWidgetState extends State { /*...*/ }

    kemudian tekan tombol hot reload, maka console akan menampilkan output seperti berikut :
    MyWidget is not a subtype of StatelessWidget

    Dalam situasi ini, full restart diperlukan untuk melihat aplikasi yang diperbarui.

*/
