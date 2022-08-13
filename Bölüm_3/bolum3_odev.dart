/*
  SORU1: Parametre olarak bir tane int sayı alan fonksiyon yazınız.
  Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün

  SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
  Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarak hesaplama yapsın.

  SORU3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yaz.
  Bu fonksiyon kenar değerlerine göre bu üçgenin çeşitkenar, ikizkenar veya eşkenar olduğunu
  ekrana yazdırsın, geriye değer döndürmesin.
*/

void main(List<String> args) {
  
  print("Toplamları: " + ciftSayiTopla(35).toString());
  print("Daire alanı: " + daireAlani(2).toString());
  ucgenCesidi(3,3,3);
}

// SORU 1 CEVABI
int ciftSayiTopla(int sayi) {
  int toplam = 0;

  for (int i = 1; i <= sayi; i++) {
    if (i % 2 == 0) {
      toplam += i;
    }
  }
  return toplam;
}

// SORU 2 CEVABI
double daireAlani(int yaricap, [double pi = 3.14]) {
  return yaricap.toDouble() * yaricap.toDouble() * pi;
}

// SORU 3 CEVABI
void ucgenCesidi(
    [int birinciKenar = 1, int ikinciKenar = 1, int ucuncuKenar = 1]) {
  if (birinciKenar == ikinciKenar && birinciKenar == ucuncuKenar) {
    print("Eşkenar üçgen");
  } else if (birinciKenar == ikinciKenar ||
      ikinciKenar == ucuncuKenar ||
      birinciKenar == ucuncuKenar) {
    print("İkizkenar Üçgen");
  } else {
    print("Çokkenar üçgen");
  }
}
