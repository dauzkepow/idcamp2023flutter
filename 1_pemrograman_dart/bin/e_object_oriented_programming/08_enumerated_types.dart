//Enumerated Types - Enums
//-> tipe data khusus yang memungkinkan kita mendefinisikan sebuah kumpulan nilai tetap

/*
  - keyword = enum

  enum NameVariabel{data, data}

  NameVariabel.data //cara akses

  - bagaimana kita bisa menyimpan banyak nilai konstan / Tetap di satu tempat dan menanganinya secara bersamaan?
  - Solusinya dengan Enumerated Type / Enumerations / Enums
  - Enums mewakili kumpulan konstan yang membuat kode kita lebih jelas dan mudah dibaca

  - Contoh :
  enum Raibow {
    red, orange, yellow, green, blue, indigo, violet
  }

  enum weather {
    sunny, cloudy, rain, storm;
  }

  - enum pada dart memiliki beberapa properti bawaan yang dapat kita gunakan
    untuk :
    1. menampilkan seluruh nilai dalam bentuk list
    2. menampilkan item 
    3. dan indeks dari item tersebut
*/

/*
//==============================
//Contoh-1
void main() {
  //[Rainbow.red, Rainbow.orange, Rainbow.yellow, Rainbow.green, Rainbow.blue, Rainbow.indigo, Rainbow.violet]
  print(Rainbow.values); //menampilkan seluruh nilai dalam bentuk list
  print(Rainbow.blue); //Rainbow.blue - menampilkan item
  print(Rainbow.blue.name);   // blue
  print(Rainbow.orange.index); //1 - menampilkan indeks ke-x
}

enum Rainbow { red, orange, yellow, green, blue, indigo, violet }
//==============================
*/

/*
  - Sejak Dart versi 2.15 Enums memiliki property baru
    untuk menampilkan nilai String setiap itemnya
    dapat menggunakan property .name

  print(Rainbow.blue.name);   // blue

*/

//bisa juga menggunakan enums ke dalam switch statement
//namun perlu menangani semua kemungkinan nilai enums nang ada

/*
//==============================
//Contoh-2
void main() {
  var weatherForecast = Weather.cloudy;

  switch (weatherForecast) {
    case Weather.sunny:
      print("Today's weather forecast is sunny");
      break;
    case Weather.cloudy:
      print("Today's weather forecast is cloudy");
      break;
    case Weather.rain:
      print("Today's weather forecast is rain");
      break;
    case Weather.storm:
      print("Today's weather forecast is storm");
      break;
  }
}

enum Weather { sunny, cloudy, rain, storm }

///Output
///Today's weather forecast is cloudy
//==============================
*/

//Dengan kecanggihan fitur yang disediakan oleh Enums, Dart versi 2.17 rilis dengan fitur baru
//mempunyai layaknya class yang memiliki attribute property dan behaviour method
//Dengan begitu kita dapat memberikan variabel ataupun constructor di dalam Enums

/*
  enum Weather {
    sunny(15),
    cloudy(34),
    rain(69),
    storm(83);

    final int rainAmount; //variabel

    const Weather(this.rainAmount); //constructor
  
  }
*/

//  - dengan kehadiran variabel di dalam Enums, kita dapat akses attribute rainAmount

//  print(Weather.rain.rainAmount);

//  - bisa juga melakukan override method toString().
// dengan begitu kita dapat mengonversi teks sesuai dengan apa yang diinginkan

/*
  enum Weather {
    ...
    ...

    @override
    String toString() => "Today's weather forecast is $name with a $rainAmount% chance of rain";
  }

*/

//Untuk menjalankannya dengan perintah berikut :
//==============================
//Contoh-3
void main() {
  var weatherForecast = Weather.cloudy;

  print(Weather.cloudy.rainAmount); //34
  print(weatherForecast); //mengakses attribute rainAmount
}

enum Weather {
  sunny(15),
  cloudy(34),
  rain(69),
  storm(83);

  final int rainAmount; //variabel

  const Weather(this.rainAmount); //constructor

  //mengonversi teks sesuai dengan apa yang diinginkan
  @override
  String toString() =>
      "Today's weather forecast is $name with a $rainAmount% chance of rain";
}

///Output
///34
///Today's weather forecast is cloudy with a 34% chance of rain
//==============================
