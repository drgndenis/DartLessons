import 'dart:io';

void main(List<String> args) {
  print("İsminiz: ");

  /// Console'dan bir deger almak icin asagidaki kodu kullaniyoruz.
  /// stdin.readLineSync(); calismasi icin file icine import 'dart:io'; etmemiz gerekir.
  String? isim = stdin.readLineSync();

  print("Girilen isim: $isim");

  print("Yaşınızı giriniz: ");
  int? yas = int.parse(stdin.readLineSync()!);
  print("Girilen yaş: $yas");
}
