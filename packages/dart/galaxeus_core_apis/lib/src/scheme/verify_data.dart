part of galaxeus_core_apis;

class VerifyData {
  late Map rawData;

  VerifyData(this.rawData);

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

  Invoice? get invoice {
    try {
      if (rawData["invoice"] is Map == false) {
        return null;
      }
      return Invoice(rawData["invoice"] as Map);
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
