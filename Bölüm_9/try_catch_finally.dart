/*
 * Try - catch ile try yani deneme kismina hata cikabilecek kismi yaziyoruz ve ordindan catch kismina parantez icine e yaziyoruz buraya yazilan e degeri catch icinde print dedigimizde ekrana hataya verir.
 ! Eger hata cikmaz ise kodumuz normal bir sekilde calisiyor hata cikarsa cikan hatayı yazıyor
 * Hata ciksada cikmasada kesin olarak calisacak yer finally blogudur
 */

void main(List<String> args) {
  print("Program basladi");

  try {
    int number = 100 ~/ int.parse('denis');
    print(number);
  } on IntegerDivisionByZeroException {
    print("Bölme işlemince bölen 0 olamaz");
  } on FormatException catch (e) {
    print(e.message);
    print(e.source);
  } catch (e) {
    print("Hata çıktı: $e");
  } finally {
    print("Program bitti");
  }
}
