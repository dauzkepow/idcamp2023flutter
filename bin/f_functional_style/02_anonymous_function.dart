//Anonymous Function (Lambda)
/*
  - masih ingat materi function dan cara membuatnya?
  - untuk mendeklarasikan sebuah fungsi kita perlu mendefinisikan nilai kembalian \
    dan juga nama fungsinya
    int sum(int num1, int num2) {
      return num1 + num2;
    }
  - kebanyakan fungsi Dart memiuliki nama seperti sum(), main(), print()
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
*/
