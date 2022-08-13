void main(List<String> args) {

  String isim = "Denis";
  String soyIsim = "Dragan";
  var kurs = "Dart'ın Kullanımı";
  String kursTanimi = "Dart'ı ve Flutter'ı öğreneceğiz";

  // Degiskenleri tırnak icinde yazmak icin basina $ ifadesini getiriyoruz
  print("İsim: $isim Soyisim: $soyIsim");

  // length bize int deger dondurdugunden bunu toString ile ceviriyoruz
  print("Soyismimin karakter uzunluğu: " + soyIsim.length.toString());

  // tirnak icinde yazdigimizda buna gerek olmuyor cunku string yapida yaziyoruz
  print("Karakter Uzunluğu: ${soyIsim.length}");
  print("Kurs ismi: $kurs, kursun tanıtımı: $kursTanimi");
  
  double en, boy;
  en = 10;
  boy = 12;

  print("Eni $en boyu $boy olan dikdörtgenin alanı:  ${en.toInt() * boy.toInt()}'dir");

}
