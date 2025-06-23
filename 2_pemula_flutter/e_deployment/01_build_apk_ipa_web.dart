//Build APK
/*
  =============== ANDROID ===============
  - atur AndroidManifest.xml = informasi mengenai aplikasi Android yang akan di-build
  - berupa nama aplikasi, icon, permission, screen orientation, dan lain lain
  android/app/src/main/AndroidManifest.xml

  - Setting Nama Aplikasi
    <application
        android:name="io.flutter.app.FlutterApplication"
        android:label="common_widget" -> "Nama Aplikasi"
        android:icon="@mipmap/ic_launcher">
  atau dengan library = https://pub.dev/packages/change_app_package_name

  - Setting Ikon Aplikasi
    android/app/src/main/res/
    ganti gambar ic_launcher.png
    membuat ikon aplikasi = https://romannurik.github.io/AndroidAssetStudio/icons-launcher.html#foreground.type=clipart&foreground.clipart=android&foreground.space.trim=1&foreground.space.pad=0.25&foreColor=rgba(96%2C%20125%2C%20139%2C%200)&backColor=rgb(68%2C%20138%2C%20255)&crop=0&backgroundShape=circle&effects=none&name=ic_launcher
    kalau sudah tekan download pojok kanan atas
    setelah di download copy folder res/ ke android/app/src/main/res/
    atau dengan library = https://pub.dev/packages/flutter_launcher_icons

- Setting Perizinan Aplikasi
  android/app/src/main/AndroidManifest.xml
  <uses-permission android:name="android.permission.INTERNET"/> #-> sejajar tag application

- Build APK
  debug = pengujian - flutter build apk --debug
  build/app/outputs/apk/debug/
  
  release = resmi bisa diupload ke play store
  perlu signing key

  release = flutter build apk

  https://docs.flutter.dev/deployment/android
  
  =============== IOS ===============
  - Build .IPA hanya bisa dijalankan dengan mendaftar akun Apple Developer Program
  - https://developer.apple.com/programs/

  - Setting Nama Aplikasi
    /ios/Runner/Info.plist
    ubah nama pada = key Bundle Name
    <key>CFBundleName</key>
    <string>Nama Aplikasi</string>
    atau dengan library = https://pub.dev/packages/flutter_launcher_name
  
  - Setting Ikon Aplikasi
    https://appicon.co/
    icon pada iOS Anda tidak dapat membuatnya transparant
    klik Generate
    Ikon untuk aplikasi iOS bisa Anda dapatkan pada folder Assets.xcassets
    folder Assets.xcassets yang ada pada direktori /ios/Runner/

    atau dengan library = https://pub.dev/packages/flutter_launcher_icons

  - Build IPA
    untuk melakukan build aplikasi Flutter menjadi IPA hanya bisa dilakukan pada device macOS
    buka terminal ketik = flutter build ios
    jika ingin versi debug = flutter build ios --debug

    jika tidak mempunyai perangkat apple :
    deploy ke :
    https://blog.codemagic.io/getting-started-with-codemagic/
    atau https://devcenter.bitrise.io/en/getting-started/quick-start-guides/getting-started-with-flutter-apps.html

  
  =============== WEB Deployment ===============

  - Setting Nama Aplikasi
    membuka berkas manifest.json
    {
      "name": "wisata_bandung",
      "short_name": "wisata_bandung"
    }

  - Setting Ikon Aplikasi
    folder /web/icons
    manifest.json

    {
      ...
      "icons": [
          {
              "src": "icons/Icon-192.png",
              "sizes": "192x192",
              "type": "image/png"
          },
          {
              "src": "icons/Icon-512.png",
             "sizes": "512x512",
              "type": "image/png"
          }
        ]
    }

  - Build Web
    buka terminal = flutter build web
    untuk menentukan renderer = tambahkan parameter --web-renderer
    jika tidak mendefinisikan parameter maka mode auto akan digunakan

    hasil build =  /build/web -> folder inilah yang bisa di deploy ke web hosting atau web server

    https://firebase.google.com/docs/hosting
    https://pages.github.com/
    https://cloud.google.com/solutions/web-hosting




*/
