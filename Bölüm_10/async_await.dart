// async olarak tanimlama
void main(List<String> args) async {
  print("Extracting data from the internet");
  // bir metotun icinde await kullaniyorsak bunun async olarak tanimlanmasi gerekiyor
  String person =
      await bringPersonData(); // await kullanarak bu metotu beklemesini soyluyoruz.
  print(person);
  print(
      "Process finished"); // buranin calisabilmesi icin await olarak tanimladigimiz metodumuz ekrana yazildiktan sonra yazilir

  // personProcess(); asagidaki metodu kullanırsak
}

/*
 * async await'i kullandiktan sonra gelecek veri uzerinden islem yapacaksak kullanmak mantiklidir.
 * await kullandiktan sonra bu islemi bekleyecegimiz sureye gore asagisinda bulunan kodlarimizda bu metotun bekleme suresinin bitmesini bekleriz  
*/

// bekleme islemimizi baska bir metot icinde yazarsak programimiz calismaya devam eder
/*
void personProcess() async {
  String person = await bringPersonData();
  print(person.length);
}
*/

Future<String> bringPersonData() {
  return Future<String>.delayed(
      Duration(seconds: 3), () => "Person name: Denis ve ID: 99");
}
