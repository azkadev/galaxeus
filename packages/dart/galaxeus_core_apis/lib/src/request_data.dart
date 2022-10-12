part of galaxeus_core_apis;

enum AppApiProtocolType {
  http,
  tcp,
  websocket,
}

enum AppApiProductionType { live, sandbox }

class AppApiRequestData {
  late Map data;
  late Map header;
  late AppApiProtocolType protocol;
  AppApiRequestData({
    required this.data,
    required this.header,
    required this.protocol,
  });
}

enum SignAccountType {
  signWithUserId,
  signWithUsername,
  signWithEmail,
  signWithGoogle,
  signWithPhone,
  signWithFaceId,
  signWithFingerId,
  signWithQr
}

enum SignInType {
  signWithUserId,
  signWithUsername,
  signWithEmail,
  signWithGoogle,
  signWithPhone,
  signWithFaceId,
  signWithFingerId,
  signWithQr
}

enum WalletType {
  walletTypeXendit,
}

enum SessionType {
  sessionTypeHttp,
  sessionTypeTcp,
  sessionTypeWebsocket,
}

enum VerifyType {
  verify,
  verifyTypeSecretWord,
  verifyTypeAccount,
  verifyTypeComplete
}
