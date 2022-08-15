void main(List<String> args) {
  User user = User();
  NormalUser normalUser = NormalUser();
  ReadingNormalUser readingNormalUser = ReadingNormalUser();
  AdminUser adminUser = AdminUser();

  // upcasting yukari cevrim
  User user2 = AdminUser(); // AdminUser dolayli olarak User'dir
  User user3 =
      ReadingNormalUser(); // ReadingNormalUser dolayli olarak NormalUser'dir ve NormalUser da dolayli olarak User'dir.

  // farkli veri turlerini tek bir veri altinda saklayabiliyoruz.
  List<User> allUsers = [];
  allUsers.add(user);
  allUsers.add(normalUser);
  allUsers.add(readingNormalUser);
  allUsers.add(adminUser);
  allUsers.add(user2);
  allUsers.add(user3);

  // girilen paremetreye gore calisma saglaniyor.
  test(normalUser);
  test(readingNormalUser);
}

// user gibi tek veri yolluyoruz ama yollanan veriye gore farkli farkli turlere girebiliyor.
void test(User user) {
  user.login(); // polimorfizm cok bicimlilik
}

class User {
  String email = "";
  String password = "";

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
