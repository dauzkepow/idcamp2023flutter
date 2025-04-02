//Future dengan async-await
/*
  - Pada materi sebelumnya kita telah mempelajari Future untuk berurusan 
    dengan proses asynchronous
  - Seperti yang kita tahum penulisan kode asynchronous akan sedikit berbeda 
    dengan proses synchronous.
  - Contohnya program pesan kopi kita sebelumnya jika dituliskan secara asynchronous
    akan seperti berikut :
    02_future_dengan_async_await.jpeg

  - Dart memiliki keyword async dan await yang merupakan sebuah alternatif supaya kita
    bisa menuliskan proses asynchronous layaknya proses synchronois. Bagaimana caranya???
  - dengan gaya penulisan synchronous, kira-kira kode program pesan kopi kita akan seperti :
    
    void main() {
      print('Getting your order...');
      var order = getOrder();
      print('You order: $order');
    }
  
  - Namun ketika kode diatas dijalankan hasilnya tidak akan sesuai yang kita harapkan
    kerena fungsi getOrder() merupakan objek Future.

    Getting your order...
    You order: Instance of 'Future<String>'
  
  - 


*/
