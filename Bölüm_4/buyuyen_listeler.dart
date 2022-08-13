/*
  Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine büyüyen listeleri kullanırız.
  Bu listelere varsayılan olarak boyut vermeniz gerekmez.
  Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
  add -> eleman ekler.
  clear -> tüm elemanları siler.
  remove -> verilen elemanı siler.
  removeAt -> belirtilen indexteki elemanları siler.
  Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.
*/

void main(List<String> args) {
  List<String> names = [];
  names.add("Denis");
  names.add("Serkis");
  names.add("DRAGAN");
  print(names);
  print(names.length);

  List<int> numbers = [1, 3, 5, 7, 9];
  numbers.add(41); // büyüyebilen dizilere .add şeklinde ekleme yapıyoruz.
  print(numbers);

  List<int> sayilar = List.filled(10, 10,
      growable:
          true); // growable true olduğunda sabit boyutlu dizinin içine de ekleme yapabiliyoruz
  sayilar.add(12);
  print(sayilar);
  print(sayilar.length);

  // Boş bir dizi olarak geliyor. growable false olarak geldiği için true değere çeviririz.
  List<int> sayilar2 = List.empty(growable: true);
  sayilar2.add(10);
}
