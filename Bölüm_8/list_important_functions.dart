void main(List<String> args) {
  Person denis = Person(3, "Denis");
  Student beyza = Student(2, "Beyza", 9);
  Person ayse = Student(4, "Ayşe", 7);
  var samet = Person(7, "Samet");
  var talha = Student(6, "TalHa", 8);

  List<Person> allStudents = [denis, beyza, ayse, samet, talha];
  allStudents.add(talha);

  allStudents.sort((student1, student2) {
    if (student1.id > student2.id) {
      return 1;
    } else {
      return 0;
    }
  });

  print(allStudents);

  allStudents.addAll([ayse, samet]);
  // print("$allStudents");

  bool sonuc = allStudents.any((Person element) => element.id > 10);
  // print(sonuc);

  // * Var olan listemizi map yapısına donusturebiliriz. Geriye int Person olan map donduruyor
  Map<int, Person> newMap = allStudents.asMap();
  // print(newMap);
  // print(newMap[1]!.name);

  // * map methodu ile listemizde karisik olarak bulunan veri turlerimizden sadece name'i donduruyoruz ve boylelikle buyuk bir listeye sahipsek bile isimlerine kolay bir sekilde ulasmis oluyoruz. Var olan bir yapiyi bambaska bir hale donusturuyoruz map yapisi ile
  // ! map fonksiyonu bize iterable sekilde degeri veriyor. Iterable olan fonksiyonumuzu liste halien cevirebiliriz.
  var mapIterable = allStudents.map((e) => "${e.name}").toList();
  mapIterable.add("denis");
  // print(mapIterable);

  var list = List<Student>.filled(5, Student(0, "", 0));
  // * print(list);

  // ! from'da çalışma anında hatayı görüyoruz, kod yazılırken görmüyoruz
  var listFrom = List<Student>.from(allStudents.whereType<Student>());

  // ! List.of'ta ise hatayı çalışma anında fark ediyoruz.
  var listOf = List<Student>.of(allStudents.whereType<Student>());

  // * print(listFrom);
  // * print(listOf);

  var listGenerate = List<int>.generate(5, (index) => index * 2);
  // * print(listGenerate);

  // ! Değiştirilemez listede eleman ekleyip çıkaramayız.
  var unmodifiableList = List.unmodifiable([3, 5, 7, 9, 15]);
  // unmodifiableList.add(8);
  // * print(unmodifiableList);
}

class Person {
  int id = 0;
  String name = "";

  // required: parametreye deger vermedigimizde veya bu parametrenin bulundugu fonksiyon veya class kullanılmak istendiginde kesin olarak kullanılması gerektigini bildirir.
  Person(this.id, this.name);

  @override
  String toString() {
    return "id: $id and name: $name";
  }
}

class Student extends Person {
  int lessons = 0;
  Student(id, name, lessons) : super(id, name);

  @override
  String toString() {
    return "id: $id and name: $name and lessons: $lessons \n";
  }
}
