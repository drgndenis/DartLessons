/*
  1- Sehirleri tutan bir liste oluştur, 4 tane il ekleyip sırasıyla ekrana yazdır.

  2- Keyleri string, value'leri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci cekirdek sayısının, ram miktarını ve ssd olup olmadığı bilgisini tut ve ekrana yazdır.

  3- Her bir elemanında keyleri string, value'leri dynamic map olan bir liste oluştur.
    Bu listedeki her bir elaman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında bu listeyi okunaklı bir şekilde yazdırın.
    Örnek; listenin 1. elemanından bulunan il ankara, plaka kodu: 06, ilçe sayısı: 10 gibi

  4- 5 elemanlı iki farklı liste oluştur. Elemanlar 0-50'ye rastgele şekilde oluşturulsun. 
  Bu elemanları tek bir listeye aktar. 
  Oluşan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdirin

  5- Kullanıcan aldığımız integer pozitif sayıları bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // Soru-1 Cevabı
  List<String> sehirler = ["Adana", "Ankara", "İstanbul", "Çanakkale"];
  for (var i in sehirler) {
    print(i);
  }

  // Soru-2 Cevabı
  Map<String, dynamic> parcalar = {
    "cekirdek_sayisi": 16,
    "ram": 16,
    "ssdVarMi": true
  };

  for (var j in parcalar.entries) {
    print("Key: ${j.key} değeri: ${j.value}");
  }

  // Soru-3 Cevabı
  List<Map<String, dynamic>> ilBilgileri = <Map<String, dynamic>>[];

  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1["il_adi"] = "Ankara";
  eklenecekSehir1["ilce_sayisi"] = 10;
  eklenecekSehir1["plaka_kodu"] = 06;

  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2["il_adi"] = "İstanbul";
  eklenecekSehir2["ilce_sayisi"] = 27;
  eklenecekSehir2["plaka_kodu"] = 34;

  var eklenecekSehir3 = <String, dynamic>{
    "il_adi": "Bursa",
    "ilce_sayisi": 9,
    "plaka_kodu": 16
  };

  ilBilgileri.add(eklenecekSehir1);
  ilBilgileri.add(eklenecekSehir2);
  ilBilgileri.add(eklenecekSehir3);
  ilBilgileri.add({"il_adi": "İzmir", "ilce_sayisi": 12, "plaka_kodu": 35});

  for (var i = 0; i < ilBilgileri.length; i++) {
    var oankiEleman = ilBilgileri[i];
    print(
        "Listenin ${i + 1}. elemanında bulunan Şehir Adı: ${oankiEleman["il_adi"]}, ilçe sayısı: ${oankiEleman["ilce_sayisi"]}, plaka kodu: ${oankiEleman["plaka_kodu"]}");
  }

  // Soru-4 Cevabı
  var sonListe = <int>[];

  List<int> list1 = List.filled(5, 0);
  var list2 = List<int>.filled(5, 0);

  for (var i = 0; i < 5; i++) {
    list1[i] = Random().nextInt(50);
    list2[i] = Random().nextInt(50);
  }

  sonListe = [...list1, ...list2];

  Set<int> sonSetYapisi = Set();

  for (var gecici in sonListe) {
    sonSetYapisi.add(gecici * gecici);
  }

  // print("First list: $list1, Second list: $list2");
  print(sonListe);
  print(sonSetYapisi);

  // Soru-5 Cevabı
  int sayi = 0; // sayi değişkenine 0 veriyoruz

  List<int> list = []; // Boş listemizi oluşturuyoruz

  // while true olduğu müddetçe fonksiyon çalışacak
  while (true) {
    print("Bir sayı giriniz: ");
    sayi = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma

    // Kullanıcı 0 girerse
    if (sayi == 0) { 
      int toplam = 0;
      double sonuc;

      for (var i = 0; i < list.length; i++) {
        toplam += list[i]; // oluşturduğumuz toplam değerine girilen sayıları atama
      }

      sonuc = toplam.toDouble() / list.length; // Ortalamayı bulma
      print(sonuc);
      break; // break komutu olmazsa döngü çalışmaya devam eder
    } else {
      list.add(sayi); // Kullanıcı 0 dışında sayı girdiği müddetçe girilen sayıyı listeye eklemeye devam eder
    }
  }
}
