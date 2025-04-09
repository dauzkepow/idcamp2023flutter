//Pengenalan Dart Type Systems
//-> inisialisasi nilai variabel dan merubahnya sesuai dengan tipe datanya
//-> nilai tipe data variabel tidak boleh dicampur-campur agar tidak error

/*
  - Dalam bahasa pemrograman, type system adalah sistem logis yang terdiri dari seperangkat
    aturan yang menetapkan properti atau tipe ke berbagai konstruksi program komputer
    seperti variabel, expression, fungsi, atau modul
  - Type system ini memformalkan atau memberikan standar kategori tersirat yang digunakan
    programmer untuk tipe data, struktur data, atau komponen lainnya
  - Dart menyebut type system-nya sebagai sound type system
  - Soundness ini berarti program anda tidak akan pernah bisa memasuki keadaan
    dimana sebuah ekspresi mengevaluasi nilai yang tidak cocok dengan jenis tipenya
  - Sound type system pada dart ini sama dengan type system pada Java atau C#
  - Dimana kondisi soundness ini dicapai dengan menggunakan kombinasi pemeriksan statis
    (compile-time-error) dan pemeriksaan saat runtime
  - Sebagai contoh, menetapkan String ke variabel int adalah kesalahan compile-time
  - Casting Object ke String dengan as String akan gagal ketika runtime jika objek
    tersebut bukan String.

  - Manfaat dari sound type system ini :
    1. Mengungkap bug terkait tipe pada saat compile time
       sound type system memaksa kode untuk tidak ambigu tentang tipenya,
       sehingga bug terkait tipe yang mungkin sulit ditemukan saat runtime, 
       bisa ditemukan pada waktu kompilasi
    2. Kode lebih mudah dibaca
       dapat mengandalkan nilai yang benar-benar memiliki tipe yang ditentukan
    3. Kode lebih mudah dikelola
       ketika mengubah satu bagian kode, type system dapat memperingatkan anda 
       tentang bagian kode mana yang baru saja rusak
    4. Kompilasi ahead of time (AOT) yang lebih baik
       kode yang dihasilkan saat kompilasi AOT menjadi jauh lebih efision
      
*/
