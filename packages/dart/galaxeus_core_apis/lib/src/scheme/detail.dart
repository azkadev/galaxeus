part of galaxeus_core_apis;

/// Galaxeus
class Detail {
  late Map rawData;

  /// Galaxeus
  Detail(this.rawData);

  /// return original data json
  Map toMap() {
    return rawData;
  }

  /// return original data json
  Map toJson() {
    return rawData;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(rawData);
  }
}
