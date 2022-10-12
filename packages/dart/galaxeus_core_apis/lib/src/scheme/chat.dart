part of galaxeus_core_apis;

class Chat {
  late Map data;

  Chat({
    required this.data,
  });

  int get id {
    return data["id"] as int;
  }

  bool get is_bot {
    if (data["is_bot"] is bool) {
      return data["is_bot"] as bool;
    }
    return false;
  }

  String? get first_name {
    if (data["first_name"] is String == false) {
      return null;
    }
    return data["first_name"] as String;
  }

  String? get last_name {
    if (data["last_name"] is String == false) {
      return null;
    }
    return data["last_name"] as String;
  }

  String? get title {
    if (data["title"] is String == false) {
      return null;
    }
    return data["title"] as String;
  }

  String? get username {
    if (data["username"] is String == false) {
      return null;
    }
    return data["username"] as String;
  }

  String get type {
    return data["type"] as String;
  }

  Map toMap() {
    return data;
  }

  Map toJson() {
    return data;
  }
}
