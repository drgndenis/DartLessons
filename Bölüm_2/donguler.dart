void main(List<String> args) {


  // for dongusune bir ad vererekte dongu olusturabiliriz.
  int i,j;
  disDongu:
  for (i = 1; i <= 10; i++) {
    
    print("--------------------");
    // Eger i 3 sayisina esit ise disDongu'yu durdurur
    if(i == 3) {
      // disDongu yani icinde i degeri bulunan dor dongusu durur ve dongu sonlanır.
      break disDongu;
    }

    // ic ice for dongusu ile carpim tablosu
    for (j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }

  }

  // Normal for kullanimi
  for (var k = 0; k < 5; k++) {
    print("Deger: $k");
  }



  int sayac = 0;
  while (sayac < 3) {
    print("Sayı değer: $sayac");
    // sayac adindaki degiskenin dongude 1'er 1'er artmasi
    sayac++;
  }

  int sayac2 = 0;

  do {
    print("Okunan sayaç değeri: $sayac2");
    sayac2++;
  } while (sayac2 < 5);
}
