void main(List<String> args) {
  /*
  var chevrolet = Araba();
  chevrolet.marka = "Chevrolet Camaro";
  chevrolet.yil = 1977;
  chevrolet.renk = "Siyah beyaz";
  chevrolet.otomatikMi = true;

  chevrolet.arabaBilgileri();
  */

  var bmw = Araba("BMW 3.20", 2017, "Lacivert", false);
  bmw.arabaBilgileri();

  var chevrolet = Araba("Chevrolet Camaro", 2013, "Siyah Beyaz", true);
  chevrolet.arabaBilgileri();

  var fiat = Araba("Fiyat Egea");
  fiat.arabaBilgileri();
}

class Araba {
  var marka, yil, renk, otomatikMi;

  // this kullaniminin diger sekli (daha az yer kapladigi icin daha cok tercih edilir)
  Araba(this.marka, [this.yil, this.renk, this.otomatikMi]) {
    if (yil == null || renk == null || otomatikMi == null) {
      yil = "tanımlanmadı";
      renk = "tanımlanmadı";
      otomatikMi = "tanımlanmadı";
    }
  } // this kullanımı 2 farklı çeşittede olabilir

  /*
   * 1. kullanim asagidaki gibidir 
  Araba(var marka, var yil, var renk, var otomatikMi) {
    // This kullanımı
    this.marka = marka;
    this.yil = yil;
    this.renk = renk;
    this.otomatikMi = otomatikMi;
  }
  */

  void arabaBilgileri() {
    print(
        "Arabanın markası $marka, yılı $yil, arabanın rengi: $renk, otomatik mi: $otomatikMi");
  }
}
