//Paradigma Functional Programming
//-> paradigma pemrograman dimana proses komputasi didasarkan pada fungsi matematika murni
//Ditulis dengan gaya deklaratif yang terfokus pada "what to solve" dibandingkan "how to solve"

/*
  Berikut beberapa konsep dan karakteristik fungtional programming
  - Pure function
    sebuah fungsi bergantung pada argumen atau parameter yang dimasukkan ke dalamnya
    sehingga pemanggilan fungsi dengan nilai argumen yang sama akan selalu memberikan hasil yang sama pula
    contoh fungsi sum() berikut nilai yang dikembalikan akan bergantung pada argumen yang diberikan
    int sum (int num1, int num2) {
      return num1 + num2;
    }

  - Recursion
    tidak ada konsep perulangan for atau while
    iterasi pada functional programming dilakukan 
    melalui rekursi atau pemanggilan fungsi itu sendiri hingga mencapai kasus dasar
    int fibonacci(n) {
      if (n <= 0) {
        return 0;
      } else if(n == 1) {
        return 1;
      } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
      }
    }

  - Imutable variables
    tidak bisa mengubah sebuah variabel ketika sudah diinisialisasi
    alih-alih mengubah nilai variabel kita bisa membuat variabel baru untuk menyimpan data
    mekanisme ini bertujuan agar kode kita menjadi lebih aman 
    karena state dari aplikasi tidak akan berubah sepanjang aplikasi dijalankan
    var x = 5;
    x = x + 1; //variabel tidak immutable

  - Function are first-class citizen and be higher-order
    first-class citizen = function berlaku sama seperti komponen pemrograman yang lain
    sebuah fungsi bisa dimasukkan ke variabel menjadi parameter dalam suatu fungsi 
    dan juga menjadi nilai kembalian pada fungsi
    
    higher order function = fungsi yang mengambil fungsi lain sebagai argumen dan juga
    dapat mengembalikan fungsi
*/
