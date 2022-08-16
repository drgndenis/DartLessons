/*
 * Dart dili single thread yani tek bir is parcacigi vardir ve bu isler sirasi ile yapilir
 * 
 * Future ile event loop yapisi ile isler halledilir
 */

void main(List<String> args) {
  print("Mother sends the child to buy bread");
  buyBread();
  print("Breakfast is prepared");
  print("Breakfast is ready!");
}

void buyBread() {
  print("The child leaves the house to buy bread");

  // isimlendirilmis constructor
  Future.delayed(Duration(seconds: 8), () {
    print("Child enters home with bread");
  });
}
