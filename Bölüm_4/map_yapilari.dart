/*
  Map yapısıda set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
  Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
  Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.

  Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirinden farklı elemanları içerir
  Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.

  Flutterda firebase'de çalışırken, internetten veri çekerken, veritabanı işlemlerinde, json olarak veri çekerken vb. gibi alanlarda kullanacagiz.
*/

void main(List<String> args) {
  Map<String, int> alanKodlari = {
    // key   : value
    "ankara": 312,
    "istanbul": 212,
    "bursa": 224
  };
  print(alanKodlari);

  // key girerek value alma
  print(alanKodlari["bursa"]);

  Map<String, dynamic> denis = {
    "soyad": "dragan",
    "yas": 24,
    "kilo": 61.4,
  };

  // key değeri yanlış girerse ekrana null yazdırır.
  print(denis["kilo"]);

  // boş map oluşturma
  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme2 = {};

  print(deneme2);
  print(deneme);

  for (String i in denis.keys) {
    // denis.values diyerekte value olarak gezebiliriz
    print(i);
    print(denis[i]); // value değerini verir
  }

  // tek bir for in içinde hem key hemde value değerinde gezme
  for (var element in denis.entries) {
    print("Key: ${element.key} değeri: ${element.value}");
  }

  // containsKey bize boolean bir deger dondurur. Aramak istedigimiz key yapisini yazıyoruz ve eger Map icinde bu key yapisi varsa true degerini donrurur yoksa false degerini dondurur.
  if (denis.containsKey("yas")) {
    print("Bulunan yaş değeri: ${denis["yas"]}");
  }

  final same = denis.containsKey('kilo');
  print(same);
}
