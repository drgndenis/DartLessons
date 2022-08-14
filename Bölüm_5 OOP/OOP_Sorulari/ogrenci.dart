class Ogrenci {
  int ogrId, ogrNot;

  Ogrenci({this.ogrId = 0, this.ogrNot = 0});

  @override
  String toString() {
    return "ID: $ogrId Not Değeri: $ogrNot";
  }
}
