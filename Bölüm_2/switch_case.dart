void main(List<String> args) {
  // Switch  kullanirken sadece int ve String degerleri kullanabiliyoruz. Double ve boolean gibi yapilari kullanamiyoruz.

  String notDegeri = "BA";

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90 - 100 aralığındadır");
      break;

    case "BA":
      print("Notunuz 80 - 89 aralığındadır.");
      break;

    case "BB":
      print("Notunuz 70 - 79 aralığındadır.");
      break;

    case "CB":
      print("Notunuz 60 - 69 aralığındandır.");
      break;

    case "CC":
      print("Notunuz 50 - 59 aralığındadır.");
      break;

    case "FF":
      print("Notunuz 49 - 0 aralığındadır.");
      break;

    default:
      {
        print("Girilen Harf Notu yanlış bir değer aralığındadır.");
      }
  }

  int sayi = 8;

  /* 
  * ~ ile yuvarlama yapmis oluyoruz. yani burada sayi degerimizin 12 oldugunu
  * dusunelim. 12 ~/ 10 dedigimizde bize double bir deger yerine int bir deger donduruyor.
  * 12 / 10 = 1.2'dir
  * 12 ~/ 10 yaptigimizde bu 1.2 sayisini 1'e yuvarlamis oluruz. 
  */
  int bolum = sayi ~/ 10;

  switch (bolum) {
    case 3:
      print("Sayı 30'a eşit ya da 30'dan büyüktür.");
      break;
    case 2:
      print("Sayı 20'ye eşit ya da 20'dan büyüktür.");
      break;
    case 1:
      print("Sayı 10'a eşit ya da 10'dan büyüktür.");
      break;
    case 0:
      print("Sayı 10'dan küçüktür.");
      break;
    default:
      {
        print("Yanlış bir değer girdiniz.");
      }
  }
}
