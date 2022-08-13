void main(List<String> args) {
  print("Toplam: " + sayilariTopla(4, 5, 6).toString());
  print("Sayıların toplamı: " + sayiTopla(5, 6).toString());
  print("Toplamları: " + topla(5, s2: 5, s3: 8, s1: 1).toString());
}

// required parameter
int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
}

// optional parameter (Java'daki methodlarda override sistemi gibi)
int sayiTopla(int sayi1, int sayi2, [int sayi3 = 0]) {
  return sayi1 + sayi2 + sayi3;
}

// optional named
int topla(int s4 ,{int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s1 + s2 + s3 + s4;
}
