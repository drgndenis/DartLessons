/*
  * Dart dilinde interface kavramı yoktur ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
  * Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
  * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorundadır.
  * Interfaceker sayesinde dart dilinde olmayan çoklu kalıtım saglanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
  ! Implements edilen bir sınıf içinde bulunan methotları kesin bir şekilde kullanmamız gerekir fakat extends edilmiş bir sınıfta bulunan methotların kullanmasak bile class bize hata vermez.
*/

void main(List<String> args) {
  Dog dog = Dog("Poly"); // 
  dog.bark();
  dog.run();

  Animal dog2 = Dog("Holy"); // ! Extends edilen abstract class'tan methotu çağırma 
  dog2.animal();

  Bird bird = Bird("Gwey");
  bird.fly();
}

abstract class Animal {
  void animal() {
    print("I'm animal bro");
  }

  String name = "";

  Animal(this.name);
}

abstract class CanFly {
  void fly();
}

abstract class CanRunner {
  void run();
}

abstract class CanBark {
  void bark();
}


// sinifimiz birden fazla sinifta bulunan yapilari kullanmak zorundaysak extends yerine implements deriz. Bu sekilde birden fazla sinif icinde bulunan metotlari kullanabiliriz.
class Dog extends Animal implements CanBark, CanRunner {
  Dog(String name) : super(name);

  @override
  void animal() {
    super.animal();
  }

  @override
  void bark() {
    print("Hav hav");
  }

  @override
  void run() {
    print("I'm dog and i can run");
  }
}

class Bird extends Animal implements CanFly {
  Bird(String name) : super(name);

  @override
  void fly() {
    print("I'm bird and i can fly");
  }
}
