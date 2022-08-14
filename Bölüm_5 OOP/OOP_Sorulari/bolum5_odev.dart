/*
  Soru-1: CemberDaire isimli sunuf oluşuturun. Bu sınıfın yarıçap alan kurucusu olmalı (set). Ayrıca cevre ve hesaplayan metotlar olmalı (PI sayısı 3.14 al)

  Soru-2: Ogrenci isimli sınıf oluştur. Bu sınıfta ogrencinin idsi ve not değeri olmalı. 100 elemanlı bir listede id ve not degerlerini rastgele olusturarak bu ogrencileri saklayın ve bu ogrencileri yazdıran metodu yazın.
*/

import 'dart:math';

import 'cember_daire.dart';
import 'ogrenci.dart';

void main(List<String> args) {
  CemberDaire c1 = CemberDaire(3);
  print("Çevre: ${c1.cevreHesapla()}");
  print("Alan: ${c1.alanHesapla()}");


  List<Ogrenci> ogrenciler = List.filled(100, Ogrenci());

  ogrenciDoldur(ogrenciler);
  for (var degerler in ogrenciler) {
    print(degerler);
  }

  print("Ortalama: ${ogrenciOrtalamaHesapla(ogrenciler)}");
}

void ogrenciDoldur(List<Ogrenci> liste) {
  for (var i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci(ogrId: Random().nextInt(1000), ogrNot: Random().nextInt(100));
  }
}

double ogrenciOrtalamaHesapla(List<Ogrenci> list) {
  int toplam = 0;

  for (Ogrenci ortalama in list) {
    toplam += ortalama.ogrNot;
  }
  return toplam / list.length;
}
