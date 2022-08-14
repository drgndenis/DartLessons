import 'musteri.dart';
import 'veri_tabani.dart';

/**
 * * Private degisken ve fonksiyonlar: Bir siniftaki degisken ve metotlari bazen erisime kapatmak isteyebiliriz. Bu durumlarda basina _ isareti koyarak bunlari saklayabiliriz.
 * * getter metotlar: Sinif degiskenlerini okumak icin kullanilan ozel fonksiyonlardir. Bu metotlarin amaci ozellikle private yani dis dunyanin erisimine kapatilmis degiskenlerin gerekli oldugunda okunmasini saglamaktir
 * * setter metotlar: Sinif degiskenlerine veri atamak icin kullanilir. Bu metotlarin amaci ozellikle private degiskenlere veri atamaktir, ayrica veri atamasi yapilirken gerekli olan kontrollerin ve isimlerin yapilmasi icin kullanilir.
*/

void main(List<String> args) {
  // VeritabaniIslemleri adindaki class'ı gorebilmesi icin import 'veri_tabani.dart'; ekliyoruz.
  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPass("deniss", "123");

  Musteri musteri = Musteri(352);
  musteri.bilgileriYazdir();
  musteri.musteriNoAta = 250;
  print(musteri.musteriNoSoyle);

  bool sonuc = db.baglan();

  // baglantinin gerceklesmesi ve gerceklesmemesi durumunda olacaklar
  if (sonuc == true) {
    print("Baglanti gerceklesti");
  } else {
    print("Baglanti gerceklesemedi, tekrar deneyiniz");
  }
}
