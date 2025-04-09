//Generic
//-> cara untuk membuat class atau method yang dapat bekerja dengan berbagai jenis Objek
//-> kemampuan menambahkan parameter type saat membuat class atau method

/*
    - keyword
    class ClassName<T> {
        ...
        ...
    }


    - jika diperhatikan dokumentasi collection List, sebenarnya tipe dari List tersebut List<E>.
    - Tanda <...> menunjukkan bahwa list adalah tipe generic, tipe yang memiliki tipe parameter
    - Tipe parameter dilambangkan dengan satu huruf kapital seperti E, T, K, atau V
    - E = Element (biasa digunakan di collection atau struktur data)
    - K = Key
    - N = Number
    - T = Type
    - V = Value

    - secara umum generic merupakan konsep yang digunakan untuk menentukan tipe data yang akan kita gunakan
    - kita bisa mengganti tipe parameter generic pada dart dengan tipe yang lebih spesifik
      dengan menentukan instance dari tipe tersebut
    - perhatikan List yang menyimpan beberapa nilai berikut :
    
    List<int> numberList = [1,2,3,4,5];

    - tipe parameter yang digunakan pada variabel list diatas adalah int
      maka nilai yang bisa kita masukkan adalah nilai dengan tipe int
    - Begitu juga jika kita menentukan tipe parameter String, maka tipe yang bisa kita
      masukkan ke dalam list hanya berupa String.

    List<int> numberList = [1, 2, 3, 4, 5];
    List<String> stringList = ['Dart', 'Flutter', 'Android', 'iOS'];
    List dynamicList = [1, 2, 3, 'empat'];  // List<dynamic>

    - berbeda jika kita tidak menentukan tipe parameter dari list
    - List tersebut tidak memiliki tipe yang menjadi acuan bagi compiler sehingga
      semua tipe bisa disimpan ke dalam list
    - Variabel dynamicList di atas sebenarnya masih menerapkan generic dengan tipe dynamic
      sehingga tipenya menjadi List<dynamic>.
    
    - Dari kasus diatas kita bisa simpulkan bahwa Dart membantu kita menghasilkan kode yang
      type safe dengan membatasi tipe yang bisa digunakan ke dalam suatu objek dan menghindari bug
    - Selain itu generic juga bermanfaat mengurangi duplikasi kode

    - Misalnya ketika anda perlu untuk menyimpan objek cache bertipe String dan int
    - Alih-alih membuat dua objek StringCache dan IntCache, anda bisa membuat satu objek saja 
      dengan memanfaatkan tipe parameter dari generic
    
    abstract class Cache<T> {
        T getByKey(String key);
        void setByKey (String key, T value);
    }

    - Dengan dart type system kita bisa mengganti tipe parameter yang digunakan sesuai dengan
      susunan hierarkinya.
    - Perhatikan Hierarki objek Animal berikut :
    01_generic.jpeg

    - Dengan hierarki diatas, jika kita memiliki objek List<Bird> maka objek apa saja 
      yang bisa kita masukkan ke list tersebut ?
    
*/

/*
//=================================
//Contoh-1
void main() {
  List<Bird> birdList = [Bird(), Dove(), Duck()];

  // List<Bird> disesuaikan dengan objek Bird kecuali Animal()
}

class Animal {}

class Bird implements Animal {}

class Dove implements Bird {}

class Duck implements Bird {}

//=================================
*/

/*
    - Seluruh objek Bird atau objek turunannya bisa masuk ke dalam birdList.
      Namun, ketika menambahkan objek dari Animal(), terjadi compile error
      karena objek Animal belum tentu merupakan objek Bird
    
    List<Bird> birdList = [Bird(), Dove(), Duck(), Animal()];  // Error

    - Berbeda jika kita mengisi List<Bird> dengan List<Animal> seperti berikut :

    List<Bird> myBird = List<Animal>();

    - kompiler tidak akan menunjukkan error namun ketika kode dijalankan
      akan terjadi runtime error karena List<Animal> bukanlah subtype dari List<Bird>

    Unhandled exception:
    type 'List<Animal>' is not a subtype of type 'List<Bird>'

    - 

*/

//--- Jago Flutter Bahri ---
/*
//======================================
//Contoh-2 Tanpa Generic

//membuat class untuk int
class IntData {
  int data;
  IntData(this.data);
}

//membuat class untuk double
class DoubleData {
  double data;
  DoubleData(this.data);
}

void main() {
  //membuat objek dari class IntData
  IntData intData = IntData(10);
  DoubleData doubleData = DoubleData(10.5);

  //Cetak Data
  print('IntData: ${intData.data}');
  print('DoubleData: ${doubleData.data}');
}
//======================================
*/

//======================================
//Contoh-3 Generic
class Data<T> {
  T data; //data berdasarkan tipe data yang dimasukkan ke T
  Data(this.data);
}

void main() {
  //buat objek dengan tipe int, double, dan String
  Data<int> intData = Data<int>(10);
  var doubleData = Data<double>(10.5);
  final strData = Data<String>('Halloo');

  //cetak data
  print('IntData: ${intData.data}'); //IntData: 10
  print('DoubleData: ${doubleData.data}'); //DoubleData: 10.5
  print('StringData: ${strData.data}'); //StringData: Halloo
}

//======================================
