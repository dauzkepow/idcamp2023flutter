//# Numbers
//int dan double

/*
//int
var number = 2020;
var hex = 0xDEADBEEF;

//double
var decimal = 1.2;
var pi = 3.14;

untuk operasi perhitungan
perlu library dart:math


*/

//konversi
void main() {
  // String -> int
  var eleven = int.parse('11');
  print(eleven.runtimeType); //int

  // String -> double
  var elevenPointTwo = double.parse('11.2');
  print(elevenPointTwo.runtimeType); //double

  // int -> String
  var elevenAsString = 11.toString();
  print(elevenAsString.runtimeType); //String

  // double -> String
  var piAsString = 3.14159.toStringAsFixed(2); // String piAsString = '3.14'
  print(piAsString.runtimeType); //String
}
