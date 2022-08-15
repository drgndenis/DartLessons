/**
 * abstract metotlar alt siniflarca override edilmek zorundadir
 * 
 * Bir sinifta bir tane abstract metot varsa o sinif mutlaka abstract olarak tanimlanmalidir.
 */

// Her sinif tek bir siniftan turetilir. Bir sinif birden fazla siniftan turetilemez yani 'extends' edilemez.
void main(List<String> args) {
  ISekil kare = Kare(5);
  print("Karenin alanı: ${kare.alanHesapla()}");
  print("Karenin çevresi: ${kare.cevreHesapla()}");

  ISekil dortgen = Dikdortgen(4, 6);
  print("Dikdörtgenin alanı: ${dortgen.alanHesapla()}");
  print("Dikdörtgenin çevresi: ${dortgen.cevreHesapla()}");
}

// soyut siniflarda tanimladigimiz metotlarin icerigini yazamayiz. En az bir tane metotumuzun icerigini yazamiyorsak bu bir soyut sinif yani abstract sinif olur.
abstract class ISekil {
  /**
   * alanHesapla ve cevreHesapla metotlarimizin icerigini tanimlayamayiz, bunun nedeni kare, dikdortgen gibi sekillerimizin cevre ve alan hesaplari birbirinden farklidir.
   */
  double alanHesapla();
  double cevreHesapla();
}

class Kare extends ISekil {
  int kenar;
  Kare(this.kenar);

  // abstract classta yazdigimiz metotlari baska classa extends ettigimizde kesin olarak override etmemiz gerekiyor. Yani o metotu kullanmak zorundayiz.
  @override
  double alanHesapla() {
    return (kenar * kenar).toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }
}

class Dikdortgen extends ISekil {
  int kisaKenar, uzunKenar;

  Dikdortgen(this.kisaKenar, this.uzunKenar);

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return (kisaKenar * 2) + (uzunKenar * 2.toDouble());
  }
}
