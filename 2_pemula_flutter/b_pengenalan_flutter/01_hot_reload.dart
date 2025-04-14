//Hot Reload
//-> memperbaharui widget setelah ada perubahan

/*
  - Hanya aplikasi Flutter dalam mode debug yang dapat melakukan hot reload
  - Ubah beberapa kode kecil dalam salah satu file Dart di project Anda.
    jika perubahan banyak atau perubahan di dalam initState atau main harus hot restart
  - Tanda hot reload berhasil 
    Performing hot reload...

    Reloaded 1 of 448 libraries in 978ms.

  - Hot reload menyebabkan semua widget yang ada dibangun kembali. hanya kode yang terlibat 
    dalam rebuilding widget yang dieksekusi ulang secara otomatis. Seperti contoh fungsi main
    dan initState tidak akan dijalankan kembali jika menggunakan hot reload
  - Hot reload = memuat perubahan kode ke dalam VM dan menjalankan kembali metode build
                 ada di dalam widget. ini akan membangun kembali widget-widget yang ada
                 dan mempertahankan status terakhir aplikasi
  - Hot restart = memuat perubahan kode ke dalam VM dan mengulang kembali aplikasi dari awal
                  dan akan kehilangan state aplikasi (kembali ke nilai awal)
  - Full restart = mengkompilasi kode dari awal, harus stop dan run kembali

  - berikan perubahan lalu klik hot reload logo petir kuning







 */
