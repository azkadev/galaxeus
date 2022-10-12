part of galaxeus_core_apis;

/// Galaxeus
class Invoice {
  late Map rawData;

  /// Galaxeus
  Invoice(this.rawData);

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
  String? get external_id {
    try {
      if (rawData["external_id"] is String == false) {
        return null;
      }
      return rawData["external_id"] as String;
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
  String? get title {
    try {
      if (rawData["title"] is String == false) {
        return null;
      }
      return rawData["title"] as String;
    } catch (e) {
      return null;
    }
  }

  /// Galaxeus
  ProfilePicture get profile_picture {
    try {
      if (rawData["profile_picture"] is Map == false) {
        return ProfilePicture({});
      }
      return ProfilePicture(rawData["profile_picture"] as Map);
    } catch (e) {
      return ProfilePicture({});
    }
  }

  /// Galaxeus
  String? get url {
    try {
      if (rawData["url"] is String == false) {
        return null;
      }
      return rawData["url"] as String;
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
