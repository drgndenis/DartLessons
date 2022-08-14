void main(List<String> args) {
  Person person1 = Person("Mert", "CEYLAN", 27, "IT Security");
  person1.personInformation();

  Developer dev = Developer("Denis", "DRAGAN", 24, "Mobile Developer");
  dev.personInformation();
  dev.progLanguages();

  Boss boss = Boss("Beyza", "GEZER", 22, "BOSS");
  boss.personInformation();
  boss.saySalary();
}

class Person {
  String name = "";
  String surname = "";
  int age = 0;
  String departmant = "";

  Person(this.name, this.surname, this.age, this.departmant);

  void personInformation() {
    print(
        "Hello guys, I'm $name $surname. I'm $age years old and my departmant is $departmant");
  }
}

class Developer extends Person {
  Developer(String name, String surname, int age, String departmant)
      : super(name, surname, age, departmant);

  var languages = ["Java", "Python", "Dart & Flutter"];

  void progLanguages() {
    print("I know this programming languages;");

    for (var i in languages) {
      print(i);
    }
  }
}

class Boss extends Person {
  Boss(String name, String surname, int age, String departmant)
      : super(name, surname, age, departmant);

  int salary = 7500;

  void saySalary() {
    print("Hello friends, my salary is $salary dolars");
  }
}
