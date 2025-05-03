//Stateless dan Statefull Widget
/*
  - Aplikasi Flutter adalah widget
  - membuat tombol, menampilkan gambar, text dan tampilan di tengah merupakan widget
  - Kita bisa membuat widget sendiri untuk digunakan di lain waktu ataupun dibagikan kepada
    developer lain (dalam bentuk packages).
  
  - Apa itu State ?
  -> data atau variabel yang ada pada suatu widget.
  widget menyimpan data yang artinya dapat berubah sesuai interaksi pengguna

  Karena Flutter menggunakan paradigma OOP state biasanya menjadi properti dari class :

  class ContohWidget extends StatelessWidget{
    final String _judul;
    ...
  }

  variabel _judul merupakan contoh pendeklarasian state pada suatu widget


  - Stateless Widget
  -> widget yang nilai state-nya tidak dapat berubah (immutable). maka widget 
  bersifat statis dan memiliki interaksi yang terbatas
  
  Parameter Widget
  Constructor
  Build Widget

  class Heading extends StatelessWidget {
  final String text; //parameter widget

  const Heading({Key? key, required this.text}) : super(key: key); //buat constructor

  @override
  Widget build(BuildContext context) {
    //Build isi dari sebuah widget
    return Text(
      text,
      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}


  - Statefull Widget
  -> widget yang state-nya dapat berubah-ubah nilai-nya, yang berarti 
  StatefulWidget bersifat dinamis dan memiliki interaksi yang tak terbatas

  Parameter Widget
  Constructor
  State
  Build Widget

  class ContohStateful extends StatefulWidget {
 
    final String parameterWidget; // ini parameter widget
 
    const ContohStateful({Key? key, required this.parameterWidget}) : super(key: key); //Constructor
 
    @override
    _ContohStatefulState createState() => _ContohStatefulState();
}
 
class _ContohStatefulState extends State<ContohStateful>{
    String _dataState; // ini state dari Widget ContohStateful
 
    @override
    Widget build(BuildContext context){
        // isi sebuah widget
    }
}

  - Perhatikan properti setiap class-nya
  - pada class ControhStateful propertinya hanya berupa parameter ketika panggil 
    ContohStateful, parameter tersebut tidak wajib ada
  - Sedangkan pada class _ContohStatefulState, properti String _dataState; merupakan
    state yang sebenarnya
  - Mengubah nilai state harus dilakukan pada fungsi setState

  Buka kembali project Hello_world_project-nya
  tambahkan stateless dan statefull 

*/
