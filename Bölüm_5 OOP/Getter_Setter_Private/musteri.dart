class Musteri {
  int? _musteriNo;

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

  void set musteriNoAta(int no) {
    if (no > 250) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  String get musteriNoSoyle => 'musteri no: $_musteriNo';

  void _musteriNoKontrol(int no) {
    if (no > 250) {
      _musteriNo = no;
    } else {
      return;
    }
  }

  void bilgileriYazdir() {
    print('musteri olusturuldu, musteri numarası: $_musteriNo');
  }
}
