
void main(List<String> args) {

  // Verilen 3 double değişkenin ortalamasını bulma
  double num1 = 5.2, num2 = 8.7, num3 = 9.4;

  print(
      "Verilen sayılar; $num1 , $num2 ve $num3'tür. Bu sayıların ortalaması: ${(num1 + num2 + num3) / 3}");

  // Üçgen çeşitleri
  int birinciKenar = 5;
  int ikinciKenar = 7;
  int ucuncuKenar = 4;

  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar) {
    print("Eşkenar Üçgen");
  } else if (birinciKenar == ikinciKenar ||
      ikinciKenar == ucuncuKenar ||
      birinciKenar == ucuncuKenar) {
    print("İkizkenar Üçgen");
  } else {
    print("Çeşitkenar Üçgen");
  }

  // Ekrana 5 defa adını yazdırma

  String isim = "Denis";
  int i = 0;

  /*
  for (i = 0; i < 5; i++) {
    print("for döngüsü ile $isim");
  }
  */

  /*
  while (i < 5) {
    i++;
    print("While döngüsü ile $isim");
    
  }
  */
  
  do {
    print(isim);
    i++;
  } while (i < 5);

  // 1 - 100 arasında olan sayıların 15'e tam bölünenlerin karelerini ekrana yazdırma

  for (var i = 1; i <= 100; i++) {
    if (i % 3 == 0 && i % 5 == 0) {
      print(i * i);
    }
  }

  // Tanımlanan int bir değişkenin faktöriyelini bulma

  int sayi = 3, fakt = 1;

  for (int i = 1; i <= sayi; i++) {
    fakt *= i;
  }
  print("Verilen sayının faktöriyeli: $fakt");

  // Vize ve Final notları alıp dersten geçip geçmediğini bulma ve harf notunu öğrenme
  // Vize %40, Final %60
  double vize = 60, finnal = 80, sonuc;

  vize *= 0.4;
  finnal *= 0.6;

  sonuc = vize + finnal;

  if (sonuc >= 90 && sonuc <= 100) {
    print("Ortalamanız: $sonuc'tır. Bu dersi AA harf notu ile geçtiniz");
  } else if (sonuc >= 80 && sonuc < 90) {
    print("Ortalamanız: $sonuc'tır. Bu dersi BA harf notu ile geçtiniz");
  } else if (sonuc >= 70 && sonuc < 80) {
    print("Ortalamanız: $sonuc'tır. Bu dersi BB harf notu ile geçtiniz");
  } else if (sonuc >= 60 && sonuc < 70) {
    print("Ortalamanız: $sonuc'tır. Bu dersi BB harf notu ile geçtiniz");
  } else if (sonuc >= 55 && sonuc < 60) {
    print("Ortalamanız: $sonuc'tır. Bu dersi CC harf notu ile geçtiniz");
  } else if (sonuc >= 50 && sonuc < 55) {
    print("Ortalamanız: $sonuc'tır. Bu dersi CB harf notu ile geçtiniz");
  } else if (sonuc < 50) {
    print("Ortalamanız: $sonuc'tır. Bu derste FF harf notu ile kaldınız");
  } else {
    print("Yanlış değer girdiniz.");
  }
}
