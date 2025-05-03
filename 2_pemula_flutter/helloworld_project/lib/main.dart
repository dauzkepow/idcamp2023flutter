import 'dart:math';

//Import digunakan untuk memanggil fungsi-fungsi dari berkas Flutter yang lain
//import kode library bawaan Flutter
//Library tersebut menyediakan widget yang termasuk dalam material Design
import 'package:flutter/material.dart';

/*
//=============================================
//1_Contoh Hello World bawaan flutter
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

//=============================================
*/

/*
//=============================================
//2_Hello World Sederhana App
//main() = kode dasar project Flutter
void main() {
  runApp(MyApp()); //menjalankan runApp() memanggil MyApp()
}

//buat class MyApp dari turunan StatelessWidget{...}
//MyApp di sini merupakan sebuah class yang menampilkan komponen
//Flutter ke layar atau dikenal dengan Widgets.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Hello World')),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}
/*
  - Setiap komponen di dalam Flutter terdiri dari widget, aplikasi Flutter sendiri merupakan
  widget. 
  - kelas MyApp merupakan sebuah widget mengembalikan atau menampilkan widget MaterialApp.
  - MaterialApp merupakan widget bawaan Flutter yang akan menjadi fondasi dari aplikasi
  - MaterialApp umum digunakan supaya aplikasi bisa menerapkan material design.
  - MaterialApp mengatur beberapa hal, termasuk tema, tampilan utama aplikasi, rute untuk 
    navigasi antar halaman, dll
  - Scafold = mendesain struktur layout dasar yang sesuai dengan material design.
  - Scafold dapat mengatur App Bar, Floating Action Button, Drawer, dll
  - Ibarat Rumah, 
    MaterialApp = sebagai Tanah
    Scafold = tembok dan bangunan
  - widget Text untuk menampilkan teks
  - Center() = supaya widget didalamnya (child) tampil di posisi tengah
  
  - Documentation is your best friend
  - https://api.flutter.dev/flutter/material/MaterialApp-class.html
  - https://api.flutter.dev/flutter/material/Scaffold-class.html
  - https://api.flutter.dev/flutter/widgets/Center-class.html
  - https://api.flutter.dev/flutter/widgets/Text-class.html
*/
//=============================================
*/

/*
//=============================================
//3_Random Number Generator App
void main() {
  runApp(const MyApp());
}

//class MyApp dari turunan abstract class StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //fungsi MaterialApp dengan parameter title, home, dll
    return MaterialApp(
      title: "Random Number Generator App",
      home: const HomePage(), //untuk buat halaman UI-nya
    );
  }
}

//ketika ada state yang berubah = gunakan StatefulWidget
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //buat variabel
  int _number = 0;

  //Build UI-nya
  @override
  Widget build(BuildContext context) {
    //fungsi Scaffold dengan parameter appBar, body, floatingActionButton, dll
    return Scaffold(
      appBar: AppBar(title: const Text("Random Number Generator App")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Random Number: "),
            Text(
              _number.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //ketika di klik angka _number berubah
        onPressed: () {
          int number = Random().nextInt(10); //Random(). library bawaan Dart
          //ubah yang awalnya 0 menjadi random
          setState(() {
            _number = number;
          });
        },
        child: Icon(Icons.shuffle),
      ),
    );
  }
}

//=============================================
*/

/*
//=============================================
//4_Dari Erico Darmawan
//buat fungsi main() fungsi utama yang diajalankan
void main() {
  //MyApp app = const MyApp();
  //method runApp() berfungsi untuk menjalankan aplikasi flutter ke layar
  //method runApp() = menampilkan widget ke layar
  //runApp() memiliki parameter berupa widget
  //agar bisa memberikan objek widget ke dalam runApp() maka perlu membuat class
  //yang merupakan turunan dari class widget
  runApp(const MyApp());
}

//bisa menurunkan class dari dua buah class bawaan flutter stateless dan statefull
//stateless dan statefull turunan dari abstract class Widget
//class apapun turunan dari stateless dan statefull termasuk widget
//objek class MyApp untuk mengisi parameter method runApp()
//StatelessWidget merupakan abstract class dan memiliki method yang di @override bernama build()
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //method build() untuk mengembalikan widget yang akan ditampilkan ke layar sebagai
    //tampilan dari class ini yaitu MyApp
    //untuk tampilan MyApp kita akan kembalikan widget bawaan Flutter bernama MaterialApp()
    //MaterialApp template dari Material Design
    //didalam constructor MaterialApp() terdapat named parameter bernama home
    //home meminta sebuah widget yang akan menjadi tampilan utama dari materialApp ini
    //oleh karena itu kita buat halaman utama kita yang bernama MainPage
    //semua class yang turunan dari StatelessWidget sebaiknya memiliki constructor yang meminta
    //parameter key sehingga bisa digunakan class diatasnya
    //
    //MainPage mainPage = const MainPage();
    //MaterialApp materialApp = MaterialApp(home: mainPage);
    //return materialApp;
    return const MaterialApp(home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  //return objek Scaffold()
  //Scaffold = kerangka dari sebuah halaman
  @override
  Widget build(BuildContext context) {
    //constructor Scaffold memiliki banyak parameter (appBar, body, Drawer, dll)
    //appBar widget diatas page
    //body widget badan page
    //constructor appBar memiliki parameter (title = widget sebagai judul)
    //objek text menampilkan teks aplikasi pertamaku
    //====================================================
    //sebuah objek dapat langsung dibuat tanpa ditamping di variabel
    //Text title = Text("Aplikasi pertamaku");
    //Text body = Text("Hello Cruel World");
    //Center center = const Center(child: Text("Hello Cruel World"));
    //AppBar appBar = AppBar(title: Text("Aplikasi pertamaku"));
    /*
    Scaffold scaffold = Scaffold(
      appBar: AppBar(title: Text("Aplikasi pertamaku")),
      body: const Center(child: Text("Hello Cruel World")),
    );
    */
    return Scaffold(
      appBar: AppBar(title: Text("Aplikasi pertamaku")),
      body: const Center(child: Text("Hello Cruel World")),
    );
    //appBar: = named parameter dari constructor Scaffold
    //AppBar = objek
  }
}

//=============================================
*/

//=====================================================================
//Materi Pengenalan Widget -> Stateless Widget dan Stateful Widget

/*
//=====================================================================
//-- Stateless Widget
//buat widget Heading - untuk membuat judul
class Heading extends StatelessWidget {
  //karena statelessWidget, maka state yang ada di dalam class tersebut harus dibuat final
  final String text; // state text bersifat final

  //nilainya hanya dapat diisi melalui constructor class-nya
  // lalu state text masuk ke constructor
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //objek Text dengan beberapa parameternya
    return Text(
      text,
      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}

//panggil widget ke project

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        body: Center(
          //Panggil class widget Heading untuk menampilkan text yang sudah dibuat
          //Fungsi Heading, parameter text
          child: Heading(text: 'Hello World!'),
          //child: Text('Hello World!'),
        ),
      ),
    );
  }
}
//=====================================================================
*/

//=====================================================================
//-- Stateful Widget

//buat BiggerText
class BiggerText extends StatefulWidget {
  final String text;

  const BiggerText({Key? key, required this.text}) : super(key: key);

  @override
  State<BiggerText> createState() => _BiggerTextState();
}

class _BiggerTextState extends State<BiggerText> {
  double _textSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(widget.text, style: TextStyle(fontSize: _textSize)),

        ElevatedButton(
          onPressed: () {
            //Mengubah nilai state harus dilakukan pada fungsi setState
            setState(() {
              _textSize = 32.0; //ukuran text diubah menjadi 32
            });
          },
          child: const Text("Perbesar"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 10.0;
            });
          },
          child: const Text("Perkecil"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _textSize = 16.0;
            });
          },
          child: const Text("Ukuran Normal"),
        ),
      ],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        //panggil class BiggerText dengan parameter text
        body: Center(child: BiggerText(text: "Hello World!")),
        //body: Center(child: Text('Hello World!')),
      ),
    );
  }
}

//ketika tombol Perbesar ditekan text Hello World akan membesar karena state _textSize
//diubah nilainya

//Mengubah nilai state harus dilakukan pada fungsi setState

//=====================================================================
