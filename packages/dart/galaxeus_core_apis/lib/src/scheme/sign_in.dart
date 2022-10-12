part of galaxeus_core_apis;

/// Galaxeus
class SignIn {
  late Map rawData;

  /// Galaxeus
  SignIn(this.rawData);

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
  Account get account {
    try {
      if (rawData["account"] is Map == false) {
        return Account({});
      }
      return Account(rawData["account"] as Map);
    } catch (e) {
      return Account({});
    }
  }

  /// Galaxeus
  Session get session {
    try {
      if (rawData["session"] is Map == false) {
        return Session({});
      }
      return Session(rawData["session"] as Map);
    } catch (e) {
      return Session({});
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
