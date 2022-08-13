/*
  List ikiuye ayrılır
  1- Sabit uzunluklu
  2- Büyüyen listeler

  Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
  List<int> numaralar = List.filled(10,0) // 10 eleman içeren sabit uzunluklu liste yani dizi.
  Index numaraları 0'dan başlar yani listenin ilk elemanına erişmek için 0. indexine bakılır.
  numaralar[0] diyerek.
*/

void main(List<String> args) {
  List<int> numbers = List.filled(5, 2); // sabit uzunluklu diziler
  numbers[0] = 4;
  numbers[1] = 1;
  numbers[2] = 5;
  numbers[3] = 3;

  print(numbers);
  print(numbers.length);
  print(numbers[3]);

  List<String> names =
      List.filled(3, ""); // String verilerin tek bir dizide saklanması
  names[0] = "Denis";
  names[1] = "Beyza";
  names[2] = "Dragan";
  print(names);

  List mix =
      List.filled(5, 0); // farklı türde elemanların tek bir dizide saklanması
  mix[0] = 5;
  mix[1] = "Armut";
  mix[3] = 8;
  mix[4] = false;
  print(mix);

  // Listede bulunan elemanları kısa yolla gezme
  for (int j in numbers) {
    print(j);
  }
  
  print("*******************************");

  // Liste elemeanlarında gezme
  for (var i = 0; i < numbers.length; i++) {
    numbers[i] += 5;
    print(numbers[i]);
  }
}