void main(List<String> args) {
  /*
   *  final uygulama çalıştıktan sonra çalışır
   * internet üzerinden belli verileri getireceksek bu veriler uygulama çalıştıktan sonra gelir ve final kullanmamız gerekir.
   */
  final date = DateTime.now();
  print(date);

  /*
   * Compiler anında belli olan değerler için const kullanırız.
   * const çalışmadan evvel değeri bilinen yapılar için kullanılır.
  const date2 = DateTime.now();
  print(date2);
  */

  /*
   * final ile oluşturulmuş iki listenin içindeki değişkenler aynı olsa bile bellekte farklı yerlerde tutulduğundan if-else döngüsündeki else kısmı çalışacaktır. 
   */
  final list = [1, 2, 3];
  final list2 = [1, 2, 3];

  list.add(
      5); // * final liste oluştursak bile add methodunu kullanmaya devam ederiz
  // list = [5, 6]; // * fakat daha önceden oluşturduğumuz final listesini yeni bir liste gibi tanımlayamayız.

  if (list == list2) {
    print("Equal");
  } else {
    print("Not equal");
  }

  const clist = [2, 3, 4];
  const clist2 = [4, 5, 6];
  // * const olan listeye add ile ekleme yapmak istedigimiz -> Unsupported operation: Cannot add to an unmodifiable list hatası alırız.
// clist.add(5);
// clist2.add(8);
}
