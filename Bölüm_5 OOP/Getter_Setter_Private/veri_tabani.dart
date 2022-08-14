import 'dart:math';

class VeritabaniIslemleri {
  // degiskenlerimizi private olarak tanimliyoruz ki baska bir dosyada import edilse bile bu alanlara erisilmesin
  String _kullaniciAdi = 'denis';
  String _sifre = '123456';

  // baglan metotumuzu olusturuyoruz
  bool baglan() {
    // if blogu icine internetVarMi() yazmak ile internetVarMi() == true ayni anlama gelmektedir. == true yazmasakta true olursa if blogu calisir, sonuc false olursa if blogu calismaz.
    if (_internetVarMi()) {
      if (_kullaniciAdi == 'denis' && _sifre == '123456') {
        return true;
      } else {
        return false;
      }
    } else {
      return false;
    }
  }

  // metotumuza baska yerlerden ulasilmamasi icin private yapiyoruz.
  bool _internetVarMi() {
    // import 'dart:math'; kutuphanesi Random'ı yazdigimiz icin gelir
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }

  // varsayilan constructor
  VeritabaniIslemleri(){}

  // ozel constructor
  VeritabaniIslemleri.loginWithNameandPass(String kullaniciAdi, String sifre) {}
}
