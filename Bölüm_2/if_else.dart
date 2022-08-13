
void main(List<String> args) {
  int num1 = 10;
  int num2 = 20;

  if (num1 > num2) {
    print("$num1 $num2'den büyüktür.");
  } else if (num1 == num2) {
    print("$num1 $num2'ye eşittir.");
  } else {
    print("$num1 $num2'den küçüktür");
  }

  int notDegeri = 100;

  if (notDegeri >= 90 && notDegeri <= 100) {
    print("Harf notunuz: AA'dır.");
  } else if (notDegeri >= 80 && notDegeri < 90) {
    print("Harf notunuz BA'dır.");
  } else if (notDegeri >= 70 && notDegeri < 80) {
    print("Harf notunuz BB'dir.");
  } else if (notDegeri >= 60 && notDegeri < 70) {
    print("Harf Notunzu CB'dir.");
  } else if (notDegeri >= 50 && notDegeri < 60) {
    print("Harf Notunzu CC'dir.");
  } else if (notDegeri < 50) {
    print("Harf notunuz FF'dir. Bu dersten kaldınız.");
  } else {
    print("Girdiğiniz not değeri 0'dan küçük 100'den büyük olamaz.");
  }
}
