part of galaxeus_core_apis;

/// Galaxeus
class Transaction {
  late Map rawData;

  /// Galaxeus
  Transaction(this.rawData);

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
  String? get id {
    try {
      if (rawData["id"] is String == false) {
        return null;
      }
      return rawData["id"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  Wallet? get from {
    try {
      if (rawData["from"] is Map == false) {
        return null;
      }
      return Wallet(rawData["from"] as Map);
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  Wallet? get to {
    try {
      if (rawData["to"] is Map == false) {
        return null;
      }
      return Wallet(rawData["to"] as Map);
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  int? get amount {
    try {
      if (rawData["amount"] is int == false) {
        return null;
      }
      return rawData["amount"] as int;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  String? get status {
    try {
      if (rawData["status"] is String == false) {
        return null;
      }
      return rawData["status"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  String? get reference {
    try {
      if (rawData["reference"] is String == false) {
        return null;
      }
      return rawData["reference"] as String;
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
