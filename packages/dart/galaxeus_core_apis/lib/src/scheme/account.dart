part of galaxeus_core_apis;

/// Galaxeus
class Account {
  late Map rawData;

  /// Galaxeus
  Account(this.rawData);

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
  int? get id {
    try {
      if (rawData["id"] is int == false) {
        return null;
      }
      return rawData["id"] as int;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  bool? get is_bot {
    try {
      if (rawData["is_bot"] is bool == false) {
        return null;
      }
      return rawData["is_bot"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  String? get first_name {
    try {
      if (rawData["first_name"] is String == false) {
        return null;
      }
      return rawData["first_name"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  String? get username {
    try {
      if (rawData["username"] is String == false) {
        return null;
      }
      return rawData["username"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  String? get type {
    try {
      if (rawData["type"] is String == false) {
        return null;
      }
      return rawData["type"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  Detail get detail {
    try {
      if (rawData["detail"] is Map == false) {
        return Detail({});
      }
      return Detail(rawData["detail"] as Map);
    } catch (e) {
      return Detail({});
    }
  }

  /// Galaxeus
  bool? get is_verified {
    try {
      if (rawData["is_verified"] is bool == false) {
        return null;
      }
      return rawData["is_verified"] as bool;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  List<String?>? get secret_words {
    try {
      if (rawData["secret_words"] is List == false) {
        return null;
      }
      return (rawData["secret_words"] as List).cast<String>();
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  List<String?>? get random_secret_words {
    try {
      if (rawData["random_secret_words"] is List == false) {
        return null;
      }
      return (rawData["random_secret_words"] as List).cast<String>();
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  Verify? get verify {
    try {
      if (rawData["verify"] is Map == false) {
        return Verify({});
      }
      return Verify(rawData["verify"] as Map);
    } catch (e) {
      return Verify({});
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
