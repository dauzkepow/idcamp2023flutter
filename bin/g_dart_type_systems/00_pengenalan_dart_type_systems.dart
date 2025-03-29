//Pengenalan Dart Type Systems
/*
  - Dalam bahasa pemrograman, type system adalah sistem logis yang terdiri dari seperangkat
    aturan yang menetaplan properti atau tipe ke berbagai konstruksi program komputer
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

*/
