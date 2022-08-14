/**
 * Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir.
  If-else, switch-case gibi kontrol ifadelerinin olduğu sınıflar kötü tasarım örnekleridir.
  Bunun yerine kalıtım tercih edilmelidir.

  // ! Method overloading: Üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
 */

void main(List<String> args) {
  var user1 = AdminUser();
  user1.login();
  // Geriye deger dondurdugu icin print icinde yazariz.
  print('Total users: ${user1.totalUsers(2)}');

  var user2 = ReadingNormalUser();
  user2.invate();
  user2.sayName();
  user2.login();

  NormalUser normalUser = NormalUser();
  normalUser.login();

}

class User {
  String email = "denisdrgn";
  String password = "2810";

  // User classimiza ait olan metotumuz. Extends edilen her class'ta override edilmez metotumuzu cagirdimizda Parent user logged in olarak calisir
  void login() {
    print("Parent user logged in");
  }
}

class NormalUser extends User {
  // NormalUser Class'ina ait olan metotumuz
  void invate() {
    print("Normal user invated all friends");
  }

  // NormalUser Class'imizda login metotunu farkli bir sekilde kullanmak istedigimiz icin override yaptik
  // override yapmak icin metotumuzun ismini yazmamiz yeterlidir.
  @override
  void login() {
    print("Normal user logged in");
  }
}

class AdminUser extends User {
  // AdminUser class'ina ait metotumuz
  int totalUsers(int totalUsers) {
    // totalUsers degerini alir ve ardindan bunu geriye dondurdur.
    return totalUsers;
  }
}

class ReadingNormalUser extends NormalUser {
  void sayName() {
    print("I can only read.");
  }

  @override
  void login() {
    print('Reading Normal user logged in');
  }
}
