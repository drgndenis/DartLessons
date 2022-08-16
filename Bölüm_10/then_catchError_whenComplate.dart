void main(List<String> args) {
  print("Mother sends the child to buy bread");
  print("The child leaves the house to buy bread");

  /*
    * sonuc degeri hazir olduğunda tetiklenmesi icin then yapisini kullaniriz.
    ! then, catchError ve whenComplete yapisi try, catch ve finally yapisi ile calisma sistemi aynidir. whenComplete program hata alsada almasada calisan kisimdir. catchError kisminda bir hata meydana gelip firlatildiginde calisan kisimdir, then kismi ise hata meydana gelmediginde calisacak kisimdir.
  */

  buyBread()
      .then((value) => print(value))
      .catchError((error) => print(error))
      .whenComplete(() => print("Bread get is finished"));

  print("Mother prepares breakfast");
  print("Breakfast is ready!");
}

Future<String> buyBread() {
  Future<String> result = Future.delayed(Duration(seconds: 5), () {
    return "Child enters home with bread";
    //throw Exception("There's no bread left in the grocery store");
  });

  return result;
}
