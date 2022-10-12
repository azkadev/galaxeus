// ignore_for_file: non_constant_identifier_names
import 'dart:convert';

class Faqs {
  late Map rawData;

  Faqs(this.rawData);

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

  From? get from {
    try {
      if (rawData["from"] is Map == false) {
        return null;
      }
      return From(rawData["from"] as Map);
    } catch (e) {
      return null;
    }
  }

  To? get to {
    try {
      if (rawData["to"] is Map == false) {
        return null;
      }
      return To(rawData["to"] as Map);
    } catch (e) {
      return null;
    }
  }

  String? get date {
    try {
      if (rawData["date"] is String == false) {
        return null;
      }
      return rawData["date"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get question {
    try {
      if (rawData["question"] is String == false) {
        return null;
      }
      return rawData["question"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get answer {
    try {
      if (rawData["answer"] is String == false) {
        return null;
      }
      return rawData["answer"] as String;
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

class From {
  late Map rawData;

  From(this.rawData);

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

class To {
  late Map rawData;

  To(this.rawData);

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
