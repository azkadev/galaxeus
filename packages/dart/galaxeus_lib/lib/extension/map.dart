part of galaxeus_lib;

extension GalaxeusExtensionMap on Map {
  Map<T, K> removeValueNull<T, K>() {
    forEach((key, value) {
      if (value == null) {
        remove(key);
      }
    });
    return cast<T, K>();
  }

  Map<T, K> filterByKeys<T, K>(List<String> keys,
      {bool isAllowValueNull = true}) {
    late Map<T, K> jsonData = {};
    forEach((key, value) {
      if (keys.contains(key)) {
        if (isAllowValueNull) {
          jsonData[key] = value;
        } else {
          if (value != null) {
            jsonData[key] = value;
          }
        }
      }
    });
    return jsonData;
  }

  void removeByKeys(List<String> keys, {bool isAllowValueNull = true}) {
    for (var i = 0; i < keys.length; i++) {
      var key = keys[i];
      if (keys.contains(key)) {
        remove(key);
      }
    }
  }
}
