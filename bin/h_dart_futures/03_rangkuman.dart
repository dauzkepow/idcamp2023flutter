//Rangkuman Materi
/*
  - Dart Asynchronous adalah beberapa kode atau proses yang bisa berjalan bersamaan

  - Dalam synchronous program kode program akan berjalan secara berurutan dari atas ke bawah
  - Dalam asynchronous program memungkinkan suatu operasi bisa berjalan 
    sembari menunggu operasi lainnya selesai
  - Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang akan
    tersedia pada waktu mendatang (contoh pada saat ambil data dari internet dengan loading)
  - Ada tiga kondisi saat menerapkan objek Future antara lain :
    1. Uncompleted = ketika operasi asynchronous tertunda pada durasi waktu tertentu
       sehingga operasi tersebut mengembalikan nilai Future.
    2. Completed with Data = ketika operasi asynchronous berhasil berjalan, objek Future
       akan mengembalikan nilai dengan tipe data tertentu sesuai yang di deklarasikan 
       pada pembuatan Future awal.
    3. Completed with Error = ketika operasi asynchronous berjalan dan mengalami kegagalan
       objek Future akan mengembalikan nilai error.

  - Metode delayed pada objek Future berfungsi untuk menunda jalannya operasi kode bergantung
    dengan durasi yang ditentukan

    var coffee = Future.delayed(Duration(seconds: 3), () {
      return 'Coffee Boba';
    });

  - Objek Future memiliki beberapa fungsi/method untuk menangani state, antara lain :
    1. then(), fungsi yang menangani kondisi completed with data.
    2. catchError(), fungsi yang menangani kondisi completed with error.
    3. whenComplete(), fungsi yang berjalan saat proses asynchronous dan state lainnya berakhir.

  - Keyword async dan await mendukung proses asynchronous program, sehingga memungkinkan untuk
    menulis kode asynchronous yang terlihat mirip layaknya kode synchronous
*/
