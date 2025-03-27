//Anonymous Function (Lambda)
//-> menyimpan fungsi ke sebuah variabel

/*
  - masih ingat materi function dan cara membuatnya?
  - untuk mendeklarasikan sebuah fungsi kita perlu mendefinisikan nilai kembalian
    dan juga nama fungsinya
    int sum(int num1, int num2) {
      return num1 + num2;
    }
  - kebanyakan fungsi Dart memiliki nama seperti sum(), main(), print()
    kita bisa membuat fungsi yang tidak bernama alias nameless atau anonymous (lambda)
  - untuk membuat lambda kita cukup menuliskan tanda kurung untuk 
    memerima parameter dan body function-nya
    void main() {
      (int num1, int num2) {
        return num1 + num2;
      }
    }

    lalu bagaimana kita bisa menggunakan fungsi tersebut?

    seperti yang telah dijelaskan sebelumnya bahwa function adalah first-class citizen
    maka fungsi juga merupakan sebuah objek yang bisa disimpan ke dalam variabel
    kita bisa menggunakan keyword var atau secara eksplisit menggunakan tipe data Function

  - function expression = membuat kode fungsi lebih ringkas dengan fat arrrow (=>)

*/

//==========================
//Contoh-1
void main() {
  //fungsi disimpan di dalam variabel sum
  var sum = (int num1, int num2) {
    return num1 + num2;
  };

  //atau
  //var sum = (int num1, int num2) => num1 + num2;

  Function printLambda = () {
    print('This is lambda function');
  };

  //atau
  //Function printLambda = () => print('This is lambda function');

  //Memanggil nama variabel dari anonymous function
  print(sum(3, 4));
  printLambda(); //This is lambda function
}

//==========================
