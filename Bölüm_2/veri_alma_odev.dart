import "dart:io";

void main(List<String> args) {
  // Kullanıcıdan iki değer alınıp bunun ortalamasını bulma

  print("Birinci Notunuz: ");
  int? firstnum = int.parse(stdin.readLineSync()!);
  print("İkinci Notunuz: ");
  int? secnum = int.parse(stdin.readLineSync()!);

  print("Ortalamanız: ${(firstnum + secnum) / 2}");

  // Fiyatı girilen ürüne %18 KDV ekleyerek son fiyatı hesaplama

  print("Ürünün fiyatı: ");
  double? fiyat = double.parse(stdin.readLineSync()!);
  double fiyatKDV = ((fiyat * 0.18) + fiyat);
  print("ürünün KDV'li fiyatı: $fiyatKDV");
}
