part of galaxeus_core_apis;

class SignAccount {
  late Map rawData;
  SignAccount(this.rawData);

  factory SignAccount.signWithUserId(
      {required int id, required String password}) {
    late Map data = {
      "@type": SignAccountType.signWithUserId.name,
      "id": id,
      "password": password
    };
    return SignAccount(data);
  }
  factory SignAccount.signWithUsername(
      {required String username, required String password}) {
    late Map data = {
      "@type": SignAccountType.signWithUsername.name,
      "username": username,
      "password": password
    };
    return SignAccount(data);
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
