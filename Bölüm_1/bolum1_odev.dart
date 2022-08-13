void main(List<String> args) {
  String ad = "Denis";
  var soyad = "Dragan";
  int yas = 24;

  print("Benim adım $ad $soyad, yaşım $yas ve tüm ismimdeki karakter sayısı ${ad.length + soyad.length}'tir");

  // Üçgen çevre hesaplama
  double kenar1, kenar2, kenar3;
  kenar1 = 3;
  kenar2 = 5;
  kenar3 = 7;

  print("Üçgenin 1. kenarı: $kenar1 cm 2. kenarı: $kenar2 cm 3. kenarı: $kenar3 cm'dir. Üçgenin çevresi ${kenar1 + kenar2 + kenar3}");
}
