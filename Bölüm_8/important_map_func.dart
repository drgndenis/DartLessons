void main(List<String> args) {
  Map<String, dynamic> map = Map();
  var map2 = <String, dynamic>{};

  map["id"] = 5;
  map["name"] = "Denis";
  map["favcolor"] = "blue";

  var newMap = Map.from({"deger": "new"});
  var mapFromEntries = Map.fromEntries(map.entries);
  print(mapFromEntries);

  var list = [1, 2, 3, 4, 5];
  // Iterable olan listemizi map'e donusturur
  var mapFromIterable = Map.fromIterable(list,
      key: (item) => "key: $item", value: (item) => "value: ${item * 2}");
  print(mapFromIterable);

  // ! addAll methodu ile var olan mapin icine baska mapin elemanlarını ekliyoruz

  map.update("id", (value) => 17);

  // map içinde arama yaptigimiz key degeri eger yoksa ifAbsent'i kullanarak yeni bir key degeri olustururuz ve bune deger veririz
  map.update("new_id", (value) => 10, ifAbsent: () => 99);

  print(map);
}
