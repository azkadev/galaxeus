// ignore_for_file: non_constant_identifier_names

part of galaxeus_core_apis;

extension EnumToString on Enum {
  String get name {
    return toString().split('.').last;
  }
}

enum AppApiMethod {
  setBio,
  setName,
  setUsername,
  setEmail,
  setPhoneNumber,
  generateUsernameRandom,
  setAppParameters,
  setChatDescription,
  testUseUpdate,
  logOut,
  banChatMember,
  banChatMembers,
  destroy,
  leaveChat,
  leaveChats,
  sendMessage,
  getChat,
  getUser,
  getMe,
  getMessage,
  getMessages,
  signUp,
  signIn,
  setVerify,
  getVerify,
  verifySecretWord,
  getVerifyPayment,
  verifyPayment,
  resetPassword,
  resetSecretWord,
  createWallet,
  getWallet,
  getMeWallet,
  createInvoiceWallet,
  getInvoiceWallet,
  setInvoiceExpiredWallet,
  sendCoinWallet,
  sendBalanceWallet,
  createPayoutWallet,
  getPayoutWallet,
  getApiVersion,
}

class AppApiResponse {
  late Map data;
  AppApiResponse({
    required this.data,
  });

  bool get isError {
    if (data["@type"] == "error") {
      return true;
    }
    return false;
  }

  String get special_type {
    return data["@type"];
  }

  auto() {
    if (AppApiMethod.getMe.name == special_type) {
      return account;
    }
    if (AppApiMethod.getUser.name == special_type) {
      return user;
    }
    if (AppApiMethod.getChat.name == special_type) {
      return chat;
    }
    return null;
  }

  Account get account {
    return Account(data);
  }

  Chat get chat {
    return Chat(data: data);
  }

  Chat get chatFullInfo {
    return Chat(data: data);
  }

  Invoice get invoice {
    return Invoice(data);
  }

  Message get message {
    return Message(data: data);
  }

  User get user {
    return User(data: data);
  }

  User get userFullInfo {
    return User(data: data);
  }

  Wallet get wallet {
    return Wallet(data);
  }

  Wallet get walletFullinfo {
    return Wallet(data);
  }

  Error get error {
    return Error(data: data);
  }

  Map toMap() {
    return data;
  }

  Map toJson() {
    return data;
  }

  /// return string data encode json original data
  @override
  String toString() {
    return json.encode(data);
  }
}

class AppApiRequest {
  late Map rawData;
  AppApiRequest(this.rawData);

  factory AppApiRequest.getVerify({
    required String username,
    required String password,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.getVerify.name,
      "username": username,
      "password": password,
    };
    Map dataValidation_verify = DataValidation.getVerify(jsonData);
    if (dataValidation_verify["@type"] == "error") {
      return AppApiRequest(dataValidation_verify);
    }
    return AppApiRequest(jsonData);
  }
  factory AppApiRequest.setVerify({
    VerifyType verifyType = VerifyType.verifyTypeSecretWord,
    required SignAccount signAccount,
    List<String>? secret_words,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.setVerify.name,
      "sign_account": signAccount.toJson(),
      "verify": {
        "@type": verifyType.name,
        "secret_words": secret_words,
      },
    };
    Map dataValidation_verify = DataValidation.setVerify(jsonData);
    if (dataValidation_verify["@type"] == "error") {
      return AppApiRequest(dataValidation_verify);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.setEmail({
    required String email,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.setEmail.name,
      "email": email,
    };
    Map dataValidationEmail = DataValidation.email(jsonData);
    if (dataValidationEmail["@type"] == "error") {
      return AppApiRequest(dataValidationEmail);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.createWallet({
    required String title,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.createWallet.name,
      "title": title,
    };
    Map dataValidationEmail = DataValidation.createWallet(jsonData);
    if (dataValidationEmail["@type"] == "error") {
      return AppApiRequest(dataValidationEmail);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.setUsername({
    required String username,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.setUsername.name,
      "username": username,
    };
    Map dataValidationUsername = DataValidation.username(jsonData);
    if (dataValidationUsername["@type"] == "error") {
      return AppApiRequest(dataValidationUsername);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.setName({required String first_name, String? last_name}) {
    late Map jsonData = {
      "@type": AppApiMethod.setName.name,
      "first_name": first_name,
    };
    if (last_name != null) {
      jsonData["last_name"] = last_name;
    }
    Map dataValidationName = DataValidation.setBio(jsonData);
    if (dataValidationName["@type"] == "error") {
      return AppApiRequest(dataValidationName);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.getMe() {
    late Map jsonData = {
      "@type": AppApiMethod.getMe.name,
    };
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.setBio({
    required String bio,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.setBio.name,
      "bio": bio,
    };
    Map dataValidationBio = DataValidation.setBio(jsonData);
    if (dataValidationBio["@type"] == "error") {
      return AppApiRequest(dataValidationBio);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.getChat({
    required int chat_id,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.getChat.name,
      "chat_id": chat_id,
    };
    return AppApiRequest(jsonData);
  }
  factory AppApiRequest.getUser({
    required int user_id,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.getUser.name,
      "chat_id": user_id,
    };
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.createPayoutWallet({
    String? external_id,
    required int amount,
    required String email,
  }) {
    late Map jsonData = {"@type": AppApiMethod.createPayoutWallet.name, "amount": amount, "email": email, "external_id": external_id};
    Map dataValidation_pay_out_wallet = DataValidation.createPayoutWallet(jsonData);
    if (dataValidation_pay_out_wallet["@type"] == "error") {
      return AppApiRequest(dataValidation_pay_out_wallet);
    }
    return AppApiRequest(jsonData);
  }
  factory AppApiRequest.createInvoiceWallet({
    required String external_id,
    required int amount,
    String? email,
    String? description,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.createInvoiceWallet.name,
      "amount": amount,
      "email": email,
      "external_id": external_id,
      "description": description,
    };

    Map dataValidation_pay_out_wallet = DataValidation.createInvoiceWallet(jsonData);
    if (dataValidation_pay_out_wallet["@type"] == "error") {
      return AppApiRequest(dataValidation_pay_out_wallet);
    }
    return AppApiRequest(jsonData);
  }
  factory AppApiRequest.getInvoiceWallet({
    required String id,
  }) {
    late Map jsonData = {"@type": AppApiMethod.getInvoiceWallet.name, "id": id};
    return AppApiRequest(jsonData);
  }
  factory AppApiRequest.getPayoutWallet({
    required String id,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.getPayoutWallet.name,
      "id": id,
    };
    Map data_validation_payout_wallet = DataValidation.getPayoutWallet(jsonData);
    if (data_validation_payout_wallet["@type"] == "error") {
      return AppApiRequest(data_validation_payout_wallet);
    }

    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.getMeWallet() {
    late Map jsonData = {
      "@type": AppApiMethod.getMeWallet.name,
    };
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.signUp({
    required String username,
    required String password,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.signUp.name,
      "username": username,
      "password": password,
    };
    Map dataValidationUsername = DataValidation.username(jsonData);
    if (dataValidationUsername["@type"] == "error") {
      return AppApiRequest(dataValidationUsername);
    }
    Map dataValidationPassword = DataValidation.password(jsonData);
    if (dataValidationPassword["@type"] == "error") {
      return AppApiRequest(dataValidationPassword);
    }
    return AppApiRequest(jsonData);
  }

  factory AppApiRequest.signIn({
    SignInType signInType = SignInType.signWithUsername,
    String? username,
    required String password,
  }) {
    late Map jsonData = {
      "@type": AppApiMethod.signIn.name,
      "sign_in": {
        "@type": signInType.name,
        "username": username,
        "password": password,
      }
    };
    Map dataValidationUsername = DataValidation.username(jsonData["sign_in"]);
    if (dataValidationUsername["@type"] == "error") {
      return AppApiRequest(dataValidationUsername);
    }
    Map dataValidationPassword = DataValidation.password(jsonData["sign_in"]);
    if (dataValidationPassword["@type"] == "error") {
      return AppApiRequest(dataValidationPassword);
    }
    return AppApiRequest(jsonData);
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

class Error {
  late Map data;

  Error({
    required this.data,
  });
  Map toMap() {
    return data;
  }

  Map toJson() {
    return data;
  }
}
