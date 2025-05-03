//Menggunakan Packages
/*
  - Package Dependencies
    Dalam pengembangan suatu aplikasi kita tidak akan lepas dari package/library
    Package disini = sebuah code yang dibuat untuk menyelesaikan suatu masalah.

    Contohnya ketika aplikasi yang kita buat membutuhkan fitur kalender sementara fitur tersebut
    tidak di-support oleh Flutter. Alih-alih membuat fitur kalender dari nol,
    kita dapat menggunakan package yang telah dibuat oleh developer lain. 

    Package dependencies = sekumpulan package yang dibutuhkan dalam pengembangan aplikasi
    
    package tersebut akan diatur oleh package manager. Setiap bahasa pemrograman memiliki
    package manager-mya masing-masing.
    NodeJS = NPM
    Java = maven atau gradle
    PHP = composer
    Flutter = pub

  - Dart Pub
    pub = package manager dari Flutter
    Pub memiliki tugas untuk mengatur package apa saja yang dibutuhkan dalam pengembangan
    aplikasi. Pada package manager kita dapat mengatur versi package yang ingin kita gunakan
    dalam pengembangan aplikasi. 
    
    Pada package manager dapat mengatur versi yang ingin kita gunakan.
    
    Pengaturan versi sangat penting karena ketika versi flutter/dart yang digunakan tidak cocok
    dengan package yang kita butuhkan akan berpengaruh pada jalannya aplikasi yang dibuat. 
    Oleh karena itu harus memastikan versi yang kompatible dengan versi FLutter yang terinstall

    untuk menggunakan dan mengatur package-package pub pada projek Flutter buka pubspec.yaml

    ada 2 junis dependency :
    a. dev_dependencies = untuk package-package yang berkaitan ketika proses pengembangan 
       aplikasi Flutter, contohnya flutter_test: untuk testing. package di dalam dev_dependencies
       tidak akan disertakan ketika aplikasi rilis ke play store dan app store.
    b. dpendencies = untuk package-package yang langsung berkaitan dengan fitur aplikasi.
       contohnya seperti cupertino_icons untuk mendapatkan icon cupertino (icon iOS)
       cloud_firestore yang merupakan package untuk firebase firestore
       http = package untuk ambil data dari internet
    
    Untuk mendaftarkan package yang dibutuhkan cukup menulis seperti ini :
    nama_package: versi

    kadang pada versi ada simbol caret (^) artinya gunakan versi patch terbaru dari versi 
    yang telah ditentukan.
    ^0.1.2 = gunakan versi minimal 0.1.2 dan maksimal versi terbaru
    jika versi package tersebut sekarang sudah update, maka package yang digunakan merupakan
    versi terbaru

    >=0.1.2 <2.0.0 = menggunakan versi terbaru yang ada pada saat ini yang masih berada di
    dalam range tersebut yaitu lebih besar sama dengan 0.1.2 dan lebih kecil dari 2.0.0
 
    dependencies:
      flutter:
        sdk: flutter
 
      cupertino_icons: ^0.1.2
      provider: ^4.0.1

  - Indentasi
    Yang perlu diperhatikan dalam menulis berkas .yaml adalah pada indentasinya.
    Indentasi atau penggunaan spasi ini sangat penting karena menunjukkan urutan dan blok code
    yaml yang dibaca oleh komputer.
    
    Contoh, ketika menambahkan package provider, maka kita harus menuliskannya sejajar
    dengan package lainnya dan juga lebih menjorok ke dalam jika dibandingkan dengan depencencies
    
    Ini menunjukkan bahwa package seperti cupertino_icons dan provider merupakan bagian 
    dari dependencies yang akan ditambahkan.

    Setiap jaraknya 2 spasi, jika dependencies menempel pada ujung kiri, maka cupertino_icons 
    dan provider berjarak 2 spasi dari ujung kiri.

    Pada visual studio code setelah menambahkan package yang dibutuhkan cukup simpan save, 
    secara otomatis mensinkronisasi pubspec tersebut. bisa juga dengan terminal dengan ketik
    flutter pub get

    - Tempat-tempat mencari package Flutter
    https://pub.dev/
    https://flutterawesome.com/

  - Private Packages
    bisa juga menggunakan package yang tidak dipublikasikan pada pub.dev dengan cara
    menggunakan url git :
    
    dependencies:
      plugin1:
        git:
          url: git://github.com/flutter/plugin1.git

    atau path directory yang tersimpan offline dikomputer :
    
    dependencies:
      plugin1:
        path: ../plugin1/

*/
