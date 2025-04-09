//Rangkuman Kelas

/* 
- Pengenalan Dart
  a. Dart = bahasa pemrograman open source dan general purpose buatan Google yang ditujukan
     untuk membuat aplikasi multiplatform seperti mobile, desktop dan web
  b. Tujual awal pembuatan Dart adalah untuk menggantikan JavaScript yang dinilai memiliki
     banyak kelemahan
  c. Beberapa alasan yang dipertimbangkan untuk mulai belajar Dart :
     1. Dart bahasa pemrograman yang fleksible
     2. Dart project open source
     3. Dart digunakan oleh FLutter
     4. Dart memiliki dukungan tools yang lengkap
     5. Dart mudah dipelajari dan bagus sebagai first language
  d. Dart didesain agar mirip dengan bahasa pemrograman populer yang sudah ada seperti Java,
     C#, JavaScript, Swift, dan Kotlin. Developer yang telah familier dengan kedua bahasa 
     tersebut dapat memulai belajar bahasa Dart dengan lebih mudah
  e. Dart sebagai bahasa memiliki beberapa karakteristik :
     1. Statically typed
        perlu mendefinisikan variabel sebelum bisa menggunakannya
     2. Type Inference
        tipe data tidak perlu didefinisikan secara eksplisit
     3. String Interpolation
        Dapat menyisipkan variabel ke dalam sebuah objek String tanpa concantenation
        (penggabungan objek String menggunakan tanda +)
     4. Multi-paradigm
        OOP dan Functional mendukung konsep object oriented programming dan menggunakan
        gaya functional programming
  
- Program Dart Pertama Anda
  a. Dart SDK adalah kumpulan library dan command-line tools yang dibutuhkan saat mengembangkan
     aplikasi yang menggunakan bahasa Dart.
  b. Dart memiliki tiga versi rilis, antara lain :
     1. Stable, diperbarui setiap 3 bulan
     2. Beta, biasanya diperbarui setiap bulan
     3. Dev, diperbarui setiap dua kali seminggu
  c. Terdapat tools yang mampu mengembangkan aplikasi Dart secara online adalah DartPad
  d. Beberapa teks editor atau Integrated Development Environment (IDE) yang dapat menyimpan
     dan menjalankan proyek Dart secara lokal, antara lain Android Studio, IntelliJ IDEA
     dan Visual Studio Code
  e. Plugin Dart dapat digunakan pada beberapa teks editor lain seperti Emacs, Atom, Vim,
     dan Ecplipse
  f. Ada beberapa shortcut yang dapat menjadi lebih produktif saat menulis kode pada IntelliJ IDEA
     1. Shift + F10 untuk menjalankan aplikasi.
     2. Ctrl + Alt + L untuk merapikan struktur kode agar tersusun rapi.

- Dart Fundamental
  a. Comments untuk menuliskan komentar atau penjelasan terhadap kode yang ditulis.
  b. Terdapat tiga jenis komentar yang tersedia pada Dart:
     1. // Single-line comment
     2. /* */ Multi-line comment
     3. /// Documentation comment
  c. perintah kode yang diawali dengan comment akan dilewati ketika proses kompilasi
  d. Variabel digunakan untuk menyimpan nilai. 
     Kita bisa definisikan variabel secara implisit menggunakan keyword var. 
  e. Jenis tipe data yang didukung oleh Dart, antara lain:
     1. int = bilangan bulat
     2. double = bilangan desimal
     3. num = dapat menampung bilangan bulat (int) dan bilangan desimal (double).
     4. bool = true dan false.
     5. String = tipe data yang dapat menyimpan teks
     6. Collection = menyimpan beberapa objek dalam satu variabel
     7. dynamic = dapat menyimpan tipe data apapun.
  f. Kita dapat menggabungkan pernyataan boolean atau membaliknya dengan operator logika.
     1. OR (||) = mengembalikan nilai true jika salah satu ekspresi bernilai true.
     2. AND (&&) = mengembalikan nilai true jika semua ekspresi bernilai true.
     3. NOT (!) = melakukan negasi pada ekspresi yang diberikan.
  g. Function digunakan sebagai mini program atau blok kode yang dapat 
     menghasilkan output dari input tertentu.
  h. Variabel konstan (const dan final) berguna untuk menyimpan nilai 
     yang tidak akan berubah selama program berjalan.
  i. const bersifat compile-time constants, artinya nilai tersebut harus 
     sudah diketahui sebelum program dijalankan.
  j. final memiliki sifat di mana nilainya masih bisa diinisialisasi 
     ketika aplikasi berjalan.
  k. null safety dari Dart membantu membatasi penggunaan nilai null 
     yang rawan menyebabkan crash pada aplikasi jika tidak ditangani dengan baik.

- Control Flow
  a. Untuk mengakomodasi dan mengecek sebuah kondisi dapat menggunakan ekspresi if
     Jika hasil ekspresi tersebut bernilai benar, maka blok kode di dalamnya akan dijalankan
     Jika kondisi ekspresi bernilai false, kita dapat menggunakan ekspresi else.
  b. Contoh if-else :
     String calculateScore(num score) {
      if (score > 90) {
        return 'A';
      } else if (score > 80) {
        return 'B';
      } else if (score > 70) {
        return 'C';
      }
    }
  c. Menjalankan perintah kode secara berulang dapat menggunakan looping for, while, do-while.
  d. FOR
     for (int i = 1; i <= 100; i++) {
      print(i);
     }
  e. Perulangan while dan do-while merupakan infinite loop atau endless loop 
     di mana program akan stucked pada proses perulangan yang menyebabkan eror pada aplikasi.
  f. While dan Do-While
     var i = 1;
 
     while (i <= 100) {
       print(i);
       i++;
     }
  g. Gunakan keyword break pada perulangan untuk menghentikan/keluar dari proses iterasi.
  h. Keyword continue dapat digunakan pada proses perulangan untuk melewatkan 
     proses iterasi dan melanjutkan ke proses iterasi berikutnya.
  i. Statement switch-case akan mengevaluasi variabel/ekspresi dengan kondisi 
     menggunakan operator sama dengan (==). Jika nilai variabel sama dengan nilai kondisi,
    maka blok kode akan dijalankan.
  j. Gunakan keyword break pada statement switch-case untuk keluar dari proses switch.
  k. Menuliskan kode percabangan dengan switch-case untuk kondisi-kondisi yang sudah diketahui :
     switch (variable/expression) {
       case value1:
         // do something
         break;
       case value2:
         // do something
         break;
       …
       ...
       default:
         // do something else
     }

- Collection
  a. List digunakan untuk menyimpan banyak data disusun berurutan dan diakses dengan index
     var numberList = [1, 2, 3, 4, 5];
     var stringList = ['Hello', 'Dicoding', 'Dart'];
  b. List menerapkan zero-based indexing, di mana 0 adalah indeks 
     dari nilai pertama dan list.length - 1 adalah indeks dari nilai terakhir.
  c. Set digunakan untuk menyimpan banyak data secara unik, tidak ada duplikasi, 
     tidak berurutan, dan tidak diindeks.
     var numberSet = {1, 4, 6};
  d. Pada Set memiliki beberapa fungsi yang bisa digunakan, antara lain:
     1. add(value), untuk menambahkan nilai value pada Set.
     2. remove(value), untuk menghapus nilai value pada Set.
     3. union(other), membuat set baru yang berisi gabungan Set ini dan Set other.
     4. intersection(other), membuat set baru yang berisi irisan Set ini dan Set other.
  e. Map menyimpan banyak data dengan format pasangan key-value
     var capital = {
      'Jakarta': 'Indonesia',
      'London': 'England',
      'Tokyo': 'Japan'
     };
  f. Terdapat beberapa properti yang tersedia pada Map, antara lain: 
     1. keys, untuk menampilkan seluruh key yang ada di dalam Map.
     2. values, untuk mengetahui seluruh nilai yang ada di dalam Map.
     3. clear(), untuk menghapus seluruh key-value yang ada di dalam Map.
  g. Saat mengakses key yang tidak ada pada map, nilai variabel akan bernilai null
     print(capital['New Delhi']); //null

- Object-Oriented Programming
  a. OOP merupakan paradigma yang berdasarkan pada konsep objek 
     yang memiliki atribut serta dapat melakukan operasi atau prosedur tertentu.
  b. Terdapat 4 (empat) pilar dalam object oriented programming, antara lain:
     1. Encapsulation, kondisi di mana status atau kondisi di dalam class, 
        dibungkus, dan bersifat privat. Artinya objek lain tidak bisa 
        mengakses property secara langsung. (_, setter, getter)
     2. Abstraction, objek hanya menunjukkan operasinya secara high-level.
        Cukup tau method apa saja yang dibuat oleh class tersebut. (abstract)
     3. Inheritance, mewarisi properti kelas induk (parent class) 
        ke kelas anak (child class).  (extends)
     4. Polymorphism, objek class dapat memiliki bentuk 
        atau implementasi yang berbeda-beda pada satu metode yang sama (@override)
  c. Class merupakan blueprint untuk mendefinisikan karakteristik dari sebuah objek.
  d. Di dalam class, variabel berlaku sebagai properti, sementara fungsi sebagai method.
  e. Abstract Class merupakan gambaran umum dari sebuah kelas.
     Abstract class tidak dapat direalisasikan ke dalam sebuah objek.
  f. Mixin digunakan untuk menggabungkan dan memanfaatkan property/method 
     dari beberapa kelas lain.
  g. Extension methods digunakan untuk membuat method tambahan pada kelas yang sudah ada.

- Functional Styles
  a. Functional Programming (FP) merupakan paradigma pemrograman di mana 
     proses komputasi didasarkan pada fungsi matematika murni.
  b. Functional programming ditulis dengan gaya deklaratif yang berfokus 
     pada “what to solve” dibandingkan “how to solve” pada gaya imperatif.
  c. Terdapat beberapa konsep dan karakteristik functional programming, antara lain:
     1. Pure functions, fungsi bergantung pada argumen dan parameter 
        yang dimasukkan ke dalamnya.
     2. Recursion, fungsi yang tidak memiliki konsep perulangan sehingga 
        fungsi hanya berfokus pada perintah dasar.
     3. Immutable variables, fungsi bersifat immutable, 
        artinya tidak bisa mengubah sebuah variabel ketika sudah diinisialisasi.
     4. First-class citizen, fungsi memiliki sifat yang setara dengan 
        komponen pemrograman yang lain.
     5. Higher-order function, fungsi yang menggunakan fungsi lain sebagai 
        argumen dan juga dapat mengembalikan fungsi.
     6. Anonymous function atau lambda adalah fungsi yang tidak memiliki nama.
     7. Closure merupakan suatu fungsi yang dapat mengakses dan merubah variabel 
        di dalam lexical scope-nya.

- Dart Type Systems
  a. Type system merupakan seperangkat aturan yang menetapkan properti atau tipe 
     ke berbagai konstruksi program komputer, seperti variable, expression, fungsi,
     atau modul.
  b. Type system ini memberikan standar kategori tersirat yang digunakan programmer 
     untuk tipe data, struktur data, atau komponen lainnya.
  c. Manfaat adanya sound type system pada Dart adalah:
     1. menemukan bug terkait tipe data pada saat compile time
     2. kode lebih mudah dibaca dan dikelola
     3. kompilasi ahead of time (AOT) yang lebih baik.
  d. Generic secara umum adalah konsep yang digunakan untuk menentukan tipe data 
     yang akan digunakan.
  e. Manfaat Generic pada Dart adalah:
     1. Type safety, maksudnya objek akan membatasi tipe yang bisa digunakan 
        ke dalam objek tersebut.
     2. Mengurangi duplikasi kode sehingga dapat mempermudah dalam membuat interface baru.
  f. Dart mendukung type inference, di mana memiliki analyzer yang dapat
     menyimpulkan tipe untuk field, method, variabel lokal, 
     dan beberapa tipe argumen generic lainnya. (var)

- Dart Futures
  a. synchronous program, kode program akan berjalan secara berurutan dari atas ke bawah
  b. asynchronous program memungkinkan suatu operasi bisa berjalan sembari 
     menunggu operasi lainnya selesai.
  c. Future adalah sebuah objek yang mewakili nilai potensial atau kesalahan yang 
     akan tersedia pada waktu mendatang.
  d. Terdapat tiga kondisi yang memungkinkan saat menerapkan objek Future, antara lain:
     1. Uncompleted, ketika operasi asynchronous tertunda pada durasi waktu tertentu 
        sehingga operasi tersebut mengembalikan nilai Future.
     2. Completed with data, ketika operasi asynchronous berhasil berjalan, 
        objek Future akan mengembalikan nilai dengan tipe data tertentu. 
     3. Completed with error, ketika operasi asynchronous berjalan 
        dan mengalami kegagalan, objek Future akan mengembalikan nilai eror.
  e. Metode delayed pada objek Future berfungsi untuk menunda 
     jalannya operasi kode bergantung dengan durasi yang ditentukan.

     var coffee = Future.delayed(Duration(seconds: 3), () {
        return 'Coffee Boba';
     });
  f. Objek Future memiliki beberapa fungsi/method untuk menangani state, antara lain:
     1. then(), fungsi yang menangani kondisi completed with data.
     2. catchError(), fungsi yang menangani kondisi completed with error.
     3. whenComplete(), fungsi yang berjalan saat proses asynchronous 
        dan state lainnya berakhir.
  g. Keyword async dan await mendukung proses asynchronous program, 
     sehingga memungkinkan untuk menulis kode asynchronous yang terlihat 
     mirip layaknya kode synchronous.

- Effective Dart - agar kode mudah dipelihara dan maintenance
  a. Coding Convention merupakan panduan yang merekomendasikan gaya pemrograman,
     praktik, dan metode untuk setiap aspek program yang ditulis dalam bahasa tertentu.
  b. Alasan code convention sangat penting bagi programmer adalah sebagai berikut :
     1. Sebagian besar waktu dalam mengembangkan aplikasi dihabiskan untuk maintenance.
     2. Sangat jarang suatu software dipelihara seterusnya oleh penulis aslinya.
     3. Meningkatkan keterbacaan kode dan memahami kode baru dengan lebih cepat.
     4. Supaya source code lebih tertata rapi dan bersih.
  c. Panduan Effective Dart dibagi menjadi empat bagian sesuai dengan fungsinya, antara lain:
     1. Style guide, mendefinisikan aturan untuk meletakkan dan mengatur kode.
     2. Documentation guide, panduan terkait dengan bagaimana memberikan komentar 
        atau dokumentasi pada kode.
     3. Usage guide, panduan terkait bagaimana memanfaatkan fitur bahasa secara terbaik 
        untuk menerapkan perilaku.
     4. Design guide, panduan mencakup bagaimana mendesain API library yang konsisten 
        dan bisa digunakan.
  d. Setiap panduan akan diawali dengan lima kata kunci ini, antara lain:
     1. DO, aturan yang harus selalu diikuti.
     2. DON’T, aturan yang tidak baik untuk diterapkan.
     3. PREFER, aturan yang harus diikuti, tetapi ada keadaan di mana 
        lebih masuk akal untuk melakukan sebaliknya.
     4. AVOID, aturan yang sebaiknya dihindari atau tidak boleh dilakukan.
     5. CONSIDER, aturan yang bisa diikuti atau tidak diikuti, 
        tergantung pada keadaan dan preferensi sendiri.
  e. Banyak sekali aturan dan pedoman terkait Effective Dart = https://dart.dev/effective-dart


*/
