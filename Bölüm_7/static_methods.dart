void main(List<String> args) {
  Math math = Math(10, 20);
  print("Total: ${math.addition()}");
  print("Conclution: ${math.subtraction()}");

  Math math2 = Math(25, 5);
  print('Math2 total: ' + math2.addition().toString());

  // * Class variable
  print(Math.PI);
  Math.sayMath();

  /*
   * Eger totalTransaction degiskeni static olarak tanimlamasaydik degiskene math veya math2 ile ulasabilirdik ve böyle ulastigimizda sadece ulastigimiz yerde bulunan degerleri alacaktı. math ile ulastigimizda (print("Total number of transaction: ${math.totalTransaction}"); dedigimizde) 2 degerini, math2 degeri ile ulastigimizda ise 1 degerini verecekti.
   *  Toplam degeri almak istedigimiz icin static ile degiskeni tanimlayip class uzerinden ulasiyoruz ve 3 sonucu alıyoruz.
   *   
  */
  print("Total number of transaction: ${Math.totalTransaction}");
}

class Math {
  // * Instance variable
  int firstNumber = 0;
  int secondNumber = 0;

  // * Class variable - sinif degiskeni
  static double PI = 3.14;
  static int totalTransaction = 0; // degisken nesneye degiş sinifa bagli oldugu (static oldugundan) icin her nesne uretildiginde totalTransaction sifirlanmaz

  static void sayMath() {
    print("Math Math Math");
  }

  // constructor
  Math(this.firstNumber, this.secondNumber);

  int addition() {
    totalTransaction++;
    return firstNumber + secondNumber;
  }

  int subtraction() {
    totalTransaction++;
    return firstNumber - secondNumber;
  }
}
