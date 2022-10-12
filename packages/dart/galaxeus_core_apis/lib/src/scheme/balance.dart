// ignore_for_file: non_constant_identifier_names

part of galaxeus_core_apis;

/// Galaxeus
class Balance {
  late Map rawData;

  /// Galaxeus
  Balance(this.rawData);

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
  int? get cash {
    try {
      if (rawData["cash"] is int == false) {
        return null;
      }
      return rawData["cash"] as int;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  int? get holding {
    try {
      if (rawData["holding"] is int == false) {
        return null;
      }
      return rawData["holding"] as int;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  int? get tax {
    try {
      if (rawData["tax"] is int == false) {
        return null;
      }
      return rawData["tax"] as int;
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
