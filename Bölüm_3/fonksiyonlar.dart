


void main(List<String> args) {

  cevreHesapla();

  print("Alan: ${alanHesapla(3, 5)}");
  alanHesaplama(5, 8);

  print("Hacim: ${hacimHesapla(5, 7, 10)}");
  print("Çarpım: " + sayilariCarp(4, 7).toString()); // Bu kullanim yukarıdaki interpolation kullanima göre daha kolay
}

// paremetresiz fonksiyon
void cevreHesapla() {
  int en = 5, boy = 10;
  int cevre = (en + boy) * 2;
  print("Çevre: $cevre");
}

// parametre alip geri deger donduren fonksiyon
int alanHesapla(int num1, int num2) {
  return num1 * num2;
}

// parametre alan fonksiyon
void alanHesaplama(int n1, int n2) {
  print("Alanı: ${n1 * n2}");
}

int hacimHesapla(int numfirst, int numsec, int numth) {
  return numfirst * numsec * numth;
}

// fat arrow kullanımı (kisa gosterim sadece tek satirlik code icin kullanilir.)
int sayilariCarp(int s1, int s2) => s1 * s2;
