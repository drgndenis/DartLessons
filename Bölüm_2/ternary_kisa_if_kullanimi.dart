/*
 * Ternary if yazimi ile kisa bir sekilde sart belirten ifadeler yazılabilir.
 * Kullanimi: kosul ? expression1 : expression2
 * Eğer kosul dogru ise expression1 degil ise expression2 degeri kullanilir.

 * Kisa kullanimi ile değiskenlerin null degerde olup olmadiklarida kontrol edilebilir
 * Ornegin; expression1 ?? expression2
 * Burada expression1 eger null degilse kullanilir, eger null ise expression2 kullanilir.
*/
void main(List<String> args) {
  int sayi1 = 4;
  int sayi2 = 6;
  int kucukSayi;

  /*
  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  print("Küçük sayı: $kucukSayi");
  */

  // Bu gösterim daha doğru
  // sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;

  // Bu gösterim biraz saçma, inputu console kısmından alırsak hangisinin büyük veya küçük olduğunu bilemeyiz
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("Küçük sayı: $kucukSayi'dır.");

  String? ad = "Denis";
  String? soyad = null;
  String mesaj;

  // ?? olduğunda ilk değer null ise yazılan iki değer kullanır. ad ?? soyad kısmında, ad değişkeni null değere sahip ise mesaj = soyad olur.
  mesaj = soyad ?? ad;
  print("Merhaba $mesaj");
}
