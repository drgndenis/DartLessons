void main(List<String> args) {
  /*
   * Constructor'ımızı const olarak tanımladıktan sonra oluşturmuş olduğumuz class'tan obje oluşturduğumuzda bunların eşit olduğunu görürüz. const değerini kullanmasaydık "not equal" değeri dönecekti.
   ! Oluşturmuş olduğumuz objeler bellekte farklı yerleri değil, aynı yeri gösterir. 
   * immutable data in dart diyerek bir çok kaynağa erişebiliriz.
   */
  const Student emre = Student(5, "Emre");
  const Student emre2 = Student(5, "Emre");
  // emre.id = 10; // * final olarak oluşturduğumuzdan değerini değiştiremiyoruz

  if (emre == emre2) {
    print("Equal");
  } else {
    print("Not equal");
  }
}

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}
