import 'tekrar_private.dart';

void main(List<String> args) {
  Students beyza = Students();
  beyza.name = "Beyza";
  beyza.surname = "Kolaç";
  beyza.schnum = 327;
  beyza.ogrenciCagir();

  Arabalar chevrolet = Arabalar("Camaro", 2013, 127500, "Siyah Beyaz");
  chevrolet.bilgileriGoster();
  Arabalar bmw = Arabalar.arabaModeli("BMW 3.20");
  bmw.bilgileriGoster();

  wifiBilgileri wb = wifiBilgileri();
  wb.Bilgiler();
}

class Students {
  String name = "", surname = "";
  int schnum = 0;

  void ogrenciCagir() {
    print("Öğrenci isim soyismi: $name $surname" +
        "\n" +
        "Öğrenci Numarası: $schnum");
  }
}

class Arabalar {
  String arabaModel = "";
  int arabaYil = 1950, km = 0;

  String arabaRenk = "";

  Arabalar(this.arabaModel, this.arabaYil, this.km, this.arabaRenk);

  void bilgileriGoster() {
    print("Arabanın modeli: $arabaModel" +
        "\n" +
        "Arabanın yılı: $arabaYil" +
        "\n" +
        "Arabanın rengi: $arabaRenk" +
        "\n" +
        "Araba km: $km");
  }

  // Dart programlama dilinde overloading olmadığı için constructor methodumuzda bulunan değişkenlerden belli olanları kullanıcaksak
  // bu şekilde tanımlama yapmamız gerekiyor.
  Arabalar.arabaModeli(this.arabaModel);
}
