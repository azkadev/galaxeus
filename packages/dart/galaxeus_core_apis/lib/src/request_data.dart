// ignore_for_file: non_constant_identifier_names

part of galaxeus_core_apis;

enum AppApiProtocolType {
  http,
  tcp,
  websocket,
}

enum AppApiProductionType { live, sandbox }

class AppApiRequestData {
  late Map data;
  late AppApiProtocolType protocol;
  late String token;
  AppApiRequestData({
    required this.data,
    this.protocol = AppApiProtocolType.http,
  });

  factory AppApiRequestData.websocket({
    required Map data,
    required String token,
  }) {
    if (token.isNotEmpty) {
      data["@token"] = token;
    }
    return AppApiRequestData(
      data: data,
      protocol: AppApiProtocolType.websocket,
    );
  }
  factory AppApiRequestData.http({
    required Map data,
    required String token,
  }) {
    if (token.isNotEmpty) {
      data["@token"] = token;
    }
    return AppApiRequestData(
      data: data,
      protocol: AppApiProtocolType.websocket,
    );
  }

  factory AppApiRequestData.tcp({
    required Map data,
    required String token,
  }) {
    if (token.isNotEmpty) {
      data["@token"] = token;
    }
    return AppApiRequestData(
      data: data,
      protocol: AppApiProtocolType.tcp,
    );
  }
}

enum SignAccountType { signWithUserId, signWithUsername, signWithEmail, signWithGoogle, signWithPhone, signWithFaceId, signWithFingerId, signWithQr }

enum SignInType { signWithUserId, signWithUsername, signWithEmail, signWithGoogle, signWithPhone, signWithFaceId, signWithFingerId, signWithQr }

enum WalletType {
  walletTypeXendit,
}

enum SessionType {
  sessionTypeHttp,
  sessionTypeTcp,
  sessionTypeWebsocket,
}

enum VerifyType { verify, verifyTypeSecretWord, verifyTypeAccount, verifyTypeComplete }
