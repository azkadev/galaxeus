// ignore_for_file: non_constant_identifier_names, unused_local_variable

part of galaxeus_core_apis;

class AppApiDataValidation {
  final AppApiRequestData appApiRequestData;
  late Map data;
  late AppApiProtocolType protocol;

  AppApiDataValidation({required this.appApiRequestData}) {
    data = appApiRequestData.data;
    protocol = appApiRequestData.protocol;
  }

  Map setVerify() {
    if (data["sign_account"] is Map == false) {
      return {"@type": "error", "message": "sign_account_must_be_map"};
    }
    Map sign_account = (data["sign_account"] as Map);
    if (sign_account["@type"] == SignAccountType.signWithUserId.name) {
      Map id = DataValidation.id(sign_account);
      if (id["@type"] == "error") {
        return id;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else if (sign_account["@type"] == SignAccountType.signWithEmail.name) {
      Map email = DataValidation.email(sign_account);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else if (sign_account["@type"] == SignAccountType.signWithUsername.name) {
      Map username = DataValidation.username(sign_account);
      if (username["@type"] == "error") {
        return username;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else {
      return {"@type": "error", "message": "sign_account_depreceated"};
    }
    if (data["verify"] is Map == false) {
      return {"@type": "error", "message": "verify_must_be_map"};
    }
    Map verify = (data["verify"] as Map);
    if (verify["@type"] == VerifyType.verifyTypeSecretWord.name) {
      if (verify["secret_words"] is List == false) {
        return {"@type": "error", "message": "secret_word_format_wrong"};
      }
      return {
        "@type": "ok",
        "data": {
          "sign_account": sign_account,
          "verify": verify,
        }
      };
    }
    if (verify["@type"] == VerifyType.verifyTypeAccount.name) {
      return {
        "@type": "ok",
        "data": {
          "sign_account": sign_account,
          "verify": verify,
        }
      };
    }
    return {"@type": "error", "message": "verify_found_but_depreceated"};
  }

  Map verifySecretWord() {
    Map username = DataValidation.username(data);
    if (username["@type"] == "error") {
      return username;
    }
    if (data["secret_words"] is List == false) {
      return {"@type": "error", "message": "secret_word_format_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"secret_words": data["secret_words"]}
    };
  }

  Map signUp() {
    Map username = DataValidation.username(data);
    if (username["@type"] == "error") {
      return username;
    }
    Map password = DataValidation.password(data, isPasswordCheckLength: false);
    if (password["@type"] == "error") {
      return password;
    }
    return {"@type": "ok", "data": data};
  }

  Map signIn() {
    if (data["sign_in"] is Map == false) {
      return {"@type": "error", "message": "sign_in_must_be_map"};
    }
    Map sign_in = (data["sign_in"] as Map);
    if (sign_in["@type"] is String == false) {
      return {"@type": "error", "message": "sign_in_type_must_string"};
    }
    String sign_in_type = (sign_in["@type"] as String);
    if (!SignInType.values.map((e) => e.name).toList().contains(sign_in_type)) {
      return {"@type": "error", "message": "sign_in_type_not_found"};
    }
    if (SignInType.signWithEmail.name == sign_in_type) {
      Map email = DataValidation.email(sign_in);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_in, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_in": sign_in,
        }
      };
    }

    if (SignInType.signWithGoogle.name == sign_in_type) {
      Map email = DataValidation.google(sign_in);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_in, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_in": sign_in,
        }
      };
    }

    if (SignInType.signWithPhone.name == sign_in_type) {
      Map email = DataValidation.google(sign_in);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_in, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_in": sign_in,
        }
      };
    }
    if (SignInType.signWithUserId.name == sign_in_type) {
      Map id = DataValidation.id(sign_in);
      if (id["@type"] == "error") {
        return id;
      }
      Map password = DataValidation.password(sign_in);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_in": sign_in,
        }
      };
    }

    if (SignInType.signWithUsername.name == sign_in_type) {
      Map username = DataValidation.username(sign_in);
      if (username["@type"] == "error") {
        return username;
      }
      Map password = DataValidation.password(sign_in);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_in": sign_in,
        }
      };
    }

    return {"@type": "error", "message": "sign_in_found_but_depreceated"};
  }

  Map getChat() {
    if (data["chat_id"] is int == false) {
      return {"@type": "error", "message": "chat_id_must_int"};
    }
    int chat_id = (data["chat_id"] as int);
    return {
      "@type": "ok",
      "data": {
        "chat_id": chat_id,
      }
    };
  }

  Map getUser() {
    if (data["user_id"] is int == false) {
      return {"@type": "error", "message": "user_id_must_int"};
    }
    int user_id = (data["user_id"] as int);
    return {
      "@type": "ok",
      "data": {
        "user_id": user_id,
      }
    };
  }

  Map setBio() {
    if (data["bio"] is String == false) {
      return {"@type": "error", "message": "bio_must_string"};
    }
    String bio = (data["bio"] as String);
    if (bio.length > 70) {
      return {"@type": "error", "message": "bio_length_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"bio": bio}
    };
  }

  Map setName() {
    late Map jsonData = {};
    if (data["first_name"] is String == false) {
      return {"@type": "error", "message": "first_name_must_string"};
    }
    String first_name = (data["first_name"] as String);
    if (first_name.isEmpty) {
      return {"@type": "error", "message": "first_name_must_be_not_empty"};
    }
    if (first_name.length > 64) {
      return {"@type": "error", "message": "first_name_length_wrong"};
    }
    jsonData["first_name"] = first_name;
    if (data.containsKey("last_name")) {
      if (data["last_name"] is String == false) {
        return {"@type": "error", "message": "last_name_must_string"};
      }
      String last_name = (data["last_name"] as String);
      if (last_name.length > 64) {
        return {"@type": "error", "message": "last_name_length_wrong"};
      }
      jsonData["last_name"] = last_name;
    }
    return {"@type": "ok", "data": jsonData};
  }

  Map setEmail() {
    return DataValidation.email(data);
  }

  Map setUsername() {
    if (data["username"] is String == false) {
      return {"@type": "error", "message": "username_must_string"};
    }
    String username = (data["username"] as String);
    if (!RegExp(r"^([a-z]+)$", caseSensitive: false).hasMatch(username)) {
      return {"@type": "error", "message": "username_format_wrong"};
    }
    if (username.length < 5 || username.length > 25) {
      return {"@type": "error", "message": "username_length_wrong"};
    }
    return {
      "@type": "ok",
      "data": {
        "username": username,
      }
    };
  }
}

class AppApiHeaderValidation {}

class DataValidation {
  static Map getVerify(Map data) {
    if (data["sign_account"] is Map == false) {
      return {"@type": "error", "message": "sign_account_must_be_map"};
    }
    Map sign_account = (data["sign_account"] as Map);
    if (sign_account["@type"] == SignAccountType.signWithUserId.name) {
      Map id = DataValidation.id(sign_account);
      if (id["@type"] == "error") {
        return id;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_account": {"@type": sign_account["@type"], "username": id, "password": password}
        }
      };
    } else if (sign_account["@type"] == SignAccountType.signWithEmail.name) {
      Map email = DataValidation.email(sign_account);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_account": {"@type": sign_account["@type"], "username": email, "password": password}
        }
      };
    } else if (sign_account["@type"] == SignAccountType.signWithUsername.name) {
      Map username = DataValidation.username(sign_account);
      if (username["@type"] == "error") {
        return username;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
      return {
        "@type": "ok",
        "data": {
          "sign_account": {"@type": sign_account["@type"], "username": username, "password": password}
        }
      };
    } else {
      return {"@type": "error", "message": "sign_account_depreceated"};
    }
  }

  static Map setVerify(Map data) {
    if (data["sign_account"] is Map == false) {
      return {"@type": "error", "message": "sign_account_must_be_map"};
    }
    Map sign_account = (data["sign_account"] as Map);
    if (sign_account["@type"] == SignAccountType.signWithUserId.name) {
      Map id = DataValidation.id(sign_account);
      if (id["@type"] == "error") {
        return id;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else if (sign_account["@type"] == SignAccountType.signWithEmail.name) {
      Map email = DataValidation.email(sign_account);
      if (email["@type"] == "error") {
        return email;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else if (sign_account["@type"] == SignAccountType.signWithUsername.name) {
      Map username = DataValidation.username(sign_account);
      if (username["@type"] == "error") {
        return username;
      }
      Map password = DataValidation.password(sign_account, isPasswordCheckLength: false);
      if (password["@type"] == "error") {
        return password;
      }
    } else {
      return {"@type": "error", "message": "sign_account_depreceated"};
    }
    if (data["verify"] is Map == false) {
      return {"@type": "error", "message": "verify_must_be_map"};
    }
    Map verify = (data["verify"] as Map);
    if (verify["@type"] == VerifyType.verifyTypeSecretWord.name) {
      if (verify["secret_words"] is List == false) {
        return {"@type": "error", "message": "secret_word_format_wrong"};
      }
      return {
        "@type": "ok",
        "data": {
          "sign_account": sign_account,
          "verify": verify,
        }
      };
    }
    if (verify["@type"] == VerifyType.verifyTypeAccount.name) {
      return {
        "@type": "ok",
        "data": {
          "sign_account": sign_account,
          "verify": verify,
        }
      };
    }
    return {"@type": "error", "message": "verify_found_but_depreceated"};
  }

  static Map createWallet(Map data) {
    late Map jsonData = {};
    Map dataValid = DataValidation.title(data);
    if (dataValid["@type"] == "error") {
      return dataValid;
    }
    return {"@type": "ok", "data": jsonData};
  }

  static Map getInvoiceWallet(Map data) {
    late Map jsonData = {};

    if (data["id"] is String == false) {
      return {"@type": "error", "message": "id_must_string"};
    }
    jsonData["id"] = data["id"];
    return {"@type": "ok", "data": jsonData};
  }

  static Map getPayoutWallet(Map data) {
    late Map jsonData = {};

    if (data["id"] is String == false) {
      return {"@type": "error", "message": "id_must_string"};
    }
    jsonData["id"] = data["id"];
    return {"@type": "ok", "data": jsonData};
  }

  static Map createInvoiceWallet(
    Map data, {
    int minAmount = 1,
    int maxAmount = 0,
  }) {
    data.removeWhere((key, value) => value == null);
    late Map jsonData = {};
    Map dataValidation_external_id = DataValidation.external_id(data);
    if (dataValidation_external_id["@type"] == "error") {
      return dataValidation_external_id;
    }
    Map dataValidationAmount = DataValidation.amount(data, minAmount: minAmount, maxAmount: maxAmount);
    if (dataValidationAmount["@type"] == "error") {
      return dataValidationAmount;
    }
    if (data.containsKey("email")) {
      Map dataValidationEmail = DataValidation.email(data);
      if (dataValidationEmail["@type"] == "error") {
        return dataValidationEmail;
      }
      jsonData["email"] = data["email"];
    }
    if (data.containsKey("description")) {}
    jsonData["external_id"] = data["external_id"];
    jsonData["amount"] = data["amount"];
    return {"@type": "ok", "data": jsonData};
  }

  static Map createPayoutWallet(
    Map data, {
    int minAmount = 10000,
    int maxAmount = 0,
  }) {
    late Map jsonData = {};
    Map dataValidation_external_id = DataValidation.external_id(data);
    if (dataValidation_external_id["@type"] == "error") {
      return dataValidation_external_id;
    }
    Map dataValidationAmount = DataValidation.amount(data, minAmount: minAmount, maxAmount: maxAmount);
    if (dataValidationAmount["@type"] == "error") {
      return dataValidationAmount;
    }
    Map dataValidationEmail = DataValidation.email(data);
    if (dataValidationEmail["@type"] == "error") {
      return dataValidationEmail;
    }
    jsonData["external_id"] = data["external_id"];
    jsonData["amount"] = data["amount"];
    jsonData["email"] = data["email"];
    return {"@type": "ok", "data": jsonData};
  }

  static Map external_id(Map data, {bool isMustBeContain = false}) {
    late Map jsonData = {};
    if (isMustBeContain) {
      if (data["external_id"] is String == false) {
        return {"@type": "error", "message": "external_id_must_be_string"};
      }
      String external_id = data["external_id"] as String;
      jsonData["external_id"] = external_id;
    } else {
      if (data.containsKey("external_id")) {
        if (data["external_id"] is String == false) {
          data["external_id"] = "getUuid(20)";
        }
        String external_id = data["external_id"] as String;
        jsonData["external_id"] = external_id;
      }
    }
    return {"@type": "ok", "data": jsonData};
  }

  static Map amount(Map data, {int minAmount = 1, int maxAmount = 0}) {
    late Map jsonData = {};
    if (data["amount"] is int == false) {
      return {"@type": "error", "message": "amount_must_int"};
    }
    int amount = data["amount"] as int;
    if (amount < minAmount) {
      return {"@type": "error", "message": "amount_must_be_high_${minAmount}"};
    }
    if (maxAmount != 0) {
      if (amount > maxAmount) {
        return {"@type": "error", "message": "amount_must_be_lowr_${maxAmount}"};
      }
    }
    jsonData["amount"] = amount;
    return {"@type": "ok", "data": jsonData};
  }

  static Map setName(Map data) {
    late Map jsonData = {};
    if (data["first_name"] is String == false) {
      return {"@type": "error", "message": "first_name_must_string"};
    }
    String first_name = (data["first_name"] as String);
    if (first_name.isEmpty) {
      return {"@type": "error", "message": "first_name_must_be_not_empty"};
    }
    if (first_name.length > 64) {
      return {"@type": "error", "message": "first_name_length_wrong"};
    }
    jsonData["first_name"] = first_name;
    if (data.containsKey("last_name")) {
      if (data["last_name"] is String == false) {
        return {"@type": "error", "message": "last_name_must_string"};
      }
      String last_name = (data["last_name"] as String);
      if (last_name.length > 64) {
        return {"@type": "error", "message": "last_name_length_wrong"};
      }
      jsonData["last_name"] = last_name;
    }
    return {"@type": "ok", "data": jsonData};
  }

  static Map setBio(Map data) {
    if (data["bio"] is String == false) {
      return {"@type": "error", "message": "bio_must_string"};
    }
    String bio = (data["bio"] as String);
    if (bio.length > 70) {
      return {"@type": "error", "message": "bio_length_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"bio": bio}
    };
  }

  static Map phoneNumber(Map data) {
    if (data["phone_number"] is String == false) {
      return {"@type": "error", "message": "email_must_string"};
    }
    String phone_number = (data["phone_number"] as String);
    if (!RegExp(r"^([\w-\.]+@gmail\.com3)$", caseSensitive: false).hasMatch(phone_number)) {
      return {"@type": "error", "message": "email_format_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"phone_number": data["phone_number"]}
    };
  }

  static Map google(Map data) {
    if (data["email"] is String == false) {
      return {"@type": "error", "message": "email_must_string"};
    }
    String email = (data["email"] as String);
    if (!RegExp(r"^([\w-\.]+@gmail\.com3)$", caseSensitive: false).hasMatch(email)) {
      return {"@type": "error", "message": "email_format_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"email": data["email"]}
    };
  }

  static Map title(Map data) {
    if (data["title"] is String == false) {
      return {"@type": "error", "message": "title_must_string"};
    }
    String title = (data["title"] as String);
    return {
      "@type": "ok",
      "data": {"title": title}
    };
  }

  static Map email(Map data) {
    if (data["email"] is String == false) {
      return {"@type": "error", "message": "email_must_string"};
    }
    String email = (data["email"] as String);
    if (!RegExp(r"^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})$", caseSensitive: false).hasMatch(email)) {
      return {"@type": "error", "message": "email_format_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"email": data["email"]}
    };
  }

  static Map password(Map data, {bool isPasswordCheckLength = true}) {
    if (data["password"] is String == false) {
      return {"@type": "error", "message": "password_must_string"};
    }
    String password = (data["password"] as String);
    if (isPasswordCheckLength) {
      if (password.length < 8 || password.length > 50) {
        return {
          "@type": "error",
          "message": "password_length_wrong",
        };
      }
    }
    return {
      "@type": "ok",
      "data": {"password": data["password"]}
    };
  }

  static Map id(Map data) {
    if (data["id"] is int == false) {
      return {"@type": "error", "message": "id_must_int"};
    }
    int id = (data["id"] as int);
    return {
      "@type": "ok",
      "data": {"id": id}
    };
  }

  static Map username(Map data) {
    if (data["username"] is String == false) {
      return {"@type": "error", "message": "username_must_string"};
    }
    String username = (data["username"] as String);
    if (!RegExp(r"^([a-z]+)$", caseSensitive: false).hasMatch(username)) {
      return {"@type": "error", "message": "username_format_wrong"};
    }
    if (username.length < 5 || username.length > 25) {
      return {"@type": "error", "message": "username_length_wrong"};
    }
    return {
      "@type": "ok",
      "data": {"username": data["username"]}
    };
  }
}
