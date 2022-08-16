/*
 * Bir fonksiyon yaz, bu fonksiyonun aldigi id parametresine gore bir kullanici getirsin.
 * Bu islem 2 saniye sonunda sonuclanacak ve getirilen kisi bilgisi map olarak alinacaktir
 * Bu map yapisinda username ve id bilgisi olmasi yeterlidir
 * 
 * Getirilen kisi bilgisindeki username degerini kullanarak kisinin kurslarini getiren bir fonksiyon yaz.
 * Bu fonksiyon 4 saniye sursun ve username degerine ait olan kurslari icinde kursun adlari olan bir liste olarak dondurecek
 * 
 * Son olarak kurslar listesindeki ilk eleman parametre olarak alan ve bu kursa ait bir yorumu donduren fonksiyon olsun, bu fonksiyonda 1 saniye sursun.
 */

String firstCourse = '';

void main(List<String> args) {
  userById(5).then((value) {
    print(value);

    courseByUser('denis').then((courseList) {
      print(courseList);

      firstCourse = courseList[0];
      firstCommentByCourse(firstCourse).then((value) => print(value));
    });
  });
}

Future<String> firstCommentByCourse(String courseName) {
  print("$firstCourse için yapılan ilk yorum getiriliyor..");
  return Future.delayed(Duration(seconds: 1), () {
    return 'Kurs mukemmel';
  });
}

Future<List<String>> courseByUser(String username) {
  print('$username kullanicisinin kurslari getiriliyor.');

  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['Dart & Flutter Kursu', 'Java Kursu'];
  });
}

Future<Map<String, dynamic>> userById(int id) {
  print('$id idli kullanici getiriliyor.');

  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'denis dragan', 'id': id};
  });
}
