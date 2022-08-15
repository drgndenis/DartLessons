void main(List<String> args) {
  Veritabani oracle = OracleDb();
  Veritabani sql = SqlDb();

  oracle.userSave();
  oracle.userDelete();
  oracle.userUpdate();
  sql.userDelete();
  sql.userSave();
  sql.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDb extends Veritabani {
  @override
  void userDelete() {
    print("Oracle'dan user silindi");
  }

  @override
  void userSave() {
    print("Oracle'da user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("Oracle'da user güncellendi");
  }
}

class SqlDb extends Veritabani {
  @override
  void userDelete() {
    print("Sql'den user silindi");
  }

  @override
  void userSave() {
    print("Sql'de user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Sql'de user güncellendi.");
  }
}
