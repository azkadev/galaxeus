part of galaxeus_core_apis;

/// Galaxeus
class Verify {
  late Map rawData;

  /// Galaxeus
  Verify(this.rawData);

  /// Galaxeus
  String? get special_type {
    try {
      if (rawData["@type"] is String == false) {
        return null;
      }
      return rawData["@type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  Account? get account {
    try {
      if (rawData["account"] is Map == false) {
        return null;
      }
      return Account(rawData["account"] as Map);
    } catch (e) {
      return null;
    }
  }

  VerifyData? get verify_data {
    try {
      if (rawData["verify_data"] is Map == false) {
        return null;
      }
      return VerifyData(rawData["verify_data"] as Map);
    } catch (e) {
      return null;
    }
  }

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
