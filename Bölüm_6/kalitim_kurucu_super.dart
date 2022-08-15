void main() {
  Asker denis = Asker("Denis DRAGAN", 24);
  denis.salute();
  
  Er hasan = Er("Hasan ŞAHİN", 22);
  hasan.salute();
  hasan.changeCountry("Island");
}

class Asker {
  String name = "Expextetion";
  int age = 0;
  String country = "Turkey";

  Asker(this.name, this.age) {
    print("Asker sınıfının kurucusu çalıştı");
  }

  void salute() {
    print(
        "Hello my name is $name and I'm $age years old, my country is $country");
  }
}

// alt siniftan bir nesne urettigimizde ilk olarak ust sinifin constructori calisir.
class Er extends Asker {
  // super kullanımı ile constructor tetikleme
  Er(String name, int age) : super(name, age) {
    print("Er sınıfın kurucu çalıştı");
  }

  void changeCountry(String newCountry) {
    // super. dedikten sonra üst sınıfta bulunan özelliklere erişebiliriz.

    print("Your country ${country}, new country $newCountry");
    super.country = newCountry;
  }
}
