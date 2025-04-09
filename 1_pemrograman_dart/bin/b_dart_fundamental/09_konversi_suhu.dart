//Konversi Suhu

/*
 - Start
 - menerima suhu fahrenheit
 - melakukan konversi suhu celcius = (fahrenheit - 32) *5 / 9
 - menampilkan hasil konversi
   $fahrenheit derajat Fahrenheit = $celcius derajat Celcius


*/

import 'dart:io';

/*
//cara-1
void main() {
  //input suhu fahrenheit
  stdout.write('Masukkan suhu fahrenheit: ');
  var fahrenheit = num.parse(stdin.readLineSync()!);

  //konversi suhu ke celcius
  var celcius = (fahrenheit - 32) * 5 / 9;

  //tampilkan hasil
  print('$fahrenheit derajat Fahrenheit = $celcius derajat celsius');
}
*/

//cara-2 dengan try catch, mengamankan error
void main() {
  try {
    //input suhu fahrenheit
    stdout.write('Masukkan suhu fahrenheit: ');
    var fahrenheit = num.parse(stdin.readLineSync()!);

    //konversi suhu
    var celcius = 5 / 9 * (fahrenheit - 32); //celcius
    var reamur = 4 / 9 * (fahrenheit - 32); //reamur
    var kelvin = 5 / 9 * (fahrenheit - 32) + 273; //kelvin

    //tampilkan hasil
    //2 angka di belakang koma = toStringAsFixed(2)
    //print("Fahrenheit = $fahrenheit");
    print("Fahrenheit = ${(fahrenheit).toStringAsFixed(2)}");
    print('Celcius = $celcius');
    print('Reamur = $reamur');
    print('Kelvin = $kelvin');
  } catch (e) {
    print("error = Input harus berupa angka!");
    print('$e');
  } 
}
