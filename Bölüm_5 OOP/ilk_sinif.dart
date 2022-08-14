void main(List<String> args) {
  // Ogrenci class'inda degisken olusturma
  Ogrenci denis = Ogrenci();
  // degiskene degerleri verme
  denis.ogrAd = "Denis";
  denis.ogrNo = 1294;
  denis.aktifMi = true;
  // Class icinde bulunan metot kullanimi
  denis.dersCalis();
  print("Öğrenci numarası: " +
      denis.ogrNo.toString() +
      "\n" +
      "Öğrenci Adı: " +
      denis.ogrAd +
      "\n" +
      "Öğrenci aktif mi: " +
      denis.aktifMi.toString());
}

// class yapimiz
class Ogrenci {
  int ogrNo = 1;
  String ogrAd = "";
  bool aktifMi = true;

  // class yapisi icinde bulunan metot
  void dersCalis() {
    print("$ogrAd ders çalışıyor..");
  }
}
