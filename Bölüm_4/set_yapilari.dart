/*
  List'den en önemli farkı elemanlı sıralı olarak tutmaz, bu durumla list'lerde olduğu gibi indexleri kullanmayız.
  Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
  İndex olmadan elemanları kontrol etmek için contains methodu kullanılabilir. Onun dışında listelerdeki methodlar set için de geçerlidir. 

  Set yapısından elemanlar sıralı saklanmaz ve index numarası ile aratma yapamayız.
*/

void main(List<String> args) {
  Set<String> names = Set();
  names.add("Beyza");
  names.add("Denis");
  names.add("Ayşe");
  names.add("Yusuf");
  names.add("Beyza");
  names.add("Denis");

  names.remove("Denis"); // true ya da false değer döndürür. Eğer listede varsa true yoksa false değer döndürür. True değer dönerse listede bulunan elemanı çıkarır.
  print(names);

  for (String i in names) {
    print("İsim: " + i);
  }

  print("***********************");

  Set<int> numbers = Set.from([2, 4, 5, 6, 12, 5, 3, 2, 1, 12, 15, 17]);

  List<int> coupleNumbers = [10, 12, 14, 16, 18, 20, 18, 16, 14, 12, 10];

  for (int j in numbers) {
    print("Number: " + j.toString());
  }

  numbers.addAll(coupleNumbers);

  for (int k in numbers) {
    print("Couple Numbers added: " + k.toString());
  }
}
