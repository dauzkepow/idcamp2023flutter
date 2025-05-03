//Apa Itu Widget
/*
    Flutter = kumpulan widget
    Widget = kumpulan blok kode untuk membangun aplikasi
    ibaratkan lego ketika membangun aplikasi Flutter kita harus berfikir meyusun LEGO
    
    Ketika menggunakan widget kita tinggal panggil nama widget dan bila ada property
    atau parameter pada widget tersebut tinggal kita isikan properti atau parameternya

    Objek Center dengan named child parameter

    Center(
        child: Text('Hello world!'),
    )

    - diatas contoh pemanggilan widget Center (untuk membuat widget di dalamnya 
      di posisi tengah) . Tinggal ketikkan Center lalu tambahkan properti child di dalamnya

    - Perlu diketahui bahwa sebagian besar widget bawaan memiliki pola parent-child.
      Seperti halnya Center yang memiliki child yang artinya di dalam child 
      bisa terdapat widget lagi. Maka penulisan seperti ini :

    Center( // parent dari Button
        child: TextButton( // child dari Center dan parent dari Text
            child: Text(), // child dari TextButton
        ),
    )


    - Pada contoh diatas widget Center dan Button hanya dapat memiliki satu anak (child)
    - Ada pula widget yang dapat memiliki banyak anak (children) 
      seperti Row, Column, ListView, GridView, dan semacamnya

    Row(
        children: <Widget>[
            //di dalam children akan berisi banyak widget
        ]
    )

    - Contoh diatas adalah widget Row yang memiliki children. Di dalam children nantinya
      kita bisa menambahkan banyak widget. Berbeda dengan child yang diisi langsung 
      dengan sebuah Widget, children akan berisi sebuah list yang dialamnya 
      diisi dengan banyak widget


*/
