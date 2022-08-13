void main(List<String> args) {
  List<int> sayilar = [15, 4, 21, 12, 4, 9];

  if (sayilar.isNotEmpty) {
    // dizi boş değil ise
    print(sayilar.first); // ilk elemanı getirir.
    print(sayilar.last); // son elemanı getirir.
  } else {
    print("Boş mu: " + sayilar.isEmpty.toString()); // dizi boş ise
  }

  print("Elaman sayısı:  ${sayilar.length}");
  print(
      "Ters sırada ${sayilar.reversed}"); // dizilerde tanımlanana elemanları sondan başa şekilde yazdırır. Kalıcı olarak veriyi bozmaz.
  print(sayilar);
  sayilar.remove(4); // girilen değişkeni ilk görülen yerden çıkarır.
  print(sayilar);
  sayilar.removeAt(4); // yazılan indexteki sayıyı siler.
  print(sayilar);

  // sayilar.clear(); // listeyi komple temizler

  if (sayilar.contains(3)) {
    // Yazılan değişkenin dizide bulunup bulunmadığını buluruz
    print("Listede 3 vardır");
  } else {
    print("Listede 3 yoktur");
  }

  print(sayilar.elementAt(3)); // indexteki numarayı ekrana yazdırır
  print(sayilar.indexOf(9)); // verilen değişkenin index numarasını verir.

  sayilar.shuffle(); // rastgele olarak elemanların yerlerini değiştiriyor.
  print(sayilar);
}
