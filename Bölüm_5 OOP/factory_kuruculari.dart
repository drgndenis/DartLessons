void main(List<String> args) {
  Ogrenci denis = Ogrenci(5, "Denis");
  Ogrenci beyza = Ogrenci.idSiz("Beyza");
  Ogrenci ayse = Ogrenci.facKurucu(-5, "Ayşe");
  print(ayse.id);
  print(ayse.isim);
  print(denis.isim);
  print(beyza.id);
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("Çalıştı");
  }

  Ogrenci.idSiz(this.isim) {
    print("İsimlendirilmiş kurucu çalıştı");
  }

  // factory sayesinde return kullanabiliriz ama onun dışında contructorda return edemeyiz
  factory Ogrenci.facKurucu(int id, String isim) {
    if (id <= 0) {
      return Ogrenci(999, isim);
    } else {
      return Ogrenci(id, isim);
    }
  }
}
