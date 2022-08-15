void main(List<String> args) {
  // hata yakalama
  try {
    Student denis = Student(-5);
    print(denis);
  } on AgeException catch (e) {
    print(e.message);
  }
}

// yas hata sinifi
class AgeException implements Exception {
  // hata olursa yollayacagimiz mesaj
  String message;

  AgeException({this.message = "AgeException"});

  @override
  String toString() {
    return "Hatanın toString methodu çalıştı";
  }
}

class Student {
  int age;
  // Student constructorimiz
  Student(this.age) {
    if (age < 0) {
      // hata firlatma
      throw AgeException(
          message: "AgeException: Yas degeri 0'dan kucuk olamaz");
    } else {
      print("perfectly");
    }
  }
}
