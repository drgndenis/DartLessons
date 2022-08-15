void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(bDegiskeni);
    }
  }

  var dondurulenFonksiyon = topla(5);
  var sonuc = dondurulenFonksiyon(5);
  print(sonuc);
}

// Bu fonksiyon geriye başka bir fonksiyon döndürür
// * Başında Function olduğundan //
Function topla(int eleman) {
  return (int deger) => eleman * deger;
}
