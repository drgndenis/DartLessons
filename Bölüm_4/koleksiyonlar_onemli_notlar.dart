void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{"yas": 24};
  var mySet = <String>{"Denis", "Beyza", "Mehmet"};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

  // Spreads operator - liste içine eklemek istediğimiz listeleri ... ile gösteriyoruz. Ve bu şekilde ekrana yazdırdığımızda sanki tek bir liste içinde yer alıyormuş gibi gözükür.
  var sonListe = [...tekSayilar, ...ciftSayilar];
  print(sonListe);

  var map1 = {"ad": "denis"};
  var map2 = {"yas": 34};

  var sonMap = {...map1, ...map2};
  print(sonMap);
  print(listem);
  print(myMap);
  print(mySet);
}


