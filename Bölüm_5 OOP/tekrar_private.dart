import 'dart:math';

class wifiBilgileri {
  String _wifiIsim = "TurkTelekom_35CF7";
  int _password = 158975320;

  void Bilgiler() {
    if (_baglandiMi()) {
      print("Wifi ismi: $_wifiIsim, şifre: $_password");
    } else {
      print("Bağlanamadınız");
    }
  }

  bool _baglandiMi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
