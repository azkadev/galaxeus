import 'dart:convert';

class Error {
  late Map rawData;
  Error(this.rawData);

  factory Error.create({
    String special_type = "error",
    int? code,
    String? message,
  }) {
    try {
      return Error({
        "@type": special_type,
        "code": code,
        "message": message,
      });
    } catch (e) {
      return Error({
        "@type": "error",
        "error": "${e}",
        "message": "error method Error.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get code {
    try {
      return (rawData[code] as int);
    } catch (e) {
      return null;
    }
  }

  String? get message {
    try {
      return (rawData[message] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Ok {
  late Map rawData;
  Ok(this.rawData);

  factory Ok.create({
    String special_type = "ok",
  }) {
    try {
      return Ok({
        "@type": special_type,
      });
    } catch (e) {
      return Ok({
        "@type": "error",
        "error": "${e}",
        "message": "error method Ok.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AuthenticationCodeType {
  late Map rawData;
  AuthenticationCodeType(this.rawData);

  factory AuthenticationCodeType.create({
    String special_type = "authenticationCodeTypeTelegramMessage",
    int? length,
    String? pattern,
    String? phone_number_prefix,
  }) {
    try {
      return AuthenticationCodeType({
        "@type": special_type,
        "length": length,
        "pattern": pattern,
        "phone_number_prefix": phone_number_prefix,
      });
    } catch (e) {
      return AuthenticationCodeType({
        "@type": "error",
        "error": "${e}",
        "message": "error method AuthenticationCodeType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  String? get pattern {
    try {
      return (rawData[pattern] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number_prefix {
    try {
      return (rawData[phone_number_prefix] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AuthenticationCodeInfo {
  late Map rawData;
  AuthenticationCodeInfo(this.rawData);

  factory AuthenticationCodeInfo.create({
    String special_type = "authenticationCodeInfo",
    String? phone_number,
    AuthenticationCodeType? type,
    AuthenticationCodeType? next_type,
    int? timeout,
  }) {
    try {
      return AuthenticationCodeInfo({
        "@type": special_type,
        "phone_number": phone_number,
        "type": (type != null) ? type.toJson() : null,
        "next_type": (next_type != null) ? next_type.toJson() : null,
        "timeout": timeout,
      });
    } catch (e) {
      return AuthenticationCodeInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method AuthenticationCodeInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  AuthenticationCodeType? get type {
    try {
      return (rawData[type] as AuthenticationCodeType);
    } catch (e) {
      return null;
    }
  }

  AuthenticationCodeType? get next_type {
    try {
      return (rawData[next_type] as AuthenticationCodeType);
    } catch (e) {
      return null;
    }
  }

  int? get timeout {
    try {
      return (rawData[timeout] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EmailAddressAuthenticationCodeInfo {
  late Map rawData;
  EmailAddressAuthenticationCodeInfo(this.rawData);

  factory EmailAddressAuthenticationCodeInfo.create({
    String special_type = "emailAddressAuthenticationCodeInfo",
    String? email_address_pattern,
    int? length,
  }) {
    try {
      return EmailAddressAuthenticationCodeInfo({
        "@type": special_type,
        "email_address_pattern": email_address_pattern,
        "length": length,
      });
    } catch (e) {
      return EmailAddressAuthenticationCodeInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method EmailAddressAuthenticationCodeInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get email_address_pattern {
    try {
      return (rawData[email_address_pattern] as String);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EmailAddressAuthentication {
  late Map rawData;
  EmailAddressAuthentication(this.rawData);

  factory EmailAddressAuthentication.create({
    String special_type = "emailAddressAuthenticationCode",
    String? code,
    String? token,
  }) {
    try {
      return EmailAddressAuthentication({
        "@type": special_type,
        "code": code,
        "token": token,
      });
    } catch (e) {
      return EmailAddressAuthentication({
        "@type": "error",
        "error": "${e}",
        "message": "error method EmailAddressAuthentication.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get code {
    try {
      return (rawData[code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get token {
    try {
      return (rawData[token] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TextEntity {
  late Map rawData;
  TextEntity(this.rawData);

  factory TextEntity.create({
    String special_type = "textEntity",
    int? offset,
    int? length,
    TextEntityType? type,
  }) {
    try {
      return TextEntity({
        "@type": special_type,
        "offset": offset,
        "length": length,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return TextEntity({
        "@type": "error",
        "error": "${e}",
        "message": "error method TextEntity.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get offset {
    try {
      return (rawData[offset] as int);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  TextEntityType? get type {
    try {
      return (rawData[type] as TextEntityType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TextEntities {
  late Map rawData;
  TextEntities(this.rawData);

  factory TextEntities.create({
    String special_type = "textEntities",
    List<TextEntity>? entities,
  }) {
    try {
      return TextEntities({
        "@type": special_type,
        "entities": (entities != null)
            ? entities.map((e) {
                return TextEntity((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return TextEntities({
        "@type": "error",
        "error": "${e}",
        "message": "error method TextEntities.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<TextEntity> get entities {
    try {
      return (rawData[entities] as List<TextEntity>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FormattedText {
  late Map rawData;
  FormattedText(this.rawData);

  factory FormattedText.create({
    String special_type = "formattedText",
    String? text,
    List<TextEntity>? entities,
  }) {
    try {
      return FormattedText({
        "@type": special_type,
        "text": text,
        "entities": (entities != null)
            ? entities.map((e) {
                return TextEntity((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return FormattedText({
        "@type": "error",
        "error": "${e}",
        "message": "error method FormattedText.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  List<TextEntity> get entities {
    try {
      return (rawData[entities] as List<TextEntity>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TermsOfService {
  late Map rawData;
  TermsOfService(this.rawData);

  factory TermsOfService.create({
    String special_type = "termsOfService",
    FormattedText? text,
    int? min_user_age,
    bool? show_popup,
  }) {
    try {
      return TermsOfService({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "min_user_age": min_user_age,
        "show_popup": show_popup,
      });
    } catch (e) {
      return TermsOfService({
        "@type": "error",
        "error": "${e}",
        "message": "error method TermsOfService.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get text {
    try {
      return (rawData[text] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  int? get min_user_age {
    try {
      return (rawData[min_user_age] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get show_popup {
    try {
      return (rawData[show_popup] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AuthorizationState {
  late Map rawData;
  AuthorizationState(this.rawData);

  factory AuthorizationState.create({
    String special_type = "authorizationStateWaitTdlibParameters",
    bool? allow_apple_id,
    bool? allow_google_id,
    AuthenticationCodeInfo? code_info,
    int? next_phone_number_authorization_date,
    String? link,
    TermsOfService? terms_of_service,
    String? password_hint,
    bool? has_recovery_email_address,
    String? recovery_email_address_pattern,
  }) {
    try {
      return AuthorizationState({
        "@type": special_type,
        "allow_apple_id": allow_apple_id,
        "allow_google_id": allow_google_id,
        "code_info": (code_info != null) ? code_info.toJson() : null,
        "next_phone_number_authorization_date": next_phone_number_authorization_date,
        "link": link,
        "terms_of_service": (terms_of_service != null) ? terms_of_service.toJson() : null,
        "password_hint": password_hint,
        "has_recovery_email_address": has_recovery_email_address,
        "recovery_email_address_pattern": recovery_email_address_pattern,
      });
    } catch (e) {
      return AuthorizationState({
        "@type": "error",
        "error": "${e}",
        "message": "error method AuthorizationState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_apple_id {
    try {
      return (rawData[allow_apple_id] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_google_id {
    try {
      return (rawData[allow_google_id] as bool);
    } catch (e) {
      return null;
    }
  }

  AuthenticationCodeInfo? get code_info {
    try {
      return (rawData[code_info] as AuthenticationCodeInfo);
    } catch (e) {
      return null;
    }
  }

  int? get next_phone_number_authorization_date {
    try {
      return (rawData[next_phone_number_authorization_date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get link {
    try {
      return (rawData[link] as String);
    } catch (e) {
      return null;
    }
  }

  TermsOfService? get terms_of_service {
    try {
      return (rawData[terms_of_service] as TermsOfService);
    } catch (e) {
      return null;
    }
  }

  String? get password_hint {
    try {
      return (rawData[password_hint] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_recovery_email_address {
    try {
      return (rawData[has_recovery_email_address] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get recovery_email_address_pattern {
    try {
      return (rawData[recovery_email_address_pattern] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PasswordState {
  late Map rawData;
  PasswordState(this.rawData);

  factory PasswordState.create({
    String special_type = "passwordState",
    bool? has_password,
    String? password_hint,
    bool? has_recovery_email_address,
    bool? has_passport_data,
    EmailAddressAuthenticationCodeInfo? recovery_email_address_code_info,
    String? login_email_address_pattern,
    int? pending_reset_date,
  }) {
    try {
      return PasswordState({
        "@type": special_type,
        "has_password": has_password,
        "password_hint": password_hint,
        "has_recovery_email_address": has_recovery_email_address,
        "has_passport_data": has_passport_data,
        "recovery_email_address_code_info": (recovery_email_address_code_info != null) ? recovery_email_address_code_info.toJson() : null,
        "login_email_address_pattern": login_email_address_pattern,
        "pending_reset_date": pending_reset_date,
      });
    } catch (e) {
      return PasswordState({
        "@type": "error",
        "error": "${e}",
        "message": "error method PasswordState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_password {
    try {
      return (rawData[has_password] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get password_hint {
    try {
      return (rawData[password_hint] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_recovery_email_address {
    try {
      return (rawData[has_recovery_email_address] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_passport_data {
    try {
      return (rawData[has_passport_data] as bool);
    } catch (e) {
      return null;
    }
  }

  EmailAddressAuthenticationCodeInfo? get recovery_email_address_code_info {
    try {
      return (rawData[recovery_email_address_code_info] as EmailAddressAuthenticationCodeInfo);
    } catch (e) {
      return null;
    }
  }

  String? get login_email_address_pattern {
    try {
      return (rawData[login_email_address_pattern] as String);
    } catch (e) {
      return null;
    }
  }

  int? get pending_reset_date {
    try {
      return (rawData[pending_reset_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RecoveryEmailAddress {
  late Map rawData;
  RecoveryEmailAddress(this.rawData);

  factory RecoveryEmailAddress.create({
    String special_type = "recoveryEmailAddress",
    String? recovery_email_address,
  }) {
    try {
      return RecoveryEmailAddress({
        "@type": special_type,
        "recovery_email_address": recovery_email_address,
      });
    } catch (e) {
      return RecoveryEmailAddress({
        "@type": "error",
        "error": "${e}",
        "message": "error method RecoveryEmailAddress.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get recovery_email_address {
    try {
      return (rawData[recovery_email_address] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TemporaryPasswordState {
  late Map rawData;
  TemporaryPasswordState(this.rawData);

  factory TemporaryPasswordState.create({
    String special_type = "temporaryPasswordState",
    bool? has_password,
    int? valid_for,
  }) {
    try {
      return TemporaryPasswordState({
        "@type": special_type,
        "has_password": has_password,
        "valid_for": valid_for,
      });
    } catch (e) {
      return TemporaryPasswordState({
        "@type": "error",
        "error": "${e}",
        "message": "error method TemporaryPasswordState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_password {
    try {
      return (rawData[has_password] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get valid_for {
    try {
      return (rawData[valid_for] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LocalFile {
  late Map rawData;
  LocalFile(this.rawData);

  factory LocalFile.create({
    String special_type = "localFile",
    String? path,
    bool? can_be_downloaded,
    bool? can_be_deleted,
    bool? is_downloading_active,
    bool? is_downloading_completed,
    int? download_offset,
    int? downloaded_prefix_size,
    int? downloaded_size,
  }) {
    try {
      return LocalFile({
        "@type": special_type,
        "path": path,
        "can_be_downloaded": can_be_downloaded,
        "can_be_deleted": can_be_deleted,
        "is_downloading_active": is_downloading_active,
        "is_downloading_completed": is_downloading_completed,
        "download_offset": download_offset,
        "downloaded_prefix_size": downloaded_prefix_size,
        "downloaded_size": downloaded_size,
      });
    } catch (e) {
      return LocalFile({
        "@type": "error",
        "error": "${e}",
        "message": "error method LocalFile.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get path {
    try {
      return (rawData[path] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_downloaded {
    try {
      return (rawData[can_be_downloaded] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_deleted {
    try {
      return (rawData[can_be_deleted] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_downloading_active {
    try {
      return (rawData[is_downloading_active] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_downloading_completed {
    try {
      return (rawData[is_downloading_completed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get download_offset {
    try {
      return (rawData[download_offset] as int);
    } catch (e) {
      return null;
    }
  }

  int? get downloaded_prefix_size {
    try {
      return (rawData[downloaded_prefix_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get downloaded_size {
    try {
      return (rawData[downloaded_size] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RemoteFile {
  late Map rawData;
  RemoteFile(this.rawData);

  factory RemoteFile.create({
    String special_type = "remoteFile",
    String? id,
    String? unique_id,
    bool? is_uploading_active,
    bool? is_uploading_completed,
    int? uploaded_size,
  }) {
    try {
      return RemoteFile({
        "@type": special_type,
        "id": id,
        "unique_id": unique_id,
        "is_uploading_active": is_uploading_active,
        "is_uploading_completed": is_uploading_completed,
        "uploaded_size": uploaded_size,
      });
    } catch (e) {
      return RemoteFile({
        "@type": "error",
        "error": "${e}",
        "message": "error method RemoteFile.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get unique_id {
    try {
      return (rawData[unique_id] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_uploading_active {
    try {
      return (rawData[is_uploading_active] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_uploading_completed {
    try {
      return (rawData[is_uploading_completed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get uploaded_size {
    try {
      return (rawData[uploaded_size] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class File {
  late Map rawData;
  File(this.rawData);

  factory File.create({
    String special_type = "file",
    int? id,
    int? size,
    int? expected_size,
    LocalFile? local,
    RemoteFile? remote,
  }) {
    try {
      return File({
        "@type": special_type,
        "id": id,
        "size": size,
        "expected_size": expected_size,
        "local": (local != null) ? local.toJson() : null,
        "remote": (remote != null) ? remote.toJson() : null,
      });
    } catch (e) {
      return File({
        "@type": "error",
        "error": "${e}",
        "message": "error method File.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get expected_size {
    try {
      return (rawData[expected_size] as int);
    } catch (e) {
      return null;
    }
  }

  LocalFile? get local {
    try {
      return (rawData[local] as LocalFile);
    } catch (e) {
      return null;
    }
  }

  RemoteFile? get remote {
    try {
      return (rawData[remote] as RemoteFile);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputFile {
  late Map rawData;
  InputFile(this.rawData);

  factory InputFile.create({
    String special_type = "inputFileId",
    String? id,
    String? path,
    String? original_path,
    String? conversion,
    int? expected_size,
  }) {
    try {
      return InputFile({
        "@type": special_type,
        "id": id,
        "path": path,
        "original_path": original_path,
        "conversion": conversion,
        "expected_size": expected_size,
      });
    } catch (e) {
      return InputFile({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputFile.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get path {
    try {
      return (rawData[path] as String);
    } catch (e) {
      return null;
    }
  }

  String? get original_path {
    try {
      return (rawData[original_path] as String);
    } catch (e) {
      return null;
    }
  }

  String? get conversion {
    try {
      return (rawData[conversion] as String);
    } catch (e) {
      return null;
    }
  }

  int? get expected_size {
    try {
      return (rawData[expected_size] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PhotoSize {
  late Map rawData;
  PhotoSize(this.rawData);

  factory PhotoSize.create({
    String special_type = "photoSize",
    String? type,
    File? photo,
    int? width,
    int? height,
    List<int>? progressive_sizes,
  }) {
    try {
      return PhotoSize({
        "@type": special_type,
        "type": type,
        "photo": (photo != null) ? photo.toJson() : null,
        "width": width,
        "height": height,
        "progressive_sizes": progressive_sizes,
      });
    } catch (e) {
      return PhotoSize({
        "@type": "error",
        "error": "${e}",
        "message": "error method PhotoSize.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      return (rawData[type] as String);
    } catch (e) {
      return null;
    }
  }

  File? get photo {
    try {
      return (rawData[photo] as File);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get progressive_sizes {
    try {
      return (rawData[progressive_sizes] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Minithumbnail {
  late Map rawData;
  Minithumbnail(this.rawData);

  factory Minithumbnail.create({
    String special_type = "minithumbnail",
    int? width,
    int? height,
    String? data,
  }) {
    try {
      return Minithumbnail({
        "@type": special_type,
        "width": width,
        "height": height,
        "data": data,
      });
    } catch (e) {
      return Minithumbnail({
        "@type": "error",
        "error": "${e}",
        "message": "error method Minithumbnail.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ThumbnailFormat {
  late Map rawData;
  ThumbnailFormat(this.rawData);

  factory ThumbnailFormat.create({
    String special_type = "thumbnailFormatJpeg",
  }) {
    try {
      return ThumbnailFormat({
        "@type": special_type,
      });
    } catch (e) {
      return ThumbnailFormat({
        "@type": "error",
        "error": "${e}",
        "message": "error method ThumbnailFormat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Thumbnail {
  late Map rawData;
  Thumbnail(this.rawData);

  factory Thumbnail.create({
    String special_type = "thumbnail",
    ThumbnailFormat? format,
    int? width,
    int? height,
    File? file,
  }) {
    try {
      return Thumbnail({
        "@type": special_type,
        "format": (format != null) ? format.toJson() : null,
        "width": width,
        "height": height,
        "file": (file != null) ? file.toJson() : null,
      });
    } catch (e) {
      return Thumbnail({
        "@type": "error",
        "error": "${e}",
        "message": "error method Thumbnail.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ThumbnailFormat? get format {
    try {
      return (rawData[format] as ThumbnailFormat);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  File? get file {
    try {
      return (rawData[file] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MaskPoint {
  late Map rawData;
  MaskPoint(this.rawData);

  factory MaskPoint.create({
    String special_type = "maskPointForehead",
  }) {
    try {
      return MaskPoint({
        "@type": special_type,
      });
    } catch (e) {
      return MaskPoint({
        "@type": "error",
        "error": "${e}",
        "message": "error method MaskPoint.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MaskPosition {
  late Map rawData;
  MaskPosition(this.rawData);

  factory MaskPosition.create({
    String special_type = "maskPosition",
    MaskPoint? point,
    double? x_shift,
    double? y_shift,
    double? scale,
  }) {
    try {
      return MaskPosition({
        "@type": special_type,
        "point": (point != null) ? point.toJson() : null,
        "x_shift": x_shift,
        "y_shift": y_shift,
        "scale": scale,
      });
    } catch (e) {
      return MaskPosition({
        "@type": "error",
        "error": "${e}",
        "message": "error method MaskPosition.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MaskPoint? get point {
    try {
      return (rawData[point] as MaskPoint);
    } catch (e) {
      return null;
    }
  }

  double? get x_shift {
    try {
      return (rawData[x_shift] as double);
    } catch (e) {
      return null;
    }
  }

  double? get y_shift {
    try {
      return (rawData[y_shift] as double);
    } catch (e) {
      return null;
    }
  }

  double? get scale {
    try {
      return (rawData[scale] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StickerFormat {
  late Map rawData;
  StickerFormat(this.rawData);

  factory StickerFormat.create({
    String special_type = "stickerFormatWebp",
  }) {
    try {
      return StickerFormat({
        "@type": special_type,
      });
    } catch (e) {
      return StickerFormat({
        "@type": "error",
        "error": "${e}",
        "message": "error method StickerFormat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StickerType {
  late Map rawData;
  StickerType(this.rawData);

  factory StickerType.create({
    String special_type = "stickerTypeRegular",
  }) {
    try {
      return StickerType({
        "@type": special_type,
      });
    } catch (e) {
      return StickerType({
        "@type": "error",
        "error": "${e}",
        "message": "error method StickerType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ClosedVectorPath {
  late Map rawData;
  ClosedVectorPath(this.rawData);

  factory ClosedVectorPath.create({
    String special_type = "closedVectorPath",
    List<VectorPathCommand>? commands,
  }) {
    try {
      return ClosedVectorPath({
        "@type": special_type,
        "commands": (commands != null)
            ? commands.map((e) {
                return VectorPathCommand((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ClosedVectorPath({
        "@type": "error",
        "error": "${e}",
        "message": "error method ClosedVectorPath.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<VectorPathCommand> get commands {
    try {
      return (rawData[commands] as List<VectorPathCommand>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PollOption {
  late Map rawData;
  PollOption(this.rawData);

  factory PollOption.create({
    String special_type = "pollOption",
    String? text,
    int? voter_count,
    int? vote_percentage,
    bool? is_chosen,
    bool? is_being_chosen,
  }) {
    try {
      return PollOption({
        "@type": special_type,
        "text": text,
        "voter_count": voter_count,
        "vote_percentage": vote_percentage,
        "is_chosen": is_chosen,
        "is_being_chosen": is_being_chosen,
      });
    } catch (e) {
      return PollOption({
        "@type": "error",
        "error": "${e}",
        "message": "error method PollOption.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  int? get voter_count {
    try {
      return (rawData[voter_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get vote_percentage {
    try {
      return (rawData[vote_percentage] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_chosen {
    try {
      return (rawData[is_chosen] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_being_chosen {
    try {
      return (rawData[is_being_chosen] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PollType {
  late Map rawData;
  PollType(this.rawData);

  factory PollType.create({
    String special_type = "pollTypeRegular",
    bool? allow_multiple_answers,
    int? correct_option_id,
    FormattedText? explanation,
  }) {
    try {
      return PollType({
        "@type": special_type,
        "allow_multiple_answers": allow_multiple_answers,
        "correct_option_id": correct_option_id,
        "explanation": (explanation != null) ? explanation.toJson() : null,
      });
    } catch (e) {
      return PollType({
        "@type": "error",
        "error": "${e}",
        "message": "error method PollType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_multiple_answers {
    try {
      return (rawData[allow_multiple_answers] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get correct_option_id {
    try {
      return (rawData[correct_option_id] as int);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get explanation {
    try {
      return (rawData[explanation] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Animation {
  late Map rawData;
  Animation(this.rawData);

  factory Animation.create({
    String special_type = "animation",
    int? duration,
    int? width,
    int? height,
    String? file_name,
    String? mime_type,
    bool? has_stickers,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? animation,
  }) {
    try {
      return Animation({
        "@type": special_type,
        "duration": duration,
        "width": width,
        "height": height,
        "file_name": file_name,
        "mime_type": mime_type,
        "has_stickers": has_stickers,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
      });
    } catch (e) {
      return Animation({
        "@type": "error",
        "error": "${e}",
        "message": "error method Animation.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      return (rawData[file_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_stickers {
    try {
      return (rawData[has_stickers] as bool);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  File? get animation {
    try {
      return (rawData[animation] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Audio {
  late Map rawData;
  Audio(this.rawData);

  factory Audio.create({
    String special_type = "audio",
    int? duration,
    String? title,
    String? performer,
    String? file_name,
    String? mime_type,
    Minithumbnail? album_cover_minithumbnail,
    Thumbnail? album_cover_thumbnail,
    List<Thumbnail>? external_album_covers,
    File? audio,
  }) {
    try {
      return Audio({
        "@type": special_type,
        "duration": duration,
        "title": title,
        "performer": performer,
        "file_name": file_name,
        "mime_type": mime_type,
        "album_cover_minithumbnail": (album_cover_minithumbnail != null) ? album_cover_minithumbnail.toJson() : null,
        "album_cover_thumbnail": (album_cover_thumbnail != null) ? album_cover_thumbnail.toJson() : null,
        "external_album_covers": (external_album_covers != null)
            ? external_album_covers.map((e) {
                return Thumbnail((e as Map)).toJson();
              }).toList()
            : null,
        "audio": (audio != null) ? audio.toJson() : null,
      });
    } catch (e) {
      return Audio({
        "@type": "error",
        "error": "${e}",
        "message": "error method Audio.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get performer {
    try {
      return (rawData[performer] as String);
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      return (rawData[file_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get album_cover_minithumbnail {
    try {
      return (rawData[album_cover_minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get album_cover_thumbnail {
    try {
      return (rawData[album_cover_thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  List<Thumbnail> get external_album_covers {
    try {
      return (rawData[external_album_covers] as List<Thumbnail>);
    } catch (e) {
      return [];
    }
  }

  File? get audio {
    try {
      return (rawData[audio] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Document {
  late Map rawData;
  Document(this.rawData);

  factory Document.create({
    String special_type = "document",
    String? file_name,
    String? mime_type,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? document,
  }) {
    try {
      return Document({
        "@type": special_type,
        "file_name": file_name,
        "mime_type": mime_type,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "document": (document != null) ? document.toJson() : null,
      });
    } catch (e) {
      return Document({
        "@type": "error",
        "error": "${e}",
        "message": "error method Document.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      return (rawData[file_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  File? get document {
    try {
      return (rawData[document] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Photo {
  late Map rawData;
  Photo(this.rawData);

  factory Photo.create({
    String special_type = "photo",
    bool? has_stickers,
    Minithumbnail? minithumbnail,
    List<PhotoSize>? sizes,
  }) {
    try {
      return Photo({
        "@type": special_type,
        "has_stickers": has_stickers,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "sizes": (sizes != null)
            ? sizes.map((e) {
                return PhotoSize((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Photo({
        "@type": "error",
        "error": "${e}",
        "message": "error method Photo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_stickers {
    try {
      return (rawData[has_stickers] as bool);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  List<PhotoSize> get sizes {
    try {
      return (rawData[sizes] as List<PhotoSize>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Sticker {
  late Map rawData;
  Sticker(this.rawData);

  factory Sticker.create({
    String special_type = "sticker",
    int? set_id,
    int? width,
    int? height,
    String? emoji,
    StickerFormat? format,
    StickerType? type,
    MaskPosition? mask_position,
    int? custom_emoji_id,
    List<ClosedVectorPath>? outline,
    Thumbnail? thumbnail,
    bool? is_premium,
    File? premium_animation,
    File? sticker,
  }) {
    try {
      return Sticker({
        "@type": special_type,
        "set_id": set_id,
        "width": width,
        "height": height,
        "emoji": emoji,
        "format": (format != null) ? format.toJson() : null,
        "type": (type != null) ? type.toJson() : null,
        "mask_position": (mask_position != null) ? mask_position.toJson() : null,
        "custom_emoji_id": custom_emoji_id,
        "outline": (outline != null)
            ? outline.map((e) {
                return ClosedVectorPath((e as Map)).toJson();
              }).toList()
            : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "is_premium": is_premium,
        "premium_animation": (premium_animation != null) ? premium_animation.toJson() : null,
        "sticker": (sticker != null) ? sticker.toJson() : null,
      });
    } catch (e) {
      return Sticker({
        "@type": "error",
        "error": "${e}",
        "message": "error method Sticker.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get set_id {
    try {
      return (rawData[set_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  StickerFormat? get format {
    try {
      return (rawData[format] as StickerFormat);
    } catch (e) {
      return null;
    }
  }

  StickerType? get type {
    try {
      return (rawData[type] as StickerType);
    } catch (e) {
      return null;
    }
  }

  MaskPosition? get mask_position {
    try {
      return (rawData[mask_position] as MaskPosition);
    } catch (e) {
      return null;
    }
  }

  int? get custom_emoji_id {
    try {
      return (rawData[custom_emoji_id] as int);
    } catch (e) {
      return null;
    }
  }

  List<ClosedVectorPath> get outline {
    try {
      return (rawData[outline] as List<ClosedVectorPath>);
    } catch (e) {
      return [];
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  bool? get is_premium {
    try {
      return (rawData[is_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  File? get premium_animation {
    try {
      return (rawData[premium_animation] as File);
    } catch (e) {
      return null;
    }
  }

  File? get sticker {
    try {
      return (rawData[sticker] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Video {
  late Map rawData;
  Video(this.rawData);

  factory Video.create({
    String special_type = "video",
    int? duration,
    int? width,
    int? height,
    String? file_name,
    String? mime_type,
    bool? has_stickers,
    bool? supports_streaming,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? video,
  }) {
    try {
      return Video({
        "@type": special_type,
        "duration": duration,
        "width": width,
        "height": height,
        "file_name": file_name,
        "mime_type": mime_type,
        "has_stickers": has_stickers,
        "supports_streaming": supports_streaming,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "video": (video != null) ? video.toJson() : null,
      });
    } catch (e) {
      return Video({
        "@type": "error",
        "error": "${e}",
        "message": "error method Video.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      return (rawData[file_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_stickers {
    try {
      return (rawData[has_stickers] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_streaming {
    try {
      return (rawData[supports_streaming] as bool);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  File? get video {
    try {
      return (rawData[video] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class VideoNote {
  late Map rawData;
  VideoNote(this.rawData);

  factory VideoNote.create({
    String special_type = "videoNote",
    int? duration,
    int? length,
    Minithumbnail? minithumbnail,
    Thumbnail? thumbnail,
    File? video,
  }) {
    try {
      return VideoNote({
        "@type": special_type,
        "duration": duration,
        "length": length,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "video": (video != null) ? video.toJson() : null,
      });
    } catch (e) {
      return VideoNote({
        "@type": "error",
        "error": "${e}",
        "message": "error method VideoNote.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  File? get video {
    try {
      return (rawData[video] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class VoiceNote {
  late Map rawData;
  VoiceNote(this.rawData);

  factory VoiceNote.create({
    String special_type = "voiceNote",
    int? duration,
    String? waveform,
    String? mime_type,
    SpeechRecognitionResult? speech_recognition_result,
    File? voice,
  }) {
    try {
      return VoiceNote({
        "@type": special_type,
        "duration": duration,
        "waveform": waveform,
        "mime_type": mime_type,
        "speech_recognition_result": (speech_recognition_result != null) ? speech_recognition_result.toJson() : null,
        "voice": (voice != null) ? voice.toJson() : null,
      });
    } catch (e) {
      return VoiceNote({
        "@type": "error",
        "error": "${e}",
        "message": "error method VoiceNote.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  String? get waveform {
    try {
      return (rawData[waveform] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  SpeechRecognitionResult? get speech_recognition_result {
    try {
      return (rawData[speech_recognition_result] as SpeechRecognitionResult);
    } catch (e) {
      return null;
    }
  }

  File? get voice {
    try {
      return (rawData[voice] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AnimatedEmoji {
  late Map rawData;
  AnimatedEmoji(this.rawData);

  factory AnimatedEmoji.create({
    String special_type = "animatedEmoji",
    Sticker? sticker,
    int? sticker_width,
    int? sticker_height,
    int? fitzpatrick_type,
    File? sound,
  }) {
    try {
      return AnimatedEmoji({
        "@type": special_type,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "sticker_width": sticker_width,
        "sticker_height": sticker_height,
        "fitzpatrick_type": fitzpatrick_type,
        "sound": (sound != null) ? sound.toJson() : null,
      });
    } catch (e) {
      return AnimatedEmoji({
        "@type": "error",
        "error": "${e}",
        "message": "error method AnimatedEmoji.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_width {
    try {
      return (rawData[sticker_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_height {
    try {
      return (rawData[sticker_height] as int);
    } catch (e) {
      return null;
    }
  }

  int? get fitzpatrick_type {
    try {
      return (rawData[fitzpatrick_type] as int);
    } catch (e) {
      return null;
    }
  }

  File? get sound {
    try {
      return (rawData[sound] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Contact {
  late Map rawData;
  Contact(this.rawData);

  factory Contact.create({
    String special_type = "contact",
    String? phone_number,
    String? first_name,
    String? last_name,
    String? vcard,
    int? user_id,
  }) {
    try {
      return Contact({
        "@type": special_type,
        "phone_number": phone_number,
        "first_name": first_name,
        "last_name": last_name,
        "vcard": vcard,
        "user_id": user_id,
      });
    } catch (e) {
      return Contact({
        "@type": "error",
        "error": "${e}",
        "message": "error method Contact.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  String? get first_name {
    try {
      return (rawData[first_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get last_name {
    try {
      return (rawData[last_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get vcard {
    try {
      return (rawData[vcard] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Location {
  late Map rawData;
  Location(this.rawData);

  factory Location.create({
    String special_type = "location",
    double? latitude,
    double? longitude,
    double? horizontal_accuracy,
  }) {
    try {
      return Location({
        "@type": special_type,
        "latitude": latitude,
        "longitude": longitude,
        "horizontal_accuracy": horizontal_accuracy,
      });
    } catch (e) {
      return Location({
        "@type": "error",
        "error": "${e}",
        "message": "error method Location.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  double? get latitude {
    try {
      return (rawData[latitude] as double);
    } catch (e) {
      return null;
    }
  }

  double? get longitude {
    try {
      return (rawData[longitude] as double);
    } catch (e) {
      return null;
    }
  }

  double? get horizontal_accuracy {
    try {
      return (rawData[horizontal_accuracy] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Venue {
  late Map rawData;
  Venue(this.rawData);

  factory Venue.create({
    String special_type = "venue",
    Location? location,
    String? title,
    String? address,
    String? provider,
    String? id,
    String? type,
  }) {
    try {
      return Venue({
        "@type": special_type,
        "location": (location != null) ? location.toJson() : null,
        "title": title,
        "address": address,
        "provider": provider,
        "id": id,
        "type": type,
      });
    } catch (e) {
      return Venue({
        "@type": "error",
        "error": "${e}",
        "message": "error method Venue.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get address {
    try {
      return (rawData[address] as String);
    } catch (e) {
      return null;
    }
  }

  String? get provider {
    try {
      return (rawData[provider] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      return (rawData[type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Game {
  late Map rawData;
  Game(this.rawData);

  factory Game.create({
    String special_type = "game",
    int? id,
    String? short_name,
    String? title,
    FormattedText? text,
    String? description,
    Photo? photo,
    Animation? animation,
  }) {
    try {
      return Game({
        "@type": special_type,
        "id": id,
        "short_name": short_name,
        "title": title,
        "text": (text != null) ? text.toJson() : null,
        "description": description,
        "photo": (photo != null) ? photo.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
      });
    } catch (e) {
      return Game({
        "@type": "error",
        "error": "${e}",
        "message": "error method Game.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get short_name {
    try {
      return (rawData[short_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get text {
    try {
      return (rawData[text] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Poll {
  late Map rawData;
  Poll(this.rawData);

  factory Poll.create({
    String special_type = "poll",
    int? id,
    String? question,
    List<PollOption>? options,
    int? total_voter_count,
    List<int>? recent_voter_user_ids,
    bool? is_anonymous,
    PollType? type,
    int? open_period,
    int? close_date,
    bool? is_closed,
  }) {
    try {
      return Poll({
        "@type": special_type,
        "id": id,
        "question": question,
        "options": (options != null)
            ? options.map((e) {
                return PollOption((e as Map)).toJson();
              }).toList()
            : null,
        "total_voter_count": total_voter_count,
        "recent_voter_user_ids": recent_voter_user_ids,
        "is_anonymous": is_anonymous,
        "type": (type != null) ? type.toJson() : null,
        "open_period": open_period,
        "close_date": close_date,
        "is_closed": is_closed,
      });
    } catch (e) {
      return Poll({
        "@type": "error",
        "error": "${e}",
        "message": "error method Poll.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get question {
    try {
      return (rawData[question] as String);
    } catch (e) {
      return null;
    }
  }

  List<PollOption> get options {
    try {
      return (rawData[options] as List<PollOption>);
    } catch (e) {
      return [];
    }
  }

  int? get total_voter_count {
    try {
      return (rawData[total_voter_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get recent_voter_user_ids {
    try {
      return (rawData[recent_voter_user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_anonymous {
    try {
      return (rawData[is_anonymous] as bool);
    } catch (e) {
      return null;
    }
  }

  PollType? get type {
    try {
      return (rawData[type] as PollType);
    } catch (e) {
      return null;
    }
  }

  int? get open_period {
    try {
      return (rawData[open_period] as int);
    } catch (e) {
      return null;
    }
  }

  int? get close_date {
    try {
      return (rawData[close_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_closed {
    try {
      return (rawData[is_closed] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ProfilePhoto {
  late Map rawData;
  ProfilePhoto(this.rawData);

  factory ProfilePhoto.create({
    String special_type = "profilePhoto",
    int? id,
    File? small,
    File? big,
    Minithumbnail? minithumbnail,
    bool? has_animation,
  }) {
    try {
      return ProfilePhoto({
        "@type": special_type,
        "id": id,
        "small": (small != null) ? small.toJson() : null,
        "big": (big != null) ? big.toJson() : null,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "has_animation": has_animation,
      });
    } catch (e) {
      return ProfilePhoto({
        "@type": "error",
        "error": "${e}",
        "message": "error method ProfilePhoto.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  File? get small {
    try {
      return (rawData[small] as File);
    } catch (e) {
      return null;
    }
  }

  File? get big {
    try {
      return (rawData[big] as File);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  bool? get has_animation {
    try {
      return (rawData[has_animation] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatPhotoInfo {
  late Map rawData;
  ChatPhotoInfo(this.rawData);

  factory ChatPhotoInfo.create({
    String special_type = "chatPhotoInfo",
    File? small,
    File? big,
    Minithumbnail? minithumbnail,
    bool? has_animation,
  }) {
    try {
      return ChatPhotoInfo({
        "@type": special_type,
        "small": (small != null) ? small.toJson() : null,
        "big": (big != null) ? big.toJson() : null,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "has_animation": has_animation,
      });
    } catch (e) {
      return ChatPhotoInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatPhotoInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  File? get small {
    try {
      return (rawData[small] as File);
    } catch (e) {
      return null;
    }
  }

  File? get big {
    try {
      return (rawData[big] as File);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  bool? get has_animation {
    try {
      return (rawData[has_animation] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserType {
  late Map rawData;
  UserType(this.rawData);

  factory UserType.create({
    String special_type = "userTypeRegular",
    bool? can_join_groups,
    bool? can_read_all_group_messages,
    bool? is_inline,
    String? inline_query_placeholder,
    bool? need_location,
    bool? can_be_added_to_attachment_menu,
  }) {
    try {
      return UserType({
        "@type": special_type,
        "can_join_groups": can_join_groups,
        "can_read_all_group_messages": can_read_all_group_messages,
        "is_inline": is_inline,
        "inline_query_placeholder": inline_query_placeholder,
        "need_location": need_location,
        "can_be_added_to_attachment_menu": can_be_added_to_attachment_menu,
      });
    } catch (e) {
      return UserType({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_join_groups {
    try {
      return (rawData[can_join_groups] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_read_all_group_messages {
    try {
      return (rawData[can_read_all_group_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_inline {
    try {
      return (rawData[is_inline] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get inline_query_placeholder {
    try {
      return (rawData[inline_query_placeholder] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get need_location {
    try {
      return (rawData[need_location] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_added_to_attachment_menu {
    try {
      return (rawData[can_be_added_to_attachment_menu] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BotCommand {
  late Map rawData;
  BotCommand(this.rawData);

  factory BotCommand.create({
    String special_type = "botCommand",
    String? command,
    String? description,
  }) {
    try {
      return BotCommand({
        "@type": special_type,
        "command": command,
        "description": description,
      });
    } catch (e) {
      return BotCommand({
        "@type": "error",
        "error": "${e}",
        "message": "error method BotCommand.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get command {
    try {
      return (rawData[command] as String);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BotCommands {
  late Map rawData;
  BotCommands(this.rawData);

  factory BotCommands.create({
    String special_type = "botCommands",
    int? bot_user_id,
    List<BotCommand>? commands,
  }) {
    try {
      return BotCommands({
        "@type": special_type,
        "bot_user_id": bot_user_id,
        "commands": (commands != null)
            ? commands.map((e) {
                return BotCommand((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return BotCommands({
        "@type": "error",
        "error": "${e}",
        "message": "error method BotCommands.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  List<BotCommand> get commands {
    try {
      return (rawData[commands] as List<BotCommand>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BotMenuButton {
  late Map rawData;
  BotMenuButton(this.rawData);

  factory BotMenuButton.create({
    String special_type = "botMenuButton",
    String? text,
    String? url,
  }) {
    try {
      return BotMenuButton({
        "@type": special_type,
        "text": text,
        "url": url,
      });
    } catch (e) {
      return BotMenuButton({
        "@type": "error",
        "error": "${e}",
        "message": "error method BotMenuButton.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatLocation {
  late Map rawData;
  ChatLocation(this.rawData);

  factory ChatLocation.create({
    String special_type = "chatLocation",
    Location? location,
    String? address,
  }) {
    try {
      return ChatLocation({
        "@type": special_type,
        "location": (location != null) ? location.toJson() : null,
        "address": address,
      });
    } catch (e) {
      return ChatLocation({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatLocation.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  String? get address {
    try {
      return (rawData[address] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AnimatedChatPhoto {
  late Map rawData;
  AnimatedChatPhoto(this.rawData);

  factory AnimatedChatPhoto.create({
    String special_type = "animatedChatPhoto",
    int? length,
    File? file,
    double? main_frame_timestamp,
  }) {
    try {
      return AnimatedChatPhoto({
        "@type": special_type,
        "length": length,
        "file": (file != null) ? file.toJson() : null,
        "main_frame_timestamp": main_frame_timestamp,
      });
    } catch (e) {
      return AnimatedChatPhoto({
        "@type": "error",
        "error": "${e}",
        "message": "error method AnimatedChatPhoto.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  File? get file {
    try {
      return (rawData[file] as File);
    } catch (e) {
      return null;
    }
  }

  double? get main_frame_timestamp {
    try {
      return (rawData[main_frame_timestamp] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatPhoto {
  late Map rawData;
  ChatPhoto(this.rawData);

  factory ChatPhoto.create({
    String special_type = "chatPhoto",
    int? id,
    int? added_date,
    Minithumbnail? minithumbnail,
    List<PhotoSize>? sizes,
    AnimatedChatPhoto? animation,
    AnimatedChatPhoto? small_animation,
  }) {
    try {
      return ChatPhoto({
        "@type": special_type,
        "id": id,
        "added_date": added_date,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "sizes": (sizes != null)
            ? sizes.map((e) {
                return PhotoSize((e as Map)).toJson();
              }).toList()
            : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "small_animation": (small_animation != null) ? small_animation.toJson() : null,
      });
    } catch (e) {
      return ChatPhoto({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatPhoto.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get added_date {
    try {
      return (rawData[added_date] as int);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  List<PhotoSize> get sizes {
    try {
      return (rawData[sizes] as List<PhotoSize>);
    } catch (e) {
      return [];
    }
  }

  AnimatedChatPhoto? get animation {
    try {
      return (rawData[animation] as AnimatedChatPhoto);
    } catch (e) {
      return null;
    }
  }

  AnimatedChatPhoto? get small_animation {
    try {
      return (rawData[small_animation] as AnimatedChatPhoto);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatPhotos {
  late Map rawData;
  ChatPhotos(this.rawData);

  factory ChatPhotos.create({
    String special_type = "chatPhotos",
    int? total_count,
    List<ChatPhoto>? photos,
  }) {
    try {
      return ChatPhotos({
        "@type": special_type,
        "total_count": total_count,
        "photos": (photos != null)
            ? photos.map((e) {
                return ChatPhoto((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatPhotos({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatPhotos.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatPhoto> get photos {
    try {
      return (rawData[photos] as List<ChatPhoto>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputChatPhoto {
  late Map rawData;
  InputChatPhoto(this.rawData);

  factory InputChatPhoto.create({
    String special_type = "inputChatPhotoPrevious",
    int? chat_photo_id,
    InputFile? photo,
    InputFile? animation,
    double? main_frame_timestamp,
  }) {
    try {
      return InputChatPhoto({
        "@type": special_type,
        "chat_photo_id": chat_photo_id,
        "photo": (photo != null) ? photo.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "main_frame_timestamp": main_frame_timestamp,
      });
    } catch (e) {
      return InputChatPhoto({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputChatPhoto.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_photo_id {
    try {
      return (rawData[chat_photo_id] as int);
    } catch (e) {
      return null;
    }
  }

  InputFile? get photo {
    try {
      return (rawData[photo] as InputFile);
    } catch (e) {
      return null;
    }
  }

  InputFile? get animation {
    try {
      return (rawData[animation] as InputFile);
    } catch (e) {
      return null;
    }
  }

  double? get main_frame_timestamp {
    try {
      return (rawData[main_frame_timestamp] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatPermissions {
  late Map rawData;
  ChatPermissions(this.rawData);

  factory ChatPermissions.create({
    String special_type = "chatPermissions",
    bool? can_send_messages,
    bool? can_send_media_messages,
    bool? can_send_polls,
    bool? can_send_other_messages,
    bool? can_add_web_page_previews,
    bool? can_change_info,
    bool? can_invite_users,
    bool? can_pin_messages,
  }) {
    try {
      return ChatPermissions({
        "@type": special_type,
        "can_send_messages": can_send_messages,
        "can_send_media_messages": can_send_media_messages,
        "can_send_polls": can_send_polls,
        "can_send_other_messages": can_send_other_messages,
        "can_add_web_page_previews": can_add_web_page_previews,
        "can_change_info": can_change_info,
        "can_invite_users": can_invite_users,
        "can_pin_messages": can_pin_messages,
      });
    } catch (e) {
      return ChatPermissions({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatPermissions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_send_messages {
    try {
      return (rawData[can_send_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_send_media_messages {
    try {
      return (rawData[can_send_media_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_send_polls {
    try {
      return (rawData[can_send_polls] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_send_other_messages {
    try {
      return (rawData[can_send_other_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_add_web_page_previews {
    try {
      return (rawData[can_add_web_page_previews] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_change_info {
    try {
      return (rawData[can_change_info] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_invite_users {
    try {
      return (rawData[can_invite_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_pin_messages {
    try {
      return (rawData[can_pin_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatAdministratorRights {
  late Map rawData;
  ChatAdministratorRights(this.rawData);

  factory ChatAdministratorRights.create({
    String special_type = "chatAdministratorRights",
    bool? can_manage_chat,
    bool? can_change_info,
    bool? can_post_messages,
    bool? can_edit_messages,
    bool? can_delete_messages,
    bool? can_invite_users,
    bool? can_restrict_members,
    bool? can_pin_messages,
    bool? can_promote_members,
    bool? can_manage_video_chats,
    bool? is_anonymous,
  }) {
    try {
      return ChatAdministratorRights({
        "@type": special_type,
        "can_manage_chat": can_manage_chat,
        "can_change_info": can_change_info,
        "can_post_messages": can_post_messages,
        "can_edit_messages": can_edit_messages,
        "can_delete_messages": can_delete_messages,
        "can_invite_users": can_invite_users,
        "can_restrict_members": can_restrict_members,
        "can_pin_messages": can_pin_messages,
        "can_promote_members": can_promote_members,
        "can_manage_video_chats": can_manage_video_chats,
        "is_anonymous": is_anonymous,
      });
    } catch (e) {
      return ChatAdministratorRights({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatAdministratorRights.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_manage_chat {
    try {
      return (rawData[can_manage_chat] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_change_info {
    try {
      return (rawData[can_change_info] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_post_messages {
    try {
      return (rawData[can_post_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_edit_messages {
    try {
      return (rawData[can_edit_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_delete_messages {
    try {
      return (rawData[can_delete_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_invite_users {
    try {
      return (rawData[can_invite_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_restrict_members {
    try {
      return (rawData[can_restrict_members] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_pin_messages {
    try {
      return (rawData[can_pin_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_promote_members {
    try {
      return (rawData[can_promote_members] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_manage_video_chats {
    try {
      return (rawData[can_manage_video_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_anonymous {
    try {
      return (rawData[is_anonymous] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumPaymentOption {
  late Map rawData;
  PremiumPaymentOption(this.rawData);

  factory PremiumPaymentOption.create({
    String special_type = "premiumPaymentOption",
    String? currency,
    int? amount,
    int? discount_percentage,
    int? month_count,
    String? store_product_id,
    InternalLinkType? payment_link,
  }) {
    try {
      return PremiumPaymentOption({
        "@type": special_type,
        "currency": currency,
        "amount": amount,
        "discount_percentage": discount_percentage,
        "month_count": month_count,
        "store_product_id": store_product_id,
        "payment_link": (payment_link != null) ? payment_link.toJson() : null,
      });
    } catch (e) {
      return PremiumPaymentOption({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumPaymentOption.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      return (rawData[currency] as String);
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      return (rawData[amount] as int);
    } catch (e) {
      return null;
    }
  }

  int? get discount_percentage {
    try {
      return (rawData[discount_percentage] as int);
    } catch (e) {
      return null;
    }
  }

  int? get month_count {
    try {
      return (rawData[month_count] as int);
    } catch (e) {
      return null;
    }
  }

  String? get store_product_id {
    try {
      return (rawData[store_product_id] as String);
    } catch (e) {
      return null;
    }
  }

  InternalLinkType? get payment_link {
    try {
      return (rawData[payment_link] as InternalLinkType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EmojiStatus {
  late Map rawData;
  EmojiStatus(this.rawData);

  factory EmojiStatus.create({
    String special_type = "emojiStatus",
    int? custom_emoji_id,
  }) {
    try {
      return EmojiStatus({
        "@type": special_type,
        "custom_emoji_id": custom_emoji_id,
      });
    } catch (e) {
      return EmojiStatus({
        "@type": "error",
        "error": "${e}",
        "message": "error method EmojiStatus.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get custom_emoji_id {
    try {
      return (rawData[custom_emoji_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EmojiStatuses {
  late Map rawData;
  EmojiStatuses(this.rawData);

  factory EmojiStatuses.create({
    String special_type = "emojiStatuses",
    List<EmojiStatus>? emoji_statuses,
  }) {
    try {
      return EmojiStatuses({
        "@type": special_type,
        "emoji_statuses": (emoji_statuses != null)
            ? emoji_statuses.map((e) {
                return EmojiStatus((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return EmojiStatuses({
        "@type": "error",
        "error": "${e}",
        "message": "error method EmojiStatuses.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<EmojiStatus> get emoji_statuses {
    try {
      return (rawData[emoji_statuses] as List<EmojiStatus>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class User {
  late Map rawData;
  User(this.rawData);

  factory User.create({
    String special_type = "user",
    int? id,
    String? first_name,
    String? last_name,
    String? username,
    String? phone_number,
    UserStatus? status,
    ProfilePhoto? profile_photo,
    EmojiStatus? emoji_status,
    bool? is_contact,
    bool? is_mutual_contact,
    bool? is_verified,
    bool? is_premium,
    bool? is_support,
    String? restriction_reason,
    bool? is_scam,
    bool? is_fake,
    bool? have_access,
    UserType? type,
    String? language_code,
    bool? added_to_attachment_menu,
  }) {
    try {
      return User({
        "@type": special_type,
        "id": id,
        "first_name": first_name,
        "last_name": last_name,
        "username": username,
        "phone_number": phone_number,
        "status": (status != null) ? status.toJson() : null,
        "profile_photo": (profile_photo != null) ? profile_photo.toJson() : null,
        "emoji_status": (emoji_status != null) ? emoji_status.toJson() : null,
        "is_contact": is_contact,
        "is_mutual_contact": is_mutual_contact,
        "is_verified": is_verified,
        "is_premium": is_premium,
        "is_support": is_support,
        "restriction_reason": restriction_reason,
        "is_scam": is_scam,
        "is_fake": is_fake,
        "have_access": have_access,
        "type": (type != null) ? type.toJson() : null,
        "language_code": language_code,
        "added_to_attachment_menu": added_to_attachment_menu,
      });
    } catch (e) {
      return User({
        "@type": "error",
        "error": "${e}",
        "message": "error method User.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get first_name {
    try {
      return (rawData[first_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get last_name {
    try {
      return (rawData[last_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      return (rawData[username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  UserStatus? get status {
    try {
      return (rawData[status] as UserStatus);
    } catch (e) {
      return null;
    }
  }

  ProfilePhoto? get profile_photo {
    try {
      return (rawData[profile_photo] as ProfilePhoto);
    } catch (e) {
      return null;
    }
  }

  EmojiStatus? get emoji_status {
    try {
      return (rawData[emoji_status] as EmojiStatus);
    } catch (e) {
      return null;
    }
  }

  bool? get is_contact {
    try {
      return (rawData[is_contact] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_mutual_contact {
    try {
      return (rawData[is_mutual_contact] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_verified {
    try {
      return (rawData[is_verified] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_premium {
    try {
      return (rawData[is_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_support {
    try {
      return (rawData[is_support] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get restriction_reason {
    try {
      return (rawData[restriction_reason] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_scam {
    try {
      return (rawData[is_scam] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_fake {
    try {
      return (rawData[is_fake] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get have_access {
    try {
      return (rawData[have_access] as bool);
    } catch (e) {
      return null;
    }
  }

  UserType? get type {
    try {
      return (rawData[type] as UserType);
    } catch (e) {
      return null;
    }
  }

  String? get language_code {
    try {
      return (rawData[language_code] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get added_to_attachment_menu {
    try {
      return (rawData[added_to_attachment_menu] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BotInfo {
  late Map rawData;
  BotInfo(this.rawData);

  factory BotInfo.create({
    String special_type = "botInfo",
    String? share_text,
    String? description,
    Photo? photo,
    Animation? animation,
    BotMenuButton? menu_button,
    List<BotCommand>? commands,
    ChatAdministratorRights? default_group_administrator_rights,
    ChatAdministratorRights? default_channel_administrator_rights,
  }) {
    try {
      return BotInfo({
        "@type": special_type,
        "share_text": share_text,
        "description": description,
        "photo": (photo != null) ? photo.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "menu_button": (menu_button != null) ? menu_button.toJson() : null,
        "commands": (commands != null)
            ? commands.map((e) {
                return BotCommand((e as Map)).toJson();
              }).toList()
            : null,
        "default_group_administrator_rights": (default_group_administrator_rights != null) ? default_group_administrator_rights.toJson() : null,
        "default_channel_administrator_rights": (default_channel_administrator_rights != null) ? default_channel_administrator_rights.toJson() : null,
      });
    } catch (e) {
      return BotInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method BotInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get share_text {
    try {
      return (rawData[share_text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  BotMenuButton? get menu_button {
    try {
      return (rawData[menu_button] as BotMenuButton);
    } catch (e) {
      return null;
    }
  }

  List<BotCommand> get commands {
    try {
      return (rawData[commands] as List<BotCommand>);
    } catch (e) {
      return [];
    }
  }

  ChatAdministratorRights? get default_group_administrator_rights {
    try {
      return (rawData[default_group_administrator_rights] as ChatAdministratorRights);
    } catch (e) {
      return null;
    }
  }

  ChatAdministratorRights? get default_channel_administrator_rights {
    try {
      return (rawData[default_channel_administrator_rights] as ChatAdministratorRights);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserFullInfo {
  late Map rawData;
  UserFullInfo(this.rawData);

  factory UserFullInfo.create({
    String special_type = "userFullInfo",
    ChatPhoto? photo,
    bool? is_blocked,
    bool? can_be_called,
    bool? supports_video_calls,
    bool? has_private_calls,
    bool? has_private_forwards,
    bool? has_restricted_voice_and_video_note_messages,
    bool? need_phone_number_privacy_exception,
    FormattedText? bio,
    List<PremiumPaymentOption>? premium_gift_options,
    int? group_in_common_count,
    BotInfo? bot_info,
  }) {
    try {
      return UserFullInfo({
        "@type": special_type,
        "photo": (photo != null) ? photo.toJson() : null,
        "is_blocked": is_blocked,
        "can_be_called": can_be_called,
        "supports_video_calls": supports_video_calls,
        "has_private_calls": has_private_calls,
        "has_private_forwards": has_private_forwards,
        "has_restricted_voice_and_video_note_messages": has_restricted_voice_and_video_note_messages,
        "need_phone_number_privacy_exception": need_phone_number_privacy_exception,
        "bio": (bio != null) ? bio.toJson() : null,
        "premium_gift_options": (premium_gift_options != null)
            ? premium_gift_options.map((e) {
                return PremiumPaymentOption((e as Map)).toJson();
              }).toList()
            : null,
        "group_in_common_count": group_in_common_count,
        "bot_info": (bot_info != null) ? bot_info.toJson() : null,
      });
    } catch (e) {
      return UserFullInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserFullInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get photo {
    try {
      return (rawData[photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  bool? get is_blocked {
    try {
      return (rawData[is_blocked] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_called {
    try {
      return (rawData[can_be_called] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_video_calls {
    try {
      return (rawData[supports_video_calls] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_private_calls {
    try {
      return (rawData[has_private_calls] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_private_forwards {
    try {
      return (rawData[has_private_forwards] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_restricted_voice_and_video_note_messages {
    try {
      return (rawData[has_restricted_voice_and_video_note_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_phone_number_privacy_exception {
    try {
      return (rawData[need_phone_number_privacy_exception] as bool);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get bio {
    try {
      return (rawData[bio] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  List<PremiumPaymentOption> get premium_gift_options {
    try {
      return (rawData[premium_gift_options] as List<PremiumPaymentOption>);
    } catch (e) {
      return [];
    }
  }

  int? get group_in_common_count {
    try {
      return (rawData[group_in_common_count] as int);
    } catch (e) {
      return null;
    }
  }

  BotInfo? get bot_info {
    try {
      return (rawData[bot_info] as BotInfo);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Users {
  late Map rawData;
  Users(this.rawData);

  factory Users.create({
    String special_type = "users",
    int? total_count,
    List<int>? user_ids,
  }) {
    try {
      return Users({
        "@type": special_type,
        "total_count": total_count,
        "user_ids": user_ids,
      });
    } catch (e) {
      return Users({
        "@type": "error",
        "error": "${e}",
        "message": "error method Users.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get user_ids {
    try {
      return (rawData[user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatAdministrator {
  late Map rawData;
  ChatAdministrator(this.rawData);

  factory ChatAdministrator.create({
    String special_type = "chatAdministrator",
    int? user_id,
    String? custom_title,
    bool? is_owner,
  }) {
    try {
      return ChatAdministrator({
        "@type": special_type,
        "user_id": user_id,
        "custom_title": custom_title,
        "is_owner": is_owner,
      });
    } catch (e) {
      return ChatAdministrator({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatAdministrator.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get custom_title {
    try {
      return (rawData[custom_title] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_owner {
    try {
      return (rawData[is_owner] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatAdministrators {
  late Map rawData;
  ChatAdministrators(this.rawData);

  factory ChatAdministrators.create({
    String special_type = "chatAdministrators",
    List<ChatAdministrator>? administrators,
  }) {
    try {
      return ChatAdministrators({
        "@type": special_type,
        "administrators": (administrators != null)
            ? administrators.map((e) {
                return ChatAdministrator((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatAdministrators({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatAdministrators.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatAdministrator> get administrators {
    try {
      return (rawData[administrators] as List<ChatAdministrator>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMemberStatus {
  late Map rawData;
  ChatMemberStatus(this.rawData);

  factory ChatMemberStatus.create({
    String special_type = "chatMemberStatusCreator",
    String? custom_title,
    bool? is_anonymous,
    bool? is_member,
    bool? can_be_edited,
    ChatAdministratorRights? rights,
    int? restricted_until_date,
    ChatPermissions? permissions,
    int? banned_until_date,
  }) {
    try {
      return ChatMemberStatus({
        "@type": special_type,
        "custom_title": custom_title,
        "is_anonymous": is_anonymous,
        "is_member": is_member,
        "can_be_edited": can_be_edited,
        "rights": (rights != null) ? rights.toJson() : null,
        "restricted_until_date": restricted_until_date,
        "permissions": (permissions != null) ? permissions.toJson() : null,
        "banned_until_date": banned_until_date,
      });
    } catch (e) {
      return ChatMemberStatus({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMemberStatus.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get custom_title {
    try {
      return (rawData[custom_title] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_anonymous {
    try {
      return (rawData[is_anonymous] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_member {
    try {
      return (rawData[is_member] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_edited {
    try {
      return (rawData[can_be_edited] as bool);
    } catch (e) {
      return null;
    }
  }

  ChatAdministratorRights? get rights {
    try {
      return (rawData[rights] as ChatAdministratorRights);
    } catch (e) {
      return null;
    }
  }

  int? get restricted_until_date {
    try {
      return (rawData[restricted_until_date] as int);
    } catch (e) {
      return null;
    }
  }

  ChatPermissions? get permissions {
    try {
      return (rawData[permissions] as ChatPermissions);
    } catch (e) {
      return null;
    }
  }

  int? get banned_until_date {
    try {
      return (rawData[banned_until_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMember {
  late Map rawData;
  ChatMember(this.rawData);

  factory ChatMember.create({
    String special_type = "chatMember",
    MessageSender? member_id,
    int? inviter_user_id,
    int? joined_chat_date,
    ChatMemberStatus? status,
  }) {
    try {
      return ChatMember({
        "@type": special_type,
        "member_id": (member_id != null) ? member_id.toJson() : null,
        "inviter_user_id": inviter_user_id,
        "joined_chat_date": joined_chat_date,
        "status": (status != null) ? status.toJson() : null,
      });
    } catch (e) {
      return ChatMember({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMember.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get member_id {
    try {
      return (rawData[member_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  int? get inviter_user_id {
    try {
      return (rawData[inviter_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get joined_chat_date {
    try {
      return (rawData[joined_chat_date] as int);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get status {
    try {
      return (rawData[status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMembers {
  late Map rawData;
  ChatMembers(this.rawData);

  factory ChatMembers.create({
    String special_type = "chatMembers",
    int? total_count,
    List<ChatMember>? members,
  }) {
    try {
      return ChatMembers({
        "@type": special_type,
        "total_count": total_count,
        "members": (members != null)
            ? members.map((e) {
                return ChatMember((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatMembers({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMembers.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatMember> get members {
    try {
      return (rawData[members] as List<ChatMember>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMembersFilter {
  late Map rawData;
  ChatMembersFilter(this.rawData);

  factory ChatMembersFilter.create({
    String special_type = "chatMembersFilterContacts",
    int? message_thread_id,
  }) {
    try {
      return ChatMembersFilter({
        "@type": special_type,
        "message_thread_id": message_thread_id,
      });
    } catch (e) {
      return ChatMembersFilter({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMembersFilter.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get message_thread_id {
    try {
      return (rawData[message_thread_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SupergroupMembersFilter {
  late Map rawData;
  SupergroupMembersFilter(this.rawData);

  factory SupergroupMembersFilter.create({
    String special_type = "supergroupMembersFilterRecent",
    String? query,
    int? message_thread_id,
  }) {
    try {
      return SupergroupMembersFilter({
        "@type": special_type,
        "query": query,
        "message_thread_id": message_thread_id,
      });
    } catch (e) {
      return SupergroupMembersFilter({
        "@type": "error",
        "error": "${e}",
        "message": "error method SupergroupMembersFilter.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get query {
    try {
      return (rawData[query] as String);
    } catch (e) {
      return null;
    }
  }

  int? get message_thread_id {
    try {
      return (rawData[message_thread_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLink {
  late Map rawData;
  ChatInviteLink(this.rawData);

  factory ChatInviteLink.create({
    String special_type = "chatInviteLink",
    String? invite_link,
    String? name,
    int? creator_user_id,
    int? date,
    int? edit_date,
    int? expiration_date,
    int? member_limit,
    int? member_count,
    int? pending_join_request_count,
    bool? creates_join_request,
    bool? is_primary,
    bool? is_revoked,
  }) {
    try {
      return ChatInviteLink({
        "@type": special_type,
        "invite_link": invite_link,
        "name": name,
        "creator_user_id": creator_user_id,
        "date": date,
        "edit_date": edit_date,
        "expiration_date": expiration_date,
        "member_limit": member_limit,
        "member_count": member_count,
        "pending_join_request_count": pending_join_request_count,
        "creates_join_request": creates_join_request,
        "is_primary": is_primary,
        "is_revoked": is_revoked,
      });
    } catch (e) {
      return ChatInviteLink({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLink.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get invite_link {
    try {
      return (rawData[invite_link] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  int? get creator_user_id {
    try {
      return (rawData[creator_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get edit_date {
    try {
      return (rawData[edit_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get expiration_date {
    try {
      return (rawData[expiration_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get member_limit {
    try {
      return (rawData[member_limit] as int);
    } catch (e) {
      return null;
    }
  }

  int? get member_count {
    try {
      return (rawData[member_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get pending_join_request_count {
    try {
      return (rawData[pending_join_request_count] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get creates_join_request {
    try {
      return (rawData[creates_join_request] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_primary {
    try {
      return (rawData[is_primary] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_revoked {
    try {
      return (rawData[is_revoked] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinks {
  late Map rawData;
  ChatInviteLinks(this.rawData);

  factory ChatInviteLinks.create({
    String special_type = "chatInviteLinks",
    int? total_count,
    List<ChatInviteLink>? invite_links,
  }) {
    try {
      return ChatInviteLinks({
        "@type": special_type,
        "total_count": total_count,
        "invite_links": (invite_links != null)
            ? invite_links.map((e) {
                return ChatInviteLink((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatInviteLinks({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinks.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatInviteLink> get invite_links {
    try {
      return (rawData[invite_links] as List<ChatInviteLink>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinkCount {
  late Map rawData;
  ChatInviteLinkCount(this.rawData);

  factory ChatInviteLinkCount.create({
    String special_type = "chatInviteLinkCount",
    int? user_id,
    int? invite_link_count,
    int? revoked_invite_link_count,
  }) {
    try {
      return ChatInviteLinkCount({
        "@type": special_type,
        "user_id": user_id,
        "invite_link_count": invite_link_count,
        "revoked_invite_link_count": revoked_invite_link_count,
      });
    } catch (e) {
      return ChatInviteLinkCount({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinkCount.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get invite_link_count {
    try {
      return (rawData[invite_link_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get revoked_invite_link_count {
    try {
      return (rawData[revoked_invite_link_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinkCounts {
  late Map rawData;
  ChatInviteLinkCounts(this.rawData);

  factory ChatInviteLinkCounts.create({
    String special_type = "chatInviteLinkCounts",
    List<ChatInviteLinkCount>? invite_link_counts,
  }) {
    try {
      return ChatInviteLinkCounts({
        "@type": special_type,
        "invite_link_counts": (invite_link_counts != null)
            ? invite_link_counts.map((e) {
                return ChatInviteLinkCount((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatInviteLinkCounts({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinkCounts.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatInviteLinkCount> get invite_link_counts {
    try {
      return (rawData[invite_link_counts] as List<ChatInviteLinkCount>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinkMember {
  late Map rawData;
  ChatInviteLinkMember(this.rawData);

  factory ChatInviteLinkMember.create({
    String special_type = "chatInviteLinkMember",
    int? user_id,
    int? joined_chat_date,
    int? approver_user_id,
  }) {
    try {
      return ChatInviteLinkMember({
        "@type": special_type,
        "user_id": user_id,
        "joined_chat_date": joined_chat_date,
        "approver_user_id": approver_user_id,
      });
    } catch (e) {
      return ChatInviteLinkMember({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinkMember.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get joined_chat_date {
    try {
      return (rawData[joined_chat_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get approver_user_id {
    try {
      return (rawData[approver_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinkMembers {
  late Map rawData;
  ChatInviteLinkMembers(this.rawData);

  factory ChatInviteLinkMembers.create({
    String special_type = "chatInviteLinkMembers",
    int? total_count,
    List<ChatInviteLinkMember>? members,
  }) {
    try {
      return ChatInviteLinkMembers({
        "@type": special_type,
        "total_count": total_count,
        "members": (members != null)
            ? members.map((e) {
                return ChatInviteLinkMember((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatInviteLinkMembers({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinkMembers.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatInviteLinkMember> get members {
    try {
      return (rawData[members] as List<ChatInviteLinkMember>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatInviteLinkInfo {
  late Map rawData;
  ChatInviteLinkInfo(this.rawData);

  factory ChatInviteLinkInfo.create({
    String special_type = "chatInviteLinkInfo",
    int? chat_id,
    int? accessible_for,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    String? description,
    int? member_count,
    List<int>? member_user_ids,
    bool? creates_join_request,
    bool? is_public,
  }) {
    try {
      return ChatInviteLinkInfo({
        "@type": special_type,
        "chat_id": chat_id,
        "accessible_for": accessible_for,
        "type": (type != null) ? type.toJson() : null,
        "title": title,
        "photo": (photo != null) ? photo.toJson() : null,
        "description": description,
        "member_count": member_count,
        "member_user_ids": member_user_ids,
        "creates_join_request": creates_join_request,
        "is_public": is_public,
      });
    } catch (e) {
      return ChatInviteLinkInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatInviteLinkInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get accessible_for {
    try {
      return (rawData[accessible_for] as int);
    } catch (e) {
      return null;
    }
  }

  ChatType? get type {
    try {
      return (rawData[type] as ChatType);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhotoInfo? get photo {
    try {
      return (rawData[photo] as ChatPhotoInfo);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  int? get member_count {
    try {
      return (rawData[member_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get member_user_ids {
    try {
      return (rawData[member_user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  bool? get creates_join_request {
    try {
      return (rawData[creates_join_request] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_public {
    try {
      return (rawData[is_public] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatJoinRequest {
  late Map rawData;
  ChatJoinRequest(this.rawData);

  factory ChatJoinRequest.create({
    String special_type = "chatJoinRequest",
    int? user_id,
    int? date,
    String? bio,
  }) {
    try {
      return ChatJoinRequest({
        "@type": special_type,
        "user_id": user_id,
        "date": date,
        "bio": bio,
      });
    } catch (e) {
      return ChatJoinRequest({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatJoinRequest.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get bio {
    try {
      return (rawData[bio] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatJoinRequests {
  late Map rawData;
  ChatJoinRequests(this.rawData);

  factory ChatJoinRequests.create({
    String special_type = "chatJoinRequests",
    int? total_count,
    List<ChatJoinRequest>? requests,
  }) {
    try {
      return ChatJoinRequests({
        "@type": special_type,
        "total_count": total_count,
        "requests": (requests != null)
            ? requests.map((e) {
                return ChatJoinRequest((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatJoinRequests({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatJoinRequests.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatJoinRequest> get requests {
    try {
      return (rawData[requests] as List<ChatJoinRequest>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatJoinRequestsInfo {
  late Map rawData;
  ChatJoinRequestsInfo(this.rawData);

  factory ChatJoinRequestsInfo.create({
    String special_type = "chatJoinRequestsInfo",
    int? total_count,
    List<int>? user_ids,
  }) {
    try {
      return ChatJoinRequestsInfo({
        "@type": special_type,
        "total_count": total_count,
        "user_ids": user_ids,
      });
    } catch (e) {
      return ChatJoinRequestsInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatJoinRequestsInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get user_ids {
    try {
      return (rawData[user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BasicGroup {
  late Map rawData;
  BasicGroup(this.rawData);

  factory BasicGroup.create({
    String special_type = "basicGroup",
    int? id,
    int? member_count,
    ChatMemberStatus? status,
    bool? is_active,
    int? upgraded_to_supergroup_id,
  }) {
    try {
      return BasicGroup({
        "@type": special_type,
        "id": id,
        "member_count": member_count,
        "status": (status != null) ? status.toJson() : null,
        "is_active": is_active,
        "upgraded_to_supergroup_id": upgraded_to_supergroup_id,
      });
    } catch (e) {
      return BasicGroup({
        "@type": "error",
        "error": "${e}",
        "message": "error method BasicGroup.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get member_count {
    try {
      return (rawData[member_count] as int);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get status {
    try {
      return (rawData[status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  bool? get is_active {
    try {
      return (rawData[is_active] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get upgraded_to_supergroup_id {
    try {
      return (rawData[upgraded_to_supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BasicGroupFullInfo {
  late Map rawData;
  BasicGroupFullInfo(this.rawData);

  factory BasicGroupFullInfo.create({
    String special_type = "basicGroupFullInfo",
    ChatPhoto? photo,
    String? description,
    int? creator_user_id,
    List<ChatMember>? members,
    ChatInviteLink? invite_link,
    List<BotCommands>? bot_commands,
  }) {
    try {
      return BasicGroupFullInfo({
        "@type": special_type,
        "photo": (photo != null) ? photo.toJson() : null,
        "description": description,
        "creator_user_id": creator_user_id,
        "members": (members != null)
            ? members.map((e) {
                return ChatMember((e as Map)).toJson();
              }).toList()
            : null,
        "invite_link": (invite_link != null) ? invite_link.toJson() : null,
        "bot_commands": (bot_commands != null)
            ? bot_commands.map((e) {
                return BotCommands((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return BasicGroupFullInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method BasicGroupFullInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get photo {
    try {
      return (rawData[photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  int? get creator_user_id {
    try {
      return (rawData[creator_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  List<ChatMember> get members {
    try {
      return (rawData[members] as List<ChatMember>);
    } catch (e) {
      return [];
    }
  }

  ChatInviteLink? get invite_link {
    try {
      return (rawData[invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  List<BotCommands> get bot_commands {
    try {
      return (rawData[bot_commands] as List<BotCommands>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Supergroup {
  late Map rawData;
  Supergroup(this.rawData);

  factory Supergroup.create({
    String special_type = "supergroup",
    int? id,
    String? username,
    int? date,
    ChatMemberStatus? status,
    int? member_count,
    bool? has_linked_chat,
    bool? has_location,
    bool? sign_messages,
    bool? join_to_send_messages,
    bool? join_by_request,
    bool? is_slow_mode_enabled,
    bool? is_channel,
    bool? is_broadcast_group,
    bool? is_verified,
    String? restriction_reason,
    bool? is_scam,
    bool? is_fake,
  }) {
    try {
      return Supergroup({
        "@type": special_type,
        "id": id,
        "username": username,
        "date": date,
        "status": (status != null) ? status.toJson() : null,
        "member_count": member_count,
        "has_linked_chat": has_linked_chat,
        "has_location": has_location,
        "sign_messages": sign_messages,
        "join_to_send_messages": join_to_send_messages,
        "join_by_request": join_by_request,
        "is_slow_mode_enabled": is_slow_mode_enabled,
        "is_channel": is_channel,
        "is_broadcast_group": is_broadcast_group,
        "is_verified": is_verified,
        "restriction_reason": restriction_reason,
        "is_scam": is_scam,
        "is_fake": is_fake,
      });
    } catch (e) {
      return Supergroup({
        "@type": "error",
        "error": "${e}",
        "message": "error method Supergroup.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      return (rawData[username] as String);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get status {
    try {
      return (rawData[status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  int? get member_count {
    try {
      return (rawData[member_count] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get has_linked_chat {
    try {
      return (rawData[has_linked_chat] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_location {
    try {
      return (rawData[has_location] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get sign_messages {
    try {
      return (rawData[sign_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get join_to_send_messages {
    try {
      return (rawData[join_to_send_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get join_by_request {
    try {
      return (rawData[join_by_request] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_slow_mode_enabled {
    try {
      return (rawData[is_slow_mode_enabled] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_channel {
    try {
      return (rawData[is_channel] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_broadcast_group {
    try {
      return (rawData[is_broadcast_group] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_verified {
    try {
      return (rawData[is_verified] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get restriction_reason {
    try {
      return (rawData[restriction_reason] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_scam {
    try {
      return (rawData[is_scam] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_fake {
    try {
      return (rawData[is_fake] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SupergroupFullInfo {
  late Map rawData;
  SupergroupFullInfo(this.rawData);

  factory SupergroupFullInfo.create({
    String special_type = "supergroupFullInfo",
    ChatPhoto? photo,
    String? description,
    int? member_count,
    int? administrator_count,
    int? restricted_count,
    int? banned_count,
    int? linked_chat_id,
    int? slow_mode_delay,
    double? slow_mode_delay_expires_in,
    bool? can_get_members,
    bool? can_set_username,
    bool? can_set_sticker_set,
    bool? can_set_location,
    bool? can_get_statistics,
    bool? is_all_history_available,
    int? sticker_set_id,
    ChatLocation? location,
    ChatInviteLink? invite_link,
    List<BotCommands>? bot_commands,
    int? upgraded_from_basic_group_id,
    int? upgraded_from_max_message_id,
  }) {
    try {
      return SupergroupFullInfo({
        "@type": special_type,
        "photo": (photo != null) ? photo.toJson() : null,
        "description": description,
        "member_count": member_count,
        "administrator_count": administrator_count,
        "restricted_count": restricted_count,
        "banned_count": banned_count,
        "linked_chat_id": linked_chat_id,
        "slow_mode_delay": slow_mode_delay,
        "slow_mode_delay_expires_in": slow_mode_delay_expires_in,
        "can_get_members": can_get_members,
        "can_set_username": can_set_username,
        "can_set_sticker_set": can_set_sticker_set,
        "can_set_location": can_set_location,
        "can_get_statistics": can_get_statistics,
        "is_all_history_available": is_all_history_available,
        "sticker_set_id": sticker_set_id,
        "location": (location != null) ? location.toJson() : null,
        "invite_link": (invite_link != null) ? invite_link.toJson() : null,
        "bot_commands": (bot_commands != null)
            ? bot_commands.map((e) {
                return BotCommands((e as Map)).toJson();
              }).toList()
            : null,
        "upgraded_from_basic_group_id": upgraded_from_basic_group_id,
        "upgraded_from_max_message_id": upgraded_from_max_message_id,
      });
    } catch (e) {
      return SupergroupFullInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method SupergroupFullInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get photo {
    try {
      return (rawData[photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  int? get member_count {
    try {
      return (rawData[member_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get administrator_count {
    try {
      return (rawData[administrator_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get restricted_count {
    try {
      return (rawData[restricted_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get banned_count {
    try {
      return (rawData[banned_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get linked_chat_id {
    try {
      return (rawData[linked_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get slow_mode_delay {
    try {
      return (rawData[slow_mode_delay] as int);
    } catch (e) {
      return null;
    }
  }

  double? get slow_mode_delay_expires_in {
    try {
      return (rawData[slow_mode_delay_expires_in] as double);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_members {
    try {
      return (rawData[can_get_members] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_set_username {
    try {
      return (rawData[can_set_username] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_set_sticker_set {
    try {
      return (rawData[can_set_sticker_set] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_set_location {
    try {
      return (rawData[can_set_location] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_statistics {
    try {
      return (rawData[can_get_statistics] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_all_history_available {
    try {
      return (rawData[is_all_history_available] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_set_id {
    try {
      return (rawData[sticker_set_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatLocation? get location {
    try {
      return (rawData[location] as ChatLocation);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLink? get invite_link {
    try {
      return (rawData[invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  List<BotCommands> get bot_commands {
    try {
      return (rawData[bot_commands] as List<BotCommands>);
    } catch (e) {
      return [];
    }
  }

  int? get upgraded_from_basic_group_id {
    try {
      return (rawData[upgraded_from_basic_group_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get upgraded_from_max_message_id {
    try {
      return (rawData[upgraded_from_max_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SecretChatState {
  late Map rawData;
  SecretChatState(this.rawData);

  factory SecretChatState.create({
    String special_type = "secretChatStatePending",
  }) {
    try {
      return SecretChatState({
        "@type": special_type,
      });
    } catch (e) {
      return SecretChatState({
        "@type": "error",
        "error": "${e}",
        "message": "error method SecretChatState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SecretChat {
  late Map rawData;
  SecretChat(this.rawData);

  factory SecretChat.create({
    String special_type = "secretChat",
    int? id,
    int? user_id,
    SecretChatState? state,
    bool? is_outbound,
    String? key_hash,
    int? layer,
  }) {
    try {
      return SecretChat({
        "@type": special_type,
        "id": id,
        "user_id": user_id,
        "state": (state != null) ? state.toJson() : null,
        "is_outbound": is_outbound,
        "key_hash": key_hash,
        "layer": layer,
      });
    } catch (e) {
      return SecretChat({
        "@type": "error",
        "error": "${e}",
        "message": "error method SecretChat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  SecretChatState? get state {
    try {
      return (rawData[state] as SecretChatState);
    } catch (e) {
      return null;
    }
  }

  bool? get is_outbound {
    try {
      return (rawData[is_outbound] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get key_hash {
    try {
      return (rawData[key_hash] as String);
    } catch (e) {
      return null;
    }
  }

  int? get layer {
    try {
      return (rawData[layer] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageSender {
  late Map rawData;
  MessageSender(this.rawData);

  factory MessageSender.create({
    String special_type = "messageSenderUser",
    int? user_id,
    int? chat_id,
  }) {
    try {
      return MessageSender({
        "@type": special_type,
        "user_id": user_id,
        "chat_id": chat_id,
      });
    } catch (e) {
      return MessageSender({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageSender.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageSenders {
  late Map rawData;
  MessageSenders(this.rawData);

  factory MessageSenders.create({
    String special_type = "messageSenders",
    int? total_count,
    List<MessageSender>? senders,
  }) {
    try {
      return MessageSenders({
        "@type": special_type,
        "total_count": total_count,
        "senders": (senders != null)
            ? senders.map((e) {
                return MessageSender((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return MessageSenders({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageSenders.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<MessageSender> get senders {
    try {
      return (rawData[senders] as List<MessageSender>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMessageSender {
  late Map rawData;
  ChatMessageSender(this.rawData);

  factory ChatMessageSender.create({
    String special_type = "chatMessageSender",
    MessageSender? sender,
    bool? needs_premium,
  }) {
    try {
      return ChatMessageSender({
        "@type": special_type,
        "sender": (sender != null) ? sender.toJson() : null,
        "needs_premium": needs_premium,
      });
    } catch (e) {
      return ChatMessageSender({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMessageSender.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender {
    try {
      return (rawData[sender] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  bool? get needs_premium {
    try {
      return (rawData[needs_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatMessageSenders {
  late Map rawData;
  ChatMessageSenders(this.rawData);

  factory ChatMessageSenders.create({
    String special_type = "chatMessageSenders",
    List<ChatMessageSender>? senders,
  }) {
    try {
      return ChatMessageSenders({
        "@type": special_type,
        "senders": (senders != null)
            ? senders.map((e) {
                return ChatMessageSender((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatMessageSenders({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatMessageSenders.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatMessageSender> get senders {
    try {
      return (rawData[senders] as List<ChatMessageSender>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageForwardOrigin {
  late Map rawData;
  MessageForwardOrigin(this.rawData);

  factory MessageForwardOrigin.create({
    String special_type = "messageForwardOriginUser",
    int? sender_user_id,
    int? sender_chat_id,
    String? author_signature,
    String? sender_name,
    int? chat_id,
    int? message_id,
  }) {
    try {
      return MessageForwardOrigin({
        "@type": special_type,
        "sender_user_id": sender_user_id,
        "sender_chat_id": sender_chat_id,
        "author_signature": author_signature,
        "sender_name": sender_name,
        "chat_id": chat_id,
        "message_id": message_id,
      });
    } catch (e) {
      return MessageForwardOrigin({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageForwardOrigin.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get sender_user_id {
    try {
      return (rawData[sender_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sender_chat_id {
    try {
      return (rawData[sender_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get author_signature {
    try {
      return (rawData[author_signature] as String);
    } catch (e) {
      return null;
    }
  }

  String? get sender_name {
    try {
      return (rawData[sender_name] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ReactionType {
  late Map rawData;
  ReactionType(this.rawData);

  factory ReactionType.create({
    String special_type = "reactionTypeEmoji",
    String? emoji,
    int? custom_emoji_id,
  }) {
    try {
      return ReactionType({
        "@type": special_type,
        "emoji": emoji,
        "custom_emoji_id": custom_emoji_id,
      });
    } catch (e) {
      return ReactionType({
        "@type": "error",
        "error": "${e}",
        "message": "error method ReactionType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  int? get custom_emoji_id {
    try {
      return (rawData[custom_emoji_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageForwardInfo {
  late Map rawData;
  MessageForwardInfo(this.rawData);

  factory MessageForwardInfo.create({
    String special_type = "messageForwardInfo",
    MessageForwardOrigin? origin,
    int? date,
    String? public_service_announcement_type,
    int? from_chat_id,
    int? from_message_id,
  }) {
    try {
      return MessageForwardInfo({
        "@type": special_type,
        "origin": (origin != null) ? origin.toJson() : null,
        "date": date,
        "public_service_announcement_type": public_service_announcement_type,
        "from_chat_id": from_chat_id,
        "from_message_id": from_message_id,
      });
    } catch (e) {
      return MessageForwardInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageForwardInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MessageForwardOrigin? get origin {
    try {
      return (rawData[origin] as MessageForwardOrigin);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get public_service_announcement_type {
    try {
      return (rawData[public_service_announcement_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get from_chat_id {
    try {
      return (rawData[from_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get from_message_id {
    try {
      return (rawData[from_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageReplyInfo {
  late Map rawData;
  MessageReplyInfo(this.rawData);

  factory MessageReplyInfo.create({
    String special_type = "messageReplyInfo",
    int? reply_count,
    List<MessageSender>? recent_replier_ids,
    int? last_read_inbox_message_id,
    int? last_read_outbox_message_id,
    int? last_message_id,
  }) {
    try {
      return MessageReplyInfo({
        "@type": special_type,
        "reply_count": reply_count,
        "recent_replier_ids": (recent_replier_ids != null)
            ? recent_replier_ids.map((e) {
                return MessageSender((e as Map)).toJson();
              }).toList()
            : null,
        "last_read_inbox_message_id": last_read_inbox_message_id,
        "last_read_outbox_message_id": last_read_outbox_message_id,
        "last_message_id": last_message_id,
      });
    } catch (e) {
      return MessageReplyInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageReplyInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get reply_count {
    try {
      return (rawData[reply_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<MessageSender> get recent_replier_ids {
    try {
      return (rawData[recent_replier_ids] as List<MessageSender>);
    } catch (e) {
      return [];
    }
  }

  int? get last_read_inbox_message_id {
    try {
      return (rawData[last_read_inbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_read_outbox_message_id {
    try {
      return (rawData[last_read_outbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_message_id {
    try {
      return (rawData[last_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageReaction {
  late Map rawData;
  MessageReaction(this.rawData);

  factory MessageReaction.create({
    String special_type = "messageReaction",
    ReactionType? type,
    int? total_count,
    bool? is_chosen,
    List<MessageSender>? recent_sender_ids,
  }) {
    try {
      return MessageReaction({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "total_count": total_count,
        "is_chosen": is_chosen,
        "recent_sender_ids": (recent_sender_ids != null)
            ? recent_sender_ids.map((e) {
                return MessageSender((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return MessageReaction({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageReaction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ReactionType? get type {
    try {
      return (rawData[type] as ReactionType);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_chosen {
    try {
      return (rawData[is_chosen] as bool);
    } catch (e) {
      return null;
    }
  }

  List<MessageSender> get recent_sender_ids {
    try {
      return (rawData[recent_sender_ids] as List<MessageSender>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageInteractionInfo {
  late Map rawData;
  MessageInteractionInfo(this.rawData);

  factory MessageInteractionInfo.create({
    String special_type = "messageInteractionInfo",
    int? view_count,
    int? forward_count,
    MessageReplyInfo? reply_info,
    List<MessageReaction>? reactions,
  }) {
    try {
      return MessageInteractionInfo({
        "@type": special_type,
        "view_count": view_count,
        "forward_count": forward_count,
        "reply_info": (reply_info != null) ? reply_info.toJson() : null,
        "reactions": (reactions != null)
            ? reactions.map((e) {
                return MessageReaction((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return MessageInteractionInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageInteractionInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get view_count {
    try {
      return (rawData[view_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get forward_count {
    try {
      return (rawData[forward_count] as int);
    } catch (e) {
      return null;
    }
  }

  MessageReplyInfo? get reply_info {
    try {
      return (rawData[reply_info] as MessageReplyInfo);
    } catch (e) {
      return null;
    }
  }

  List<MessageReaction> get reactions {
    try {
      return (rawData[reactions] as List<MessageReaction>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UnreadReaction {
  late Map rawData;
  UnreadReaction(this.rawData);

  factory UnreadReaction.create({
    String special_type = "unreadReaction",
    ReactionType? type,
    MessageSender? sender_id,
    bool? is_big,
  }) {
    try {
      return UnreadReaction({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "sender_id": (sender_id != null) ? sender_id.toJson() : null,
        "is_big": is_big,
      });
    } catch (e) {
      return UnreadReaction({
        "@type": "error",
        "error": "${e}",
        "message": "error method UnreadReaction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ReactionType? get type {
    try {
      return (rawData[type] as ReactionType);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender_id {
    try {
      return (rawData[sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  bool? get is_big {
    try {
      return (rawData[is_big] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageSendingState {
  late Map rawData;
  MessageSendingState(this.rawData);

  factory MessageSendingState.create({
    String special_type = "messageSendingStatePending",
    int? error_code,
    String? error_message,
    bool? can_retry,
    bool? need_another_sender,
    double? retry_after,
  }) {
    try {
      return MessageSendingState({
        "@type": special_type,
        "error_code": error_code,
        "error_message": error_message,
        "can_retry": can_retry,
        "need_another_sender": need_another_sender,
        "retry_after": retry_after,
      });
    } catch (e) {
      return MessageSendingState({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageSendingState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get error_code {
    try {
      return (rawData[error_code] as int);
    } catch (e) {
      return null;
    }
  }

  String? get error_message {
    try {
      return (rawData[error_message] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_retry {
    try {
      return (rawData[can_retry] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_another_sender {
    try {
      return (rawData[need_another_sender] as bool);
    } catch (e) {
      return null;
    }
  }

  double? get retry_after {
    try {
      return (rawData[retry_after] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Message {
  late Map rawData;
  Message(this.rawData);

  factory Message.create({
    String special_type = "message",
    int? id,
    MessageSender? sender_id,
    int? chat_id,
    MessageSendingState? sending_state,
    MessageSchedulingState? scheduling_state,
    bool? is_outgoing,
    bool? is_pinned,
    bool? can_be_edited,
    bool? can_be_forwarded,
    bool? can_be_saved,
    bool? can_be_deleted_only_for_self,
    bool? can_be_deleted_for_all_users,
    bool? can_get_added_reactions,
    bool? can_get_statistics,
    bool? can_get_message_thread,
    bool? can_get_viewers,
    bool? can_get_media_timestamp_links,
    bool? can_report_reactions,
    bool? has_timestamped_media,
    bool? is_channel_post,
    bool? contains_unread_mention,
    int? date,
    int? edit_date,
    MessageForwardInfo? forward_info,
    MessageInteractionInfo? interaction_info,
    List<UnreadReaction>? unread_reactions,
    int? reply_in_chat_id,
    int? reply_to_message_id,
    int? message_thread_id,
    int? ttl,
    double? ttl_expires_in,
    int? via_bot_user_id,
    String? author_signature,
    int? media_album_id,
    String? restriction_reason,
    MessageContent? content,
    ReplyMarkup? reply_markup,
  }) {
    try {
      return Message({
        "@type": special_type,
        "id": id,
        "sender_id": (sender_id != null) ? sender_id.toJson() : null,
        "chat_id": chat_id,
        "sending_state": (sending_state != null) ? sending_state.toJson() : null,
        "scheduling_state": (scheduling_state != null) ? scheduling_state.toJson() : null,
        "is_outgoing": is_outgoing,
        "is_pinned": is_pinned,
        "can_be_edited": can_be_edited,
        "can_be_forwarded": can_be_forwarded,
        "can_be_saved": can_be_saved,
        "can_be_deleted_only_for_self": can_be_deleted_only_for_self,
        "can_be_deleted_for_all_users": can_be_deleted_for_all_users,
        "can_get_added_reactions": can_get_added_reactions,
        "can_get_statistics": can_get_statistics,
        "can_get_message_thread": can_get_message_thread,
        "can_get_viewers": can_get_viewers,
        "can_get_media_timestamp_links": can_get_media_timestamp_links,
        "can_report_reactions": can_report_reactions,
        "has_timestamped_media": has_timestamped_media,
        "is_channel_post": is_channel_post,
        "contains_unread_mention": contains_unread_mention,
        "date": date,
        "edit_date": edit_date,
        "forward_info": (forward_info != null) ? forward_info.toJson() : null,
        "interaction_info": (interaction_info != null) ? interaction_info.toJson() : null,
        "unread_reactions": (unread_reactions != null)
            ? unread_reactions.map((e) {
                return UnreadReaction((e as Map)).toJson();
              }).toList()
            : null,
        "reply_in_chat_id": reply_in_chat_id,
        "reply_to_message_id": reply_to_message_id,
        "message_thread_id": message_thread_id,
        "ttl": ttl,
        "ttl_expires_in": ttl_expires_in,
        "via_bot_user_id": via_bot_user_id,
        "author_signature": author_signature,
        "media_album_id": media_album_id,
        "restriction_reason": restriction_reason,
        "content": (content != null) ? content.toJson() : null,
        "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
      });
    } catch (e) {
      return Message({
        "@type": "error",
        "error": "${e}",
        "message": "error method Message.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender_id {
    try {
      return (rawData[sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageSendingState? get sending_state {
    try {
      return (rawData[sending_state] as MessageSendingState);
    } catch (e) {
      return null;
    }
  }

  MessageSchedulingState? get scheduling_state {
    try {
      return (rawData[scheduling_state] as MessageSchedulingState);
    } catch (e) {
      return null;
    }
  }

  bool? get is_outgoing {
    try {
      return (rawData[is_outgoing] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_pinned {
    try {
      return (rawData[is_pinned] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_edited {
    try {
      return (rawData[can_be_edited] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_forwarded {
    try {
      return (rawData[can_be_forwarded] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_saved {
    try {
      return (rawData[can_be_saved] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_deleted_only_for_self {
    try {
      return (rawData[can_be_deleted_only_for_self] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_deleted_for_all_users {
    try {
      return (rawData[can_be_deleted_for_all_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_added_reactions {
    try {
      return (rawData[can_get_added_reactions] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_statistics {
    try {
      return (rawData[can_get_statistics] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_message_thread {
    try {
      return (rawData[can_get_message_thread] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_viewers {
    try {
      return (rawData[can_get_viewers] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_get_media_timestamp_links {
    try {
      return (rawData[can_get_media_timestamp_links] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_report_reactions {
    try {
      return (rawData[can_report_reactions] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_timestamped_media {
    try {
      return (rawData[has_timestamped_media] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_channel_post {
    try {
      return (rawData[is_channel_post] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get contains_unread_mention {
    try {
      return (rawData[contains_unread_mention] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get edit_date {
    try {
      return (rawData[edit_date] as int);
    } catch (e) {
      return null;
    }
  }

  MessageForwardInfo? get forward_info {
    try {
      return (rawData[forward_info] as MessageForwardInfo);
    } catch (e) {
      return null;
    }
  }

  MessageInteractionInfo? get interaction_info {
    try {
      return (rawData[interaction_info] as MessageInteractionInfo);
    } catch (e) {
      return null;
    }
  }

  List<UnreadReaction> get unread_reactions {
    try {
      return (rawData[unread_reactions] as List<UnreadReaction>);
    } catch (e) {
      return [];
    }
  }

  int? get reply_in_chat_id {
    try {
      return (rawData[reply_in_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get reply_to_message_id {
    try {
      return (rawData[reply_to_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_thread_id {
    try {
      return (rawData[message_thread_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get ttl {
    try {
      return (rawData[ttl] as int);
    } catch (e) {
      return null;
    }
  }

  double? get ttl_expires_in {
    try {
      return (rawData[ttl_expires_in] as double);
    } catch (e) {
      return null;
    }
  }

  int? get via_bot_user_id {
    try {
      return (rawData[via_bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get author_signature {
    try {
      return (rawData[author_signature] as String);
    } catch (e) {
      return null;
    }
  }

  int? get media_album_id {
    try {
      return (rawData[media_album_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get restriction_reason {
    try {
      return (rawData[restriction_reason] as String);
    } catch (e) {
      return null;
    }
  }

  MessageContent? get content {
    try {
      return (rawData[content] as MessageContent);
    } catch (e) {
      return null;
    }
  }

  ReplyMarkup? get reply_markup {
    try {
      return (rawData[reply_markup] as ReplyMarkup);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Messages {
  late Map rawData;
  Messages(this.rawData);

  factory Messages.create({
    String special_type = "messages",
    int? total_count,
    List<Message>? messages,
  }) {
    try {
      return Messages({
        "@type": special_type,
        "total_count": total_count,
        "messages": (messages != null)
            ? messages.map((e) {
                return Message((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Messages({
        "@type": "error",
        "error": "${e}",
        "message": "error method Messages.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<Message> get messages {
    try {
      return (rawData[messages] as List<Message>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FoundMessages {
  late Map rawData;
  FoundMessages(this.rawData);

  factory FoundMessages.create({
    String special_type = "foundMessages",
    int? total_count,
    List<Message>? messages,
    String? next_offset,
  }) {
    try {
      return FoundMessages({
        "@type": special_type,
        "total_count": total_count,
        "messages": (messages != null)
            ? messages.map((e) {
                return Message((e as Map)).toJson();
              }).toList()
            : null,
        "next_offset": next_offset,
      });
    } catch (e) {
      return FoundMessages({
        "@type": "error",
        "error": "${e}",
        "message": "error method FoundMessages.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<Message> get messages {
    try {
      return (rawData[messages] as List<Message>);
    } catch (e) {
      return [];
    }
  }

  String? get next_offset {
    try {
      return (rawData[next_offset] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessagePosition {
  late Map rawData;
  MessagePosition(this.rawData);

  factory MessagePosition.create({
    String special_type = "messagePosition",
    int? position,
    int? message_id,
    int? date,
  }) {
    try {
      return MessagePosition({
        "@type": special_type,
        "position": position,
        "message_id": message_id,
        "date": date,
      });
    } catch (e) {
      return MessagePosition({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessagePosition.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get position {
    try {
      return (rawData[position] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessagePositions {
  late Map rawData;
  MessagePositions(this.rawData);

  factory MessagePositions.create({
    String special_type = "messagePositions",
    int? total_count,
    List<MessagePosition>? positions,
  }) {
    try {
      return MessagePositions({
        "@type": special_type,
        "total_count": total_count,
        "positions": (positions != null)
            ? positions.map((e) {
                return MessagePosition((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return MessagePositions({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessagePositions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<MessagePosition> get positions {
    try {
      return (rawData[positions] as List<MessagePosition>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageCalendarDay {
  late Map rawData;
  MessageCalendarDay(this.rawData);

  factory MessageCalendarDay.create({
    String special_type = "messageCalendarDay",
    int? total_count,
    Message? message,
  }) {
    try {
      return MessageCalendarDay({
        "@type": special_type,
        "total_count": total_count,
        "message": (message != null) ? message.toJson() : null,
      });
    } catch (e) {
      return MessageCalendarDay({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageCalendarDay.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageCalendar {
  late Map rawData;
  MessageCalendar(this.rawData);

  factory MessageCalendar.create({
    String special_type = "messageCalendar",
    int? total_count,
    List<MessageCalendarDay>? days,
  }) {
    try {
      return MessageCalendar({
        "@type": special_type,
        "total_count": total_count,
        "days": (days != null)
            ? days.map((e) {
                return MessageCalendarDay((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return MessageCalendar({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageCalendar.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<MessageCalendarDay> get days {
    try {
      return (rawData[days] as List<MessageCalendarDay>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SponsoredMessage {
  late Map rawData;
  SponsoredMessage(this.rawData);

  factory SponsoredMessage.create({
    String special_type = "sponsoredMessage",
    int? message_id,
    bool? is_recommended,
    int? sponsor_chat_id,
    ChatInviteLinkInfo? sponsor_chat_info,
    InternalLinkType? link,
    MessageContent? content,
  }) {
    try {
      return SponsoredMessage({
        "@type": special_type,
        "message_id": message_id,
        "is_recommended": is_recommended,
        "sponsor_chat_id": sponsor_chat_id,
        "sponsor_chat_info": (sponsor_chat_info != null) ? sponsor_chat_info.toJson() : null,
        "link": (link != null) ? link.toJson() : null,
        "content": (content != null) ? content.toJson() : null,
      });
    } catch (e) {
      return SponsoredMessage({
        "@type": "error",
        "error": "${e}",
        "message": "error method SponsoredMessage.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_recommended {
    try {
      return (rawData[is_recommended] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get sponsor_chat_id {
    try {
      return (rawData[sponsor_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLinkInfo? get sponsor_chat_info {
    try {
      return (rawData[sponsor_chat_info] as ChatInviteLinkInfo);
    } catch (e) {
      return null;
    }
  }

  InternalLinkType? get link {
    try {
      return (rawData[link] as InternalLinkType);
    } catch (e) {
      return null;
    }
  }

  MessageContent? get content {
    try {
      return (rawData[content] as MessageContent);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FileDownload {
  late Map rawData;
  FileDownload(this.rawData);

  factory FileDownload.create({
    String special_type = "fileDownload",
    int? file_id,
    Message? message,
    int? add_date,
    int? complete_date,
    bool? is_paused,
  }) {
    try {
      return FileDownload({
        "@type": special_type,
        "file_id": file_id,
        "message": (message != null) ? message.toJson() : null,
        "add_date": add_date,
        "complete_date": complete_date,
        "is_paused": is_paused,
      });
    } catch (e) {
      return FileDownload({
        "@type": "error",
        "error": "${e}",
        "message": "error method FileDownload.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get file_id {
    try {
      return (rawData[file_id] as int);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  int? get add_date {
    try {
      return (rawData[add_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get complete_date {
    try {
      return (rawData[complete_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_paused {
    try {
      return (rawData[is_paused] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DownloadedFileCounts {
  late Map rawData;
  DownloadedFileCounts(this.rawData);

  factory DownloadedFileCounts.create({
    String special_type = "downloadedFileCounts",
    int? active_count,
    int? paused_count,
    int? completed_count,
  }) {
    try {
      return DownloadedFileCounts({
        "@type": special_type,
        "active_count": active_count,
        "paused_count": paused_count,
        "completed_count": completed_count,
      });
    } catch (e) {
      return DownloadedFileCounts({
        "@type": "error",
        "error": "${e}",
        "message": "error method DownloadedFileCounts.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get active_count {
    try {
      return (rawData[active_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get paused_count {
    try {
      return (rawData[paused_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get completed_count {
    try {
      return (rawData[completed_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FoundFileDownloads {
  late Map rawData;
  FoundFileDownloads(this.rawData);

  factory FoundFileDownloads.create({
    String special_type = "foundFileDownloads",
    DownloadedFileCounts? total_counts,
    List<FileDownload>? files,
    String? next_offset,
  }) {
    try {
      return FoundFileDownloads({
        "@type": special_type,
        "total_counts": (total_counts != null) ? total_counts.toJson() : null,
        "files": (files != null)
            ? files.map((e) {
                return FileDownload((e as Map)).toJson();
              }).toList()
            : null,
        "next_offset": next_offset,
      });
    } catch (e) {
      return FoundFileDownloads({
        "@type": "error",
        "error": "${e}",
        "message": "error method FoundFileDownloads.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  DownloadedFileCounts? get total_counts {
    try {
      return (rawData[total_counts] as DownloadedFileCounts);
    } catch (e) {
      return null;
    }
  }

  List<FileDownload> get files {
    try {
      return (rawData[files] as List<FileDownload>);
    } catch (e) {
      return [];
    }
  }

  String? get next_offset {
    try {
      return (rawData[next_offset] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationSettingsScope {
  late Map rawData;
  NotificationSettingsScope(this.rawData);

  factory NotificationSettingsScope.create({
    String special_type = "notificationSettingsScopePrivateChats",
  }) {
    try {
      return NotificationSettingsScope({
        "@type": special_type,
      });
    } catch (e) {
      return NotificationSettingsScope({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationSettingsScope.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatNotificationSettings {
  late Map rawData;
  ChatNotificationSettings(this.rawData);

  factory ChatNotificationSettings.create({
    String special_type = "chatNotificationSettings",
    bool? use_default_mute_for,
    int? mute_for,
    bool? use_default_sound,
    int? sound_id,
    bool? use_default_show_preview,
    bool? show_preview,
    bool? use_default_disable_pinned_message_notifications,
    bool? disable_pinned_message_notifications,
    bool? use_default_disable_mention_notifications,
    bool? disable_mention_notifications,
  }) {
    try {
      return ChatNotificationSettings({
        "@type": special_type,
        "use_default_mute_for": use_default_mute_for,
        "mute_for": mute_for,
        "use_default_sound": use_default_sound,
        "sound_id": sound_id,
        "use_default_show_preview": use_default_show_preview,
        "show_preview": show_preview,
        "use_default_disable_pinned_message_notifications": use_default_disable_pinned_message_notifications,
        "disable_pinned_message_notifications": disable_pinned_message_notifications,
        "use_default_disable_mention_notifications": use_default_disable_mention_notifications,
        "disable_mention_notifications": disable_mention_notifications,
      });
    } catch (e) {
      return ChatNotificationSettings({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatNotificationSettings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get use_default_mute_for {
    try {
      return (rawData[use_default_mute_for] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get mute_for {
    try {
      return (rawData[mute_for] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get use_default_sound {
    try {
      return (rawData[use_default_sound] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get sound_id {
    try {
      return (rawData[sound_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get use_default_show_preview {
    try {
      return (rawData[use_default_show_preview] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get show_preview {
    try {
      return (rawData[show_preview] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get use_default_disable_pinned_message_notifications {
    try {
      return (rawData[use_default_disable_pinned_message_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_pinned_message_notifications {
    try {
      return (rawData[disable_pinned_message_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get use_default_disable_mention_notifications {
    try {
      return (rawData[use_default_disable_mention_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_mention_notifications {
    try {
      return (rawData[disable_mention_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ScopeNotificationSettings {
  late Map rawData;
  ScopeNotificationSettings(this.rawData);

  factory ScopeNotificationSettings.create({
    String special_type = "scopeNotificationSettings",
    int? mute_for,
    int? sound_id,
    bool? show_preview,
    bool? disable_pinned_message_notifications,
    bool? disable_mention_notifications,
  }) {
    try {
      return ScopeNotificationSettings({
        "@type": special_type,
        "mute_for": mute_for,
        "sound_id": sound_id,
        "show_preview": show_preview,
        "disable_pinned_message_notifications": disable_pinned_message_notifications,
        "disable_mention_notifications": disable_mention_notifications,
      });
    } catch (e) {
      return ScopeNotificationSettings({
        "@type": "error",
        "error": "${e}",
        "message": "error method ScopeNotificationSettings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get mute_for {
    try {
      return (rawData[mute_for] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sound_id {
    try {
      return (rawData[sound_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get show_preview {
    try {
      return (rawData[show_preview] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_pinned_message_notifications {
    try {
      return (rawData[disable_pinned_message_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_mention_notifications {
    try {
      return (rawData[disable_mention_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DraftMessage {
  late Map rawData;
  DraftMessage(this.rawData);

  factory DraftMessage.create({
    String special_type = "draftMessage",
    int? reply_to_message_id,
    int? date,
    InputMessageContent? input_message_text,
  }) {
    try {
      return DraftMessage({
        "@type": special_type,
        "reply_to_message_id": reply_to_message_id,
        "date": date,
        "input_message_text": (input_message_text != null) ? input_message_text.toJson() : null,
      });
    } catch (e) {
      return DraftMessage({
        "@type": "error",
        "error": "${e}",
        "message": "error method DraftMessage.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get reply_to_message_id {
    try {
      return (rawData[reply_to_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  InputMessageContent? get input_message_text {
    try {
      return (rawData[input_message_text] as InputMessageContent);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatType {
  late Map rawData;
  ChatType(this.rawData);

  factory ChatType.create({
    String special_type = "chatTypePrivate",
    int? user_id,
    int? basic_group_id,
    int? supergroup_id,
    bool? is_channel,
    int? secret_chat_id,
  }) {
    try {
      return ChatType({
        "@type": special_type,
        "user_id": user_id,
        "basic_group_id": basic_group_id,
        "supergroup_id": supergroup_id,
        "is_channel": is_channel,
        "secret_chat_id": secret_chat_id,
      });
    } catch (e) {
      return ChatType({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get basic_group_id {
    try {
      return (rawData[basic_group_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get supergroup_id {
    try {
      return (rawData[supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_channel {
    try {
      return (rawData[is_channel] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get secret_chat_id {
    try {
      return (rawData[secret_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatFilter {
  late Map rawData;
  ChatFilter(this.rawData);

  factory ChatFilter.create({
    String special_type = "chatFilter",
    String? title,
    String? icon_name,
    List<int>? pinned_chat_ids,
    List<int>? included_chat_ids,
    List<int>? excluded_chat_ids,
    bool? exclude_muted,
    bool? exclude_read,
    bool? exclude_archived,
    bool? include_contacts,
    bool? include_non_contacts,
    bool? include_bots,
    bool? include_groups,
    bool? include_channels,
  }) {
    try {
      return ChatFilter({
        "@type": special_type,
        "title": title,
        "icon_name": icon_name,
        "pinned_chat_ids": pinned_chat_ids,
        "included_chat_ids": included_chat_ids,
        "excluded_chat_ids": excluded_chat_ids,
        "exclude_muted": exclude_muted,
        "exclude_read": exclude_read,
        "exclude_archived": exclude_archived,
        "include_contacts": include_contacts,
        "include_non_contacts": include_non_contacts,
        "include_bots": include_bots,
        "include_groups": include_groups,
        "include_channels": include_channels,
      });
    } catch (e) {
      return ChatFilter({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatFilter.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get icon_name {
    try {
      return (rawData[icon_name] as String);
    } catch (e) {
      return null;
    }
  }

  List<int> get pinned_chat_ids {
    try {
      return (rawData[pinned_chat_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get included_chat_ids {
    try {
      return (rawData[included_chat_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get excluded_chat_ids {
    try {
      return (rawData[excluded_chat_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  bool? get exclude_muted {
    try {
      return (rawData[exclude_muted] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get exclude_read {
    try {
      return (rawData[exclude_read] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get exclude_archived {
    try {
      return (rawData[exclude_archived] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get include_contacts {
    try {
      return (rawData[include_contacts] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get include_non_contacts {
    try {
      return (rawData[include_non_contacts] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get include_bots {
    try {
      return (rawData[include_bots] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get include_groups {
    try {
      return (rawData[include_groups] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get include_channels {
    try {
      return (rawData[include_channels] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatFilterInfo {
  late Map rawData;
  ChatFilterInfo(this.rawData);

  factory ChatFilterInfo.create({
    String special_type = "chatFilterInfo",
    int? id,
    String? title,
    String? icon_name,
  }) {
    try {
      return ChatFilterInfo({
        "@type": special_type,
        "id": id,
        "title": title,
        "icon_name": icon_name,
      });
    } catch (e) {
      return ChatFilterInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatFilterInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get icon_name {
    try {
      return (rawData[icon_name] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RecommendedChatFilter {
  late Map rawData;
  RecommendedChatFilter(this.rawData);

  factory RecommendedChatFilter.create({
    String special_type = "recommendedChatFilter",
    ChatFilter? filter,
    String? description,
  }) {
    try {
      return RecommendedChatFilter({
        "@type": special_type,
        "filter": (filter != null) ? filter.toJson() : null,
        "description": description,
      });
    } catch (e) {
      return RecommendedChatFilter({
        "@type": "error",
        "error": "${e}",
        "message": "error method RecommendedChatFilter.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ChatFilter? get filter {
    try {
      return (rawData[filter] as ChatFilter);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RecommendedChatFilters {
  late Map rawData;
  RecommendedChatFilters(this.rawData);

  factory RecommendedChatFilters.create({
    String special_type = "recommendedChatFilters",
    List<RecommendedChatFilter>? chat_filters,
  }) {
    try {
      return RecommendedChatFilters({
        "@type": special_type,
        "chat_filters": (chat_filters != null)
            ? chat_filters.map((e) {
                return RecommendedChatFilter((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return RecommendedChatFilters({
        "@type": "error",
        "error": "${e}",
        "message": "error method RecommendedChatFilters.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<RecommendedChatFilter> get chat_filters {
    try {
      return (rawData[chat_filters] as List<RecommendedChatFilter>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatList {
  late Map rawData;
  ChatList(this.rawData);

  factory ChatList.create({
    String special_type = "chatListMain",
    int? chat_filter_id,
  }) {
    try {
      return ChatList({
        "@type": special_type,
        "chat_filter_id": chat_filter_id,
      });
    } catch (e) {
      return ChatList({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatList.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_filter_id {
    try {
      return (rawData[chat_filter_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatLists {
  late Map rawData;
  ChatLists(this.rawData);

  factory ChatLists.create({
    String special_type = "chatLists",
    List<ChatList>? chat_lists,
  }) {
    try {
      return ChatLists({
        "@type": special_type,
        "chat_lists": (chat_lists != null)
            ? chat_lists.map((e) {
                return ChatList((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatLists({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatLists.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatList> get chat_lists {
    try {
      return (rawData[chat_lists] as List<ChatList>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatSource {
  late Map rawData;
  ChatSource(this.rawData);

  factory ChatSource.create({
    String special_type = "chatSourceMtprotoProxy",
    String? type,
    String? text,
  }) {
    try {
      return ChatSource({
        "@type": special_type,
        "type": type,
        "text": text,
      });
    } catch (e) {
      return ChatSource({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatSource.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      return (rawData[type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatPosition {
  late Map rawData;
  ChatPosition(this.rawData);

  factory ChatPosition.create({
    String special_type = "chatPosition",
    ChatList? list,
    int? order,
    bool? is_pinned,
    ChatSource? source,
  }) {
    try {
      return ChatPosition({
        "@type": special_type,
        "list": (list != null) ? list.toJson() : null,
        "order": order,
        "is_pinned": is_pinned,
        "source": (source != null) ? source.toJson() : null,
      });
    } catch (e) {
      return ChatPosition({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatPosition.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ChatList? get list {
    try {
      return (rawData[list] as ChatList);
    } catch (e) {
      return null;
    }
  }

  int? get order {
    try {
      return (rawData[order] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_pinned {
    try {
      return (rawData[is_pinned] as bool);
    } catch (e) {
      return null;
    }
  }

  ChatSource? get source {
    try {
      return (rawData[source] as ChatSource);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatAvailableReactions {
  late Map rawData;
  ChatAvailableReactions(this.rawData);

  factory ChatAvailableReactions.create({
    String special_type = "chatAvailableReactionsAll",
    List<ReactionType>? reactions,
  }) {
    try {
      return ChatAvailableReactions({
        "@type": special_type,
        "reactions": (reactions != null)
            ? reactions.map((e) {
                return ReactionType((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatAvailableReactions({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatAvailableReactions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ReactionType> get reactions {
    try {
      return (rawData[reactions] as List<ReactionType>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class VideoChat {
  late Map rawData;
  VideoChat(this.rawData);

  factory VideoChat.create({
    String special_type = "videoChat",
    int? group_call_id,
    bool? has_participants,
    MessageSender? default_participant_id,
  }) {
    try {
      return VideoChat({
        "@type": special_type,
        "group_call_id": group_call_id,
        "has_participants": has_participants,
        "default_participant_id": (default_participant_id != null) ? default_participant_id.toJson() : null,
      });
    } catch (e) {
      return VideoChat({
        "@type": "error",
        "error": "${e}",
        "message": "error method VideoChat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get group_call_id {
    try {
      return (rawData[group_call_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get has_participants {
    try {
      return (rawData[has_participants] as bool);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get default_participant_id {
    try {
      return (rawData[default_participant_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Chat {
  late Map rawData;
  Chat(this.rawData);

  factory Chat.create({
    String special_type = "chat",
    int? id,
    ChatType? type,
    String? title,
    ChatPhotoInfo? photo,
    ChatPermissions? permissions,
    Message? last_message,
    List<ChatPosition>? positions,
    MessageSender? message_sender_id,
    bool? has_protected_content,
    bool? is_marked_as_unread,
    bool? is_blocked,
    bool? has_scheduled_messages,
    bool? can_be_deleted_only_for_self,
    bool? can_be_deleted_for_all_users,
    bool? can_be_reported,
    bool? default_disable_notification,
    int? unread_count,
    int? last_read_inbox_message_id,
    int? last_read_outbox_message_id,
    int? unread_mention_count,
    int? unread_reaction_count,
    ChatNotificationSettings? notification_settings,
    ChatAvailableReactions? available_reactions,
    int? message_ttl,
    String? theme_name,
    ChatActionBar? action_bar,
    VideoChat? video_chat,
    ChatJoinRequestsInfo? pending_join_requests,
    int? reply_markup_message_id,
    DraftMessage? draft_message,
    String? client_data,
  }) {
    try {
      return Chat({
        "@type": special_type,
        "id": id,
        "type": (type != null) ? type.toJson() : null,
        "title": title,
        "photo": (photo != null) ? photo.toJson() : null,
        "permissions": (permissions != null) ? permissions.toJson() : null,
        "last_message": (last_message != null) ? last_message.toJson() : null,
        "positions": (positions != null)
            ? positions.map((e) {
                return ChatPosition((e as Map)).toJson();
              }).toList()
            : null,
        "message_sender_id": (message_sender_id != null) ? message_sender_id.toJson() : null,
        "has_protected_content": has_protected_content,
        "is_marked_as_unread": is_marked_as_unread,
        "is_blocked": is_blocked,
        "has_scheduled_messages": has_scheduled_messages,
        "can_be_deleted_only_for_self": can_be_deleted_only_for_self,
        "can_be_deleted_for_all_users": can_be_deleted_for_all_users,
        "can_be_reported": can_be_reported,
        "default_disable_notification": default_disable_notification,
        "unread_count": unread_count,
        "last_read_inbox_message_id": last_read_inbox_message_id,
        "last_read_outbox_message_id": last_read_outbox_message_id,
        "unread_mention_count": unread_mention_count,
        "unread_reaction_count": unread_reaction_count,
        "notification_settings": (notification_settings != null) ? notification_settings.toJson() : null,
        "available_reactions": (available_reactions != null) ? available_reactions.toJson() : null,
        "message_ttl": message_ttl,
        "theme_name": theme_name,
        "action_bar": (action_bar != null) ? action_bar.toJson() : null,
        "video_chat": (video_chat != null) ? video_chat.toJson() : null,
        "pending_join_requests": (pending_join_requests != null) ? pending_join_requests.toJson() : null,
        "reply_markup_message_id": reply_markup_message_id,
        "draft_message": (draft_message != null) ? draft_message.toJson() : null,
        "client_data": client_data,
      });
    } catch (e) {
      return Chat({
        "@type": "error",
        "error": "${e}",
        "message": "error method Chat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatType? get type {
    try {
      return (rawData[type] as ChatType);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhotoInfo? get photo {
    try {
      return (rawData[photo] as ChatPhotoInfo);
    } catch (e) {
      return null;
    }
  }

  ChatPermissions? get permissions {
    try {
      return (rawData[permissions] as ChatPermissions);
    } catch (e) {
      return null;
    }
  }

  Message? get last_message {
    try {
      return (rawData[last_message] as Message);
    } catch (e) {
      return null;
    }
  }

  List<ChatPosition> get positions {
    try {
      return (rawData[positions] as List<ChatPosition>);
    } catch (e) {
      return [];
    }
  }

  MessageSender? get message_sender_id {
    try {
      return (rawData[message_sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  bool? get has_protected_content {
    try {
      return (rawData[has_protected_content] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_marked_as_unread {
    try {
      return (rawData[is_marked_as_unread] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_blocked {
    try {
      return (rawData[is_blocked] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_scheduled_messages {
    try {
      return (rawData[has_scheduled_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_deleted_only_for_self {
    try {
      return (rawData[can_be_deleted_only_for_self] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_deleted_for_all_users {
    try {
      return (rawData[can_be_deleted_for_all_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_reported {
    try {
      return (rawData[can_be_reported] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get default_disable_notification {
    try {
      return (rawData[default_disable_notification] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get unread_count {
    try {
      return (rawData[unread_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_read_inbox_message_id {
    try {
      return (rawData[last_read_inbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_read_outbox_message_id {
    try {
      return (rawData[last_read_outbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get unread_mention_count {
    try {
      return (rawData[unread_mention_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get unread_reaction_count {
    try {
      return (rawData[unread_reaction_count] as int);
    } catch (e) {
      return null;
    }
  }

  ChatNotificationSettings? get notification_settings {
    try {
      return (rawData[notification_settings] as ChatNotificationSettings);
    } catch (e) {
      return null;
    }
  }

  ChatAvailableReactions? get available_reactions {
    try {
      return (rawData[available_reactions] as ChatAvailableReactions);
    } catch (e) {
      return null;
    }
  }

  int? get message_ttl {
    try {
      return (rawData[message_ttl] as int);
    } catch (e) {
      return null;
    }
  }

  String? get theme_name {
    try {
      return (rawData[theme_name] as String);
    } catch (e) {
      return null;
    }
  }

  ChatActionBar? get action_bar {
    try {
      return (rawData[action_bar] as ChatActionBar);
    } catch (e) {
      return null;
    }
  }

  VideoChat? get video_chat {
    try {
      return (rawData[video_chat] as VideoChat);
    } catch (e) {
      return null;
    }
  }

  ChatJoinRequestsInfo? get pending_join_requests {
    try {
      return (rawData[pending_join_requests] as ChatJoinRequestsInfo);
    } catch (e) {
      return null;
    }
  }

  int? get reply_markup_message_id {
    try {
      return (rawData[reply_markup_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  DraftMessage? get draft_message {
    try {
      return (rawData[draft_message] as DraftMessage);
    } catch (e) {
      return null;
    }
  }

  String? get client_data {
    try {
      return (rawData[client_data] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Chats {
  late Map rawData;
  Chats(this.rawData);

  factory Chats.create({
    String special_type = "chats",
    int? total_count,
    List<int>? chat_ids,
  }) {
    try {
      return Chats({
        "@type": special_type,
        "total_count": total_count,
        "chat_ids": chat_ids,
      });
    } catch (e) {
      return Chats({
        "@type": "error",
        "error": "${e}",
        "message": "error method Chats.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get chat_ids {
    try {
      return (rawData[chat_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatNearby {
  late Map rawData;
  ChatNearby(this.rawData);

  factory ChatNearby.create({
    String special_type = "chatNearby",
    int? chat_id,
    int? distance,
  }) {
    try {
      return ChatNearby({
        "@type": special_type,
        "chat_id": chat_id,
        "distance": distance,
      });
    } catch (e) {
      return ChatNearby({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatNearby.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get distance {
    try {
      return (rawData[distance] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatsNearby {
  late Map rawData;
  ChatsNearby(this.rawData);

  factory ChatsNearby.create({
    String special_type = "chatsNearby",
    List<ChatNearby>? users_nearby,
    List<ChatNearby>? supergroups_nearby,
  }) {
    try {
      return ChatsNearby({
        "@type": special_type,
        "users_nearby": (users_nearby != null)
            ? users_nearby.map((e) {
                return ChatNearby((e as Map)).toJson();
              }).toList()
            : null,
        "supergroups_nearby": (supergroups_nearby != null)
            ? supergroups_nearby.map((e) {
                return ChatNearby((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatsNearby({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatsNearby.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatNearby> get users_nearby {
    try {
      return (rawData[users_nearby] as List<ChatNearby>);
    } catch (e) {
      return [];
    }
  }

  List<ChatNearby> get supergroups_nearby {
    try {
      return (rawData[supergroups_nearby] as List<ChatNearby>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PublicChatType {
  late Map rawData;
  PublicChatType(this.rawData);

  factory PublicChatType.create({
    String special_type = "publicChatTypeHasUsername",
  }) {
    try {
      return PublicChatType({
        "@type": special_type,
      });
    } catch (e) {
      return PublicChatType({
        "@type": "error",
        "error": "${e}",
        "message": "error method PublicChatType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatActionBar {
  late Map rawData;
  ChatActionBar(this.rawData);

  factory ChatActionBar.create({
    String special_type = "chatActionBarReportSpam",
    bool? can_unarchive,
    int? distance,
    String? title,
    bool? is_channel,
    int? request_date,
  }) {
    try {
      return ChatActionBar({
        "@type": special_type,
        "can_unarchive": can_unarchive,
        "distance": distance,
        "title": title,
        "is_channel": is_channel,
        "request_date": request_date,
      });
    } catch (e) {
      return ChatActionBar({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatActionBar.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get can_unarchive {
    try {
      return (rawData[can_unarchive] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get distance {
    try {
      return (rawData[distance] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_channel {
    try {
      return (rawData[is_channel] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get request_date {
    try {
      return (rawData[request_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class KeyboardButtonType {
  late Map rawData;
  KeyboardButtonType(this.rawData);

  factory KeyboardButtonType.create({
    String special_type = "keyboardButtonTypeText",
    bool? force_regular,
    bool? force_quiz,
    String? url,
  }) {
    try {
      return KeyboardButtonType({
        "@type": special_type,
        "force_regular": force_regular,
        "force_quiz": force_quiz,
        "url": url,
      });
    } catch (e) {
      return KeyboardButtonType({
        "@type": "error",
        "error": "${e}",
        "message": "error method KeyboardButtonType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get force_regular {
    try {
      return (rawData[force_regular] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get force_quiz {
    try {
      return (rawData[force_quiz] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class KeyboardButton {
  late Map rawData;
  KeyboardButton(this.rawData);

  factory KeyboardButton.create({
    String special_type = "keyboardButton",
    String? text,
    KeyboardButtonType? type,
  }) {
    try {
      return KeyboardButton({
        "@type": special_type,
        "text": text,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return KeyboardButton({
        "@type": "error",
        "error": "${e}",
        "message": "error method KeyboardButton.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  KeyboardButtonType? get type {
    try {
      return (rawData[type] as KeyboardButtonType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InlineKeyboardButtonType {
  late Map rawData;
  InlineKeyboardButtonType(this.rawData);

  factory InlineKeyboardButtonType.create({
    String special_type = "inlineKeyboardButtonTypeUrl",
    String? url,
    int? id,
    String? forward_text,
    String? data,
    String? query,
    bool? in_current_chat,
    int? user_id,
  }) {
    try {
      return InlineKeyboardButtonType({
        "@type": special_type,
        "url": url,
        "id": id,
        "forward_text": forward_text,
        "data": data,
        "query": query,
        "in_current_chat": in_current_chat,
        "user_id": user_id,
      });
    } catch (e) {
      return InlineKeyboardButtonType({
        "@type": "error",
        "error": "${e}",
        "message": "error method InlineKeyboardButtonType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get forward_text {
    try {
      return (rawData[forward_text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  String? get query {
    try {
      return (rawData[query] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get in_current_chat {
    try {
      return (rawData[in_current_chat] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InlineKeyboardButton {
  late Map rawData;
  InlineKeyboardButton(this.rawData);

  factory InlineKeyboardButton.create({
    String special_type = "inlineKeyboardButton",
    String? text,
    InlineKeyboardButtonType? type,
  }) {
    try {
      return InlineKeyboardButton({
        "@type": special_type,
        "text": text,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return InlineKeyboardButton({
        "@type": "error",
        "error": "${e}",
        "message": "error method InlineKeyboardButton.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  InlineKeyboardButtonType? get type {
    try {
      return (rawData[type] as InlineKeyboardButtonType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ReplyMarkup {
  late Map rawData;
  ReplyMarkup(this.rawData);

  factory ReplyMarkup.create({
    String special_type = "replyMarkupRemoveKeyboard",
    bool? is_personal,
    String? input_field_placeholder,
    List<List<InlineKeyboardButton>>? rows,
    bool? resize_keyboard,
    bool? one_time,
  }) {
    try {
      return ReplyMarkup({
        "@type": special_type,
        "is_personal": is_personal,
        "input_field_placeholder": input_field_placeholder,
        "rows": (rows != null)
            ? rows.map((e) {
                return (e as List).map((res) {
                  return InlineKeyboardButton((res as Map)).toJson();
                }).toList();
              }).toList()
            : null,
        "resize_keyboard": resize_keyboard,
        "one_time": one_time,
      });
    } catch (e) {
      return ReplyMarkup({
        "@type": "error",
        "error": "${e}",
        "message": "error method ReplyMarkup.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_personal {
    try {
      return (rawData[is_personal] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get input_field_placeholder {
    try {
      return (rawData[input_field_placeholder] as String);
    } catch (e) {
      return null;
    }
  }

  List<List<InlineKeyboardButton>> get rows {
    try {
      return (rawData[rows] as List<List<InlineKeyboardButton>>);
    } catch (e) {
      return [];
    }
  }

  bool? get resize_keyboard {
    try {
      return (rawData[resize_keyboard] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get one_time {
    try {
      return (rawData[one_time] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LoginUrlInfo {
  late Map rawData;
  LoginUrlInfo(this.rawData);

  factory LoginUrlInfo.create({
    String special_type = "loginUrlInfoOpen",
    String? url,
    bool? skip_confirm,
    String? domain,
    int? bot_user_id,
    bool? request_write_access,
  }) {
    try {
      return LoginUrlInfo({
        "@type": special_type,
        "url": url,
        "skip_confirm": skip_confirm,
        "domain": domain,
        "bot_user_id": bot_user_id,
        "request_write_access": request_write_access,
      });
    } catch (e) {
      return LoginUrlInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method LoginUrlInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get skip_confirm {
    try {
      return (rawData[skip_confirm] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get domain {
    try {
      return (rawData[domain] as String);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get request_write_access {
    try {
      return (rawData[request_write_access] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class WebAppInfo {
  late Map rawData;
  WebAppInfo(this.rawData);

  factory WebAppInfo.create({
    String special_type = "webAppInfo",
    int? launch_id,
    String? url,
  }) {
    try {
      return WebAppInfo({
        "@type": special_type,
        "launch_id": launch_id,
        "url": url,
      });
    } catch (e) {
      return WebAppInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method WebAppInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get launch_id {
    try {
      return (rawData[launch_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageThreadInfo {
  late Map rawData;
  MessageThreadInfo(this.rawData);

  factory MessageThreadInfo.create({
    String special_type = "messageThreadInfo",
    int? chat_id,
    int? message_thread_id,
    MessageReplyInfo? reply_info,
    int? unread_message_count,
    List<Message>? messages,
    DraftMessage? draft_message,
  }) {
    try {
      return MessageThreadInfo({
        "@type": special_type,
        "chat_id": chat_id,
        "message_thread_id": message_thread_id,
        "reply_info": (reply_info != null) ? reply_info.toJson() : null,
        "unread_message_count": unread_message_count,
        "messages": (messages != null)
            ? messages.map((e) {
                return Message((e as Map)).toJson();
              }).toList()
            : null,
        "draft_message": (draft_message != null) ? draft_message.toJson() : null,
      });
    } catch (e) {
      return MessageThreadInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageThreadInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_thread_id {
    try {
      return (rawData[message_thread_id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageReplyInfo? get reply_info {
    try {
      return (rawData[reply_info] as MessageReplyInfo);
    } catch (e) {
      return null;
    }
  }

  int? get unread_message_count {
    try {
      return (rawData[unread_message_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<Message> get messages {
    try {
      return (rawData[messages] as List<Message>);
    } catch (e) {
      return [];
    }
  }

  DraftMessage? get draft_message {
    try {
      return (rawData[draft_message] as DraftMessage);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RichText {
  late Map rawData;
  RichText(this.rawData);

  factory RichText.create({
    String special_type = "richTextPlain",
    RichText? text,
    String? url,
    bool? is_cached,
    String? email_address,
    String? phone_number,
    Document? document,
    int? width,
    int? height,
    String? anchor_name,
    String? name,
    List<RichText>? texts,
  }) {
    try {
      return RichText({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "url": url,
        "is_cached": is_cached,
        "email_address": email_address,
        "phone_number": phone_number,
        "document": (document != null) ? document.toJson() : null,
        "width": width,
        "height": height,
        "anchor_name": anchor_name,
        "name": name,
        "texts": (texts != null)
            ? texts.map((e) {
                return RichText((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return RichText({
        "@type": "error",
        "error": "${e}",
        "message": "error method RichText.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  RichText? get text {
    try {
      return (rawData[text] as RichText);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_cached {
    try {
      return (rawData[is_cached] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get email_address {
    try {
      return (rawData[email_address] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get anchor_name {
    try {
      return (rawData[anchor_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  List<RichText> get texts {
    try {
      return (rawData[texts] as List<RichText>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockCaption {
  late Map rawData;
  PageBlockCaption(this.rawData);

  factory PageBlockCaption.create({
    String special_type = "pageBlockCaption",
    RichText? text,
    RichText? credit,
  }) {
    try {
      return PageBlockCaption({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "credit": (credit != null) ? credit.toJson() : null,
      });
    } catch (e) {
      return PageBlockCaption({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockCaption.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  RichText? get text {
    try {
      return (rawData[text] as RichText);
    } catch (e) {
      return null;
    }
  }

  RichText? get credit {
    try {
      return (rawData[credit] as RichText);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockListItem {
  late Map rawData;
  PageBlockListItem(this.rawData);

  factory PageBlockListItem.create({
    String special_type = "pageBlockListItem",
    String? label,
    List<PageBlock>? page_blocks,
  }) {
    try {
      return PageBlockListItem({
        "@type": special_type,
        "label": label,
        "page_blocks": (page_blocks != null)
            ? page_blocks.map((e) {
                return PageBlock((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PageBlockListItem({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockListItem.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get label {
    try {
      return (rawData[label] as String);
    } catch (e) {
      return null;
    }
  }

  List<PageBlock> get page_blocks {
    try {
      return (rawData[page_blocks] as List<PageBlock>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockHorizontalAlignment {
  late Map rawData;
  PageBlockHorizontalAlignment(this.rawData);

  factory PageBlockHorizontalAlignment.create({
    String special_type = "pageBlockHorizontalAlignmentLeft",
  }) {
    try {
      return PageBlockHorizontalAlignment({
        "@type": special_type,
      });
    } catch (e) {
      return PageBlockHorizontalAlignment({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockHorizontalAlignment.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockVerticalAlignment {
  late Map rawData;
  PageBlockVerticalAlignment(this.rawData);

  factory PageBlockVerticalAlignment.create({
    String special_type = "pageBlockVerticalAlignmentTop",
  }) {
    try {
      return PageBlockVerticalAlignment({
        "@type": special_type,
      });
    } catch (e) {
      return PageBlockVerticalAlignment({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockVerticalAlignment.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockTableCell {
  late Map rawData;
  PageBlockTableCell(this.rawData);

  factory PageBlockTableCell.create({
    String special_type = "pageBlockTableCell",
    RichText? text,
    bool? is_header,
    int? colspan,
    int? rowspan,
    PageBlockHorizontalAlignment? align,
    PageBlockVerticalAlignment? valign,
  }) {
    try {
      return PageBlockTableCell({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "is_header": is_header,
        "colspan": colspan,
        "rowspan": rowspan,
        "align": (align != null) ? align.toJson() : null,
        "valign": (valign != null) ? valign.toJson() : null,
      });
    } catch (e) {
      return PageBlockTableCell({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockTableCell.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  RichText? get text {
    try {
      return (rawData[text] as RichText);
    } catch (e) {
      return null;
    }
  }

  bool? get is_header {
    try {
      return (rawData[is_header] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get colspan {
    try {
      return (rawData[colspan] as int);
    } catch (e) {
      return null;
    }
  }

  int? get rowspan {
    try {
      return (rawData[rowspan] as int);
    } catch (e) {
      return null;
    }
  }

  PageBlockHorizontalAlignment? get align {
    try {
      return (rawData[align] as PageBlockHorizontalAlignment);
    } catch (e) {
      return null;
    }
  }

  PageBlockVerticalAlignment? get valign {
    try {
      return (rawData[valign] as PageBlockVerticalAlignment);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlockRelatedArticle {
  late Map rawData;
  PageBlockRelatedArticle(this.rawData);

  factory PageBlockRelatedArticle.create({
    String special_type = "pageBlockRelatedArticle",
    String? url,
    String? title,
    String? description,
    Photo? photo,
    String? author,
    int? publish_date,
  }) {
    try {
      return PageBlockRelatedArticle({
        "@type": special_type,
        "url": url,
        "title": title,
        "description": description,
        "photo": (photo != null) ? photo.toJson() : null,
        "author": author,
        "publish_date": publish_date,
      });
    } catch (e) {
      return PageBlockRelatedArticle({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlockRelatedArticle.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  String? get author {
    try {
      return (rawData[author] as String);
    } catch (e) {
      return null;
    }
  }

  int? get publish_date {
    try {
      return (rawData[publish_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PageBlock {
  late Map rawData;
  PageBlock(this.rawData);

  factory PageBlock.create({
    String special_type = "pageBlockTitle",
    String? title,
    RichText? subtitle,
    String? author,
    int? publish_date,
    RichText? header,
    RichText? subheader,
    RichText? kicker,
    RichText? text,
    String? language,
    RichText? footer,
    String? name,
    List<PageBlockListItem>? items,
    RichText? credit,
    Animation? animation,
    PageBlockCaption? caption,
    bool? need_autoplay,
    Audio? audio,
    ChatPhotoInfo? photo,
    String? url,
    Video? video,
    bool? is_looped,
    VoiceNote? voice_note,
    PageBlock? cover,
    String? html,
    Photo? poster_photo,
    int? width,
    int? height,
    bool? is_full_width,
    bool? allow_scrolling,
    Photo? author_photo,
    int? date,
    List<PageBlock>? page_blocks,
    String? username,
    List<List<PageBlockTableCell>>? cells,
    bool? is_bordered,
    bool? is_striped,
    bool? is_open,
    List<PageBlockRelatedArticle>? articles,
    Location? location,
    int? zoom,
  }) {
    try {
      return PageBlock({
        "@type": special_type,
        "title": title,
        "subtitle": (subtitle != null) ? subtitle.toJson() : null,
        "author": author,
        "publish_date": publish_date,
        "header": (header != null) ? header.toJson() : null,
        "subheader": (subheader != null) ? subheader.toJson() : null,
        "kicker": (kicker != null) ? kicker.toJson() : null,
        "text": (text != null) ? text.toJson() : null,
        "language": language,
        "footer": (footer != null) ? footer.toJson() : null,
        "name": name,
        "items": (items != null)
            ? items.map((e) {
                return PageBlockListItem((e as Map)).toJson();
              }).toList()
            : null,
        "credit": (credit != null) ? credit.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "caption": (caption != null) ? caption.toJson() : null,
        "need_autoplay": need_autoplay,
        "audio": (audio != null) ? audio.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "url": url,
        "video": (video != null) ? video.toJson() : null,
        "is_looped": is_looped,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
        "cover": (cover != null) ? cover.toJson() : null,
        "html": html,
        "poster_photo": (poster_photo != null) ? poster_photo.toJson() : null,
        "width": width,
        "height": height,
        "is_full_width": is_full_width,
        "allow_scrolling": allow_scrolling,
        "author_photo": (author_photo != null) ? author_photo.toJson() : null,
        "date": date,
        "page_blocks": (page_blocks != null)
            ? page_blocks.map((e) {
                return PageBlock((e as Map)).toJson();
              }).toList()
            : null,
        "username": username,
        "cells": (cells != null)
            ? cells.map((e) {
                return (e as List).map((res) {
                  return PageBlockTableCell((res as Map)).toJson();
                }).toList();
              }).toList()
            : null,
        "is_bordered": is_bordered,
        "is_striped": is_striped,
        "is_open": is_open,
        "articles": (articles != null)
            ? articles.map((e) {
                return PageBlockRelatedArticle((e as Map)).toJson();
              }).toList()
            : null,
        "location": (location != null) ? location.toJson() : null,
        "zoom": zoom,
      });
    } catch (e) {
      return PageBlock({
        "@type": "error",
        "error": "${e}",
        "message": "error method PageBlock.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  RichText? get subtitle {
    try {
      return (rawData[subtitle] as RichText);
    } catch (e) {
      return null;
    }
  }

  String? get author {
    try {
      return (rawData[author] as String);
    } catch (e) {
      return null;
    }
  }

  int? get publish_date {
    try {
      return (rawData[publish_date] as int);
    } catch (e) {
      return null;
    }
  }

  RichText? get header {
    try {
      return (rawData[header] as RichText);
    } catch (e) {
      return null;
    }
  }

  RichText? get subheader {
    try {
      return (rawData[subheader] as RichText);
    } catch (e) {
      return null;
    }
  }

  RichText? get kicker {
    try {
      return (rawData[kicker] as RichText);
    } catch (e) {
      return null;
    }
  }

  RichText? get text {
    try {
      return (rawData[text] as RichText);
    } catch (e) {
      return null;
    }
  }

  String? get language {
    try {
      return (rawData[language] as String);
    } catch (e) {
      return null;
    }
  }

  RichText? get footer {
    try {
      return (rawData[footer] as RichText);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  List<PageBlockListItem> get items {
    try {
      return (rawData[items] as List<PageBlockListItem>);
    } catch (e) {
      return [];
    }
  }

  RichText? get credit {
    try {
      return (rawData[credit] as RichText);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  PageBlockCaption? get caption {
    try {
      return (rawData[caption] as PageBlockCaption);
    } catch (e) {
      return null;
    }
  }

  bool? get need_autoplay {
    try {
      return (rawData[need_autoplay] as bool);
    } catch (e) {
      return null;
    }
  }

  Audio? get audio {
    try {
      return (rawData[audio] as Audio);
    } catch (e) {
      return null;
    }
  }

  ChatPhotoInfo? get photo {
    try {
      return (rawData[photo] as ChatPhotoInfo);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  bool? get is_looped {
    try {
      return (rawData[is_looped] as bool);
    } catch (e) {
      return null;
    }
  }

  VoiceNote? get voice_note {
    try {
      return (rawData[voice_note] as VoiceNote);
    } catch (e) {
      return null;
    }
  }

  PageBlock? get cover {
    try {
      return (rawData[cover] as PageBlock);
    } catch (e) {
      return null;
    }
  }

  String? get html {
    try {
      return (rawData[html] as String);
    } catch (e) {
      return null;
    }
  }

  Photo? get poster_photo {
    try {
      return (rawData[poster_photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_full_width {
    try {
      return (rawData[is_full_width] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_scrolling {
    try {
      return (rawData[allow_scrolling] as bool);
    } catch (e) {
      return null;
    }
  }

  Photo? get author_photo {
    try {
      return (rawData[author_photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  List<PageBlock> get page_blocks {
    try {
      return (rawData[page_blocks] as List<PageBlock>);
    } catch (e) {
      return [];
    }
  }

  String? get username {
    try {
      return (rawData[username] as String);
    } catch (e) {
      return null;
    }
  }

  List<List<PageBlockTableCell>> get cells {
    try {
      return (rawData[cells] as List<List<PageBlockTableCell>>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_bordered {
    try {
      return (rawData[is_bordered] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_striped {
    try {
      return (rawData[is_striped] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_open {
    try {
      return (rawData[is_open] as bool);
    } catch (e) {
      return null;
    }
  }

  List<PageBlockRelatedArticle> get articles {
    try {
      return (rawData[articles] as List<PageBlockRelatedArticle>);
    } catch (e) {
      return [];
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  int? get zoom {
    try {
      return (rawData[zoom] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class WebPageInstantView {
  late Map rawData;
  WebPageInstantView(this.rawData);

  factory WebPageInstantView.create({
    String special_type = "webPageInstantView",
    List<PageBlock>? page_blocks,
    int? view_count,
    int? version,
    bool? is_rtl,
    bool? is_full,
    InternalLinkType? feedback_link,
  }) {
    try {
      return WebPageInstantView({
        "@type": special_type,
        "page_blocks": (page_blocks != null)
            ? page_blocks.map((e) {
                return PageBlock((e as Map)).toJson();
              }).toList()
            : null,
        "view_count": view_count,
        "version": version,
        "is_rtl": is_rtl,
        "is_full": is_full,
        "feedback_link": (feedback_link != null) ? feedback_link.toJson() : null,
      });
    } catch (e) {
      return WebPageInstantView({
        "@type": "error",
        "error": "${e}",
        "message": "error method WebPageInstantView.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<PageBlock> get page_blocks {
    try {
      return (rawData[page_blocks] as List<PageBlock>);
    } catch (e) {
      return [];
    }
  }

  int? get view_count {
    try {
      return (rawData[view_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get version {
    try {
      return (rawData[version] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_rtl {
    try {
      return (rawData[is_rtl] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_full {
    try {
      return (rawData[is_full] as bool);
    } catch (e) {
      return null;
    }
  }

  InternalLinkType? get feedback_link {
    try {
      return (rawData[feedback_link] as InternalLinkType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class WebPage {
  late Map rawData;
  WebPage(this.rawData);

  factory WebPage.create({
    String special_type = "webPage",
    String? url,
    String? display_url,
    String? type,
    String? site_name,
    String? title,
    FormattedText? description,
    Photo? photo,
    String? embed_url,
    String? embed_type,
    int? embed_width,
    int? embed_height,
    int? duration,
    String? author,
    Animation? animation,
    Audio? audio,
    Document? document,
    Sticker? sticker,
    Video? video,
    VideoNote? video_note,
    VoiceNote? voice_note,
    int? instant_view_version,
  }) {
    try {
      return WebPage({
        "@type": special_type,
        "url": url,
        "display_url": display_url,
        "type": type,
        "site_name": site_name,
        "title": title,
        "description": (description != null) ? description.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "embed_url": embed_url,
        "embed_type": embed_type,
        "embed_width": embed_width,
        "embed_height": embed_height,
        "duration": duration,
        "author": author,
        "animation": (animation != null) ? animation.toJson() : null,
        "audio": (audio != null) ? audio.toJson() : null,
        "document": (document != null) ? document.toJson() : null,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "video": (video != null) ? video.toJson() : null,
        "video_note": (video_note != null) ? video_note.toJson() : null,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
        "instant_view_version": instant_view_version,
      });
    } catch (e) {
      return WebPage({
        "@type": "error",
        "error": "${e}",
        "message": "error method WebPage.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get display_url {
    try {
      return (rawData[display_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      return (rawData[type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get site_name {
    try {
      return (rawData[site_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get description {
    try {
      return (rawData[description] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  String? get embed_url {
    try {
      return (rawData[embed_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get embed_type {
    try {
      return (rawData[embed_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get embed_width {
    try {
      return (rawData[embed_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get embed_height {
    try {
      return (rawData[embed_height] as int);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  String? get author {
    try {
      return (rawData[author] as String);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  Audio? get audio {
    try {
      return (rawData[audio] as Audio);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  VideoNote? get video_note {
    try {
      return (rawData[video_note] as VideoNote);
    } catch (e) {
      return null;
    }
  }

  VoiceNote? get voice_note {
    try {
      return (rawData[voice_note] as VoiceNote);
    } catch (e) {
      return null;
    }
  }

  int? get instant_view_version {
    try {
      return (rawData[instant_view_version] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CountryInfo {
  late Map rawData;
  CountryInfo(this.rawData);

  factory CountryInfo.create({
    String special_type = "countryInfo",
    String? country_code,
    String? name,
    String? english_name,
    bool? is_hidden,
    List<String>? calling_codes,
  }) {
    try {
      return CountryInfo({
        "@type": special_type,
        "country_code": country_code,
        "name": name,
        "english_name": english_name,
        "is_hidden": is_hidden,
        "calling_codes": calling_codes,
      });
    } catch (e) {
      return CountryInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method CountryInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get country_code {
    try {
      return (rawData[country_code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get english_name {
    try {
      return (rawData[english_name] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_hidden {
    try {
      return (rawData[is_hidden] as bool);
    } catch (e) {
      return null;
    }
  }

  List<String> get calling_codes {
    try {
      return (rawData[calling_codes] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Countries {
  late Map rawData;
  Countries(this.rawData);

  factory Countries.create({
    String special_type = "countries",
    List<CountryInfo>? countries,
  }) {
    try {
      return Countries({
        "@type": special_type,
        "countries": (countries != null)
            ? countries.map((e) {
                return CountryInfo((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Countries({
        "@type": "error",
        "error": "${e}",
        "message": "error method Countries.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<CountryInfo> get countries {
    try {
      return (rawData[countries] as List<CountryInfo>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PhoneNumberInfo {
  late Map rawData;
  PhoneNumberInfo(this.rawData);

  factory PhoneNumberInfo.create({
    String special_type = "phoneNumberInfo",
    CountryInfo? country,
    String? country_calling_code,
    String? formatted_phone_number,
  }) {
    try {
      return PhoneNumberInfo({
        "@type": special_type,
        "country": (country != null) ? country.toJson() : null,
        "country_calling_code": country_calling_code,
        "formatted_phone_number": formatted_phone_number,
      });
    } catch (e) {
      return PhoneNumberInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method PhoneNumberInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  CountryInfo? get country {
    try {
      return (rawData[country] as CountryInfo);
    } catch (e) {
      return null;
    }
  }

  String? get country_calling_code {
    try {
      return (rawData[country_calling_code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get formatted_phone_number {
    try {
      return (rawData[formatted_phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BankCardActionOpenUrl {
  late Map rawData;
  BankCardActionOpenUrl(this.rawData);

  factory BankCardActionOpenUrl.create({
    String special_type = "bankCardActionOpenUrl",
    String? text,
    String? url,
  }) {
    try {
      return BankCardActionOpenUrl({
        "@type": special_type,
        "text": text,
        "url": url,
      });
    } catch (e) {
      return BankCardActionOpenUrl({
        "@type": "error",
        "error": "${e}",
        "message": "error method BankCardActionOpenUrl.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BankCardInfo {
  late Map rawData;
  BankCardInfo(this.rawData);

  factory BankCardInfo.create({
    String special_type = "bankCardInfo",
    String? title,
    List<BankCardActionOpenUrl>? actions,
  }) {
    try {
      return BankCardInfo({
        "@type": special_type,
        "title": title,
        "actions": (actions != null)
            ? actions.map((e) {
                return BankCardActionOpenUrl((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return BankCardInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method BankCardInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  List<BankCardActionOpenUrl> get actions {
    try {
      return (rawData[actions] as List<BankCardActionOpenUrl>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Address {
  late Map rawData;
  Address(this.rawData);

  factory Address.create({
    String special_type = "address",
    String? country_code,
    String? state,
    String? city,
    String? street_line1,
    String? street_line2,
    String? postal_code,
  }) {
    try {
      return Address({
        "@type": special_type,
        "country_code": country_code,
        "state": state,
        "city": city,
        "street_line1": street_line1,
        "street_line2": street_line2,
        "postal_code": postal_code,
      });
    } catch (e) {
      return Address({
        "@type": "error",
        "error": "${e}",
        "message": "error method Address.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get country_code {
    try {
      return (rawData[country_code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get state {
    try {
      return (rawData[state] as String);
    } catch (e) {
      return null;
    }
  }

  String? get city {
    try {
      return (rawData[city] as String);
    } catch (e) {
      return null;
    }
  }

  String? get street_line1 {
    try {
      return (rawData[street_line1] as String);
    } catch (e) {
      return null;
    }
  }

  String? get street_line2 {
    try {
      return (rawData[street_line2] as String);
    } catch (e) {
      return null;
    }
  }

  String? get postal_code {
    try {
      return (rawData[postal_code] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ThemeParameters {
  late Map rawData;
  ThemeParameters(this.rawData);

  factory ThemeParameters.create({
    String special_type = "themeParameters",
    int? background_color,
    int? secondary_background_color,
    int? text_color,
    int? hint_color,
    int? link_color,
    int? button_color,
    int? button_text_color,
  }) {
    try {
      return ThemeParameters({
        "@type": special_type,
        "background_color": background_color,
        "secondary_background_color": secondary_background_color,
        "text_color": text_color,
        "hint_color": hint_color,
        "link_color": link_color,
        "button_color": button_color,
        "button_text_color": button_text_color,
      });
    } catch (e) {
      return ThemeParameters({
        "@type": "error",
        "error": "${e}",
        "message": "error method ThemeParameters.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get background_color {
    try {
      return (rawData[background_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get secondary_background_color {
    try {
      return (rawData[secondary_background_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get text_color {
    try {
      return (rawData[text_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get hint_color {
    try {
      return (rawData[hint_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get link_color {
    try {
      return (rawData[link_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get button_color {
    try {
      return (rawData[button_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get button_text_color {
    try {
      return (rawData[button_text_color] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LabeledPricePart {
  late Map rawData;
  LabeledPricePart(this.rawData);

  factory LabeledPricePart.create({
    String special_type = "labeledPricePart",
    String? label,
    int? amount,
  }) {
    try {
      return LabeledPricePart({
        "@type": special_type,
        "label": label,
        "amount": amount,
      });
    } catch (e) {
      return LabeledPricePart({
        "@type": "error",
        "error": "${e}",
        "message": "error method LabeledPricePart.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get label {
    try {
      return (rawData[label] as String);
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      return (rawData[amount] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Invoice {
  late Map rawData;
  Invoice(this.rawData);

  factory Invoice.create({
    String special_type = "invoice",
    String? currency,
    List<LabeledPricePart>? price_parts,
    int? max_tip_amount,
    List<int>? suggested_tip_amounts,
    String? recurring_payment_terms_of_service_url,
    bool? is_test,
    bool? need_name,
    bool? need_phone_number,
    bool? need_email_address,
    bool? need_shipping_address,
    bool? send_phone_number_to_provider,
    bool? send_email_address_to_provider,
    bool? is_flexible,
  }) {
    try {
      return Invoice({
        "@type": special_type,
        "currency": currency,
        "price_parts": (price_parts != null)
            ? price_parts.map((e) {
                return LabeledPricePart((e as Map)).toJson();
              }).toList()
            : null,
        "max_tip_amount": max_tip_amount,
        "suggested_tip_amounts": suggested_tip_amounts,
        "recurring_payment_terms_of_service_url": recurring_payment_terms_of_service_url,
        "is_test": is_test,
        "need_name": need_name,
        "need_phone_number": need_phone_number,
        "need_email_address": need_email_address,
        "need_shipping_address": need_shipping_address,
        "send_phone_number_to_provider": send_phone_number_to_provider,
        "send_email_address_to_provider": send_email_address_to_provider,
        "is_flexible": is_flexible,
      });
    } catch (e) {
      return Invoice({
        "@type": "error",
        "error": "${e}",
        "message": "error method Invoice.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      return (rawData[currency] as String);
    } catch (e) {
      return null;
    }
  }

  List<LabeledPricePart> get price_parts {
    try {
      return (rawData[price_parts] as List<LabeledPricePart>);
    } catch (e) {
      return [];
    }
  }

  int? get max_tip_amount {
    try {
      return (rawData[max_tip_amount] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get suggested_tip_amounts {
    try {
      return (rawData[suggested_tip_amounts] as List<int>);
    } catch (e) {
      return [];
    }
  }

  String? get recurring_payment_terms_of_service_url {
    try {
      return (rawData[recurring_payment_terms_of_service_url] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_test {
    try {
      return (rawData[is_test] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_name {
    try {
      return (rawData[need_name] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_phone_number {
    try {
      return (rawData[need_phone_number] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_email_address {
    try {
      return (rawData[need_email_address] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_shipping_address {
    try {
      return (rawData[need_shipping_address] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get send_phone_number_to_provider {
    try {
      return (rawData[send_phone_number_to_provider] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get send_email_address_to_provider {
    try {
      return (rawData[send_email_address_to_provider] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_flexible {
    try {
      return (rawData[is_flexible] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class OrderInfo {
  late Map rawData;
  OrderInfo(this.rawData);

  factory OrderInfo.create({
    String special_type = "orderInfo",
    String? name,
    String? phone_number,
    String? email_address,
    Address? shipping_address,
  }) {
    try {
      return OrderInfo({
        "@type": special_type,
        "name": name,
        "phone_number": phone_number,
        "email_address": email_address,
        "shipping_address": (shipping_address != null) ? shipping_address.toJson() : null,
      });
    } catch (e) {
      return OrderInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method OrderInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  String? get email_address {
    try {
      return (rawData[email_address] as String);
    } catch (e) {
      return null;
    }
  }

  Address? get shipping_address {
    try {
      return (rawData[shipping_address] as Address);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ShippingOption {
  late Map rawData;
  ShippingOption(this.rawData);

  factory ShippingOption.create({
    String special_type = "shippingOption",
    String? id,
    String? title,
    List<LabeledPricePart>? price_parts,
  }) {
    try {
      return ShippingOption({
        "@type": special_type,
        "id": id,
        "title": title,
        "price_parts": (price_parts != null)
            ? price_parts.map((e) {
                return LabeledPricePart((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ShippingOption({
        "@type": "error",
        "error": "${e}",
        "message": "error method ShippingOption.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  List<LabeledPricePart> get price_parts {
    try {
      return (rawData[price_parts] as List<LabeledPricePart>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SavedCredentials {
  late Map rawData;
  SavedCredentials(this.rawData);

  factory SavedCredentials.create({
    String special_type = "savedCredentials",
    String? id,
    String? title,
  }) {
    try {
      return SavedCredentials({
        "@type": special_type,
        "id": id,
        "title": title,
      });
    } catch (e) {
      return SavedCredentials({
        "@type": "error",
        "error": "${e}",
        "message": "error method SavedCredentials.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputCredentials {
  late Map rawData;
  InputCredentials(this.rawData);

  factory InputCredentials.create({
    String special_type = "inputCredentialsSaved",
    String? saved_credentials_id,
    String? data,
    bool? allow_save,
  }) {
    try {
      return InputCredentials({
        "@type": special_type,
        "saved_credentials_id": saved_credentials_id,
        "data": data,
        "allow_save": allow_save,
      });
    } catch (e) {
      return InputCredentials({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputCredentials.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get saved_credentials_id {
    try {
      return (rawData[saved_credentials_id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_save {
    try {
      return (rawData[allow_save] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PaymentProvider {
  late Map rawData;
  PaymentProvider(this.rawData);

  factory PaymentProvider.create({
    String special_type = "paymentProviderSmartGlocal",
    String? public_token,
    String? publishable_key,
    bool? need_country,
    bool? need_postal_code,
    bool? need_cardholder_name,
    String? url,
  }) {
    try {
      return PaymentProvider({
        "@type": special_type,
        "public_token": public_token,
        "publishable_key": publishable_key,
        "need_country": need_country,
        "need_postal_code": need_postal_code,
        "need_cardholder_name": need_cardholder_name,
        "url": url,
      });
    } catch (e) {
      return PaymentProvider({
        "@type": "error",
        "error": "${e}",
        "message": "error method PaymentProvider.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get public_token {
    try {
      return (rawData[public_token] as String);
    } catch (e) {
      return null;
    }
  }

  String? get publishable_key {
    try {
      return (rawData[publishable_key] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get need_country {
    try {
      return (rawData[need_country] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_postal_code {
    try {
      return (rawData[need_postal_code] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_cardholder_name {
    try {
      return (rawData[need_cardholder_name] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PaymentOption {
  late Map rawData;
  PaymentOption(this.rawData);

  factory PaymentOption.create({
    String special_type = "paymentOption",
    String? title,
    String? url,
  }) {
    try {
      return PaymentOption({
        "@type": special_type,
        "title": title,
        "url": url,
      });
    } catch (e) {
      return PaymentOption({
        "@type": "error",
        "error": "${e}",
        "message": "error method PaymentOption.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PaymentForm {
  late Map rawData;
  PaymentForm(this.rawData);

  factory PaymentForm.create({
    String special_type = "paymentForm",
    int? id,
    Invoice? invoice,
    int? seller_bot_user_id,
    int? payment_provider_user_id,
    PaymentProvider? payment_provider,
    List<PaymentOption>? additional_payment_options,
    OrderInfo? saved_order_info,
    List<SavedCredentials>? saved_credentials,
    bool? can_save_credentials,
    bool? need_password,
    String? product_title,
    FormattedText? product_description,
    Photo? product_photo,
  }) {
    try {
      return PaymentForm({
        "@type": special_type,
        "id": id,
        "invoice": (invoice != null) ? invoice.toJson() : null,
        "seller_bot_user_id": seller_bot_user_id,
        "payment_provider_user_id": payment_provider_user_id,
        "payment_provider": (payment_provider != null) ? payment_provider.toJson() : null,
        "additional_payment_options": (additional_payment_options != null)
            ? additional_payment_options.map((e) {
                return PaymentOption((e as Map)).toJson();
              }).toList()
            : null,
        "saved_order_info": (saved_order_info != null) ? saved_order_info.toJson() : null,
        "saved_credentials": (saved_credentials != null)
            ? saved_credentials.map((e) {
                return SavedCredentials((e as Map)).toJson();
              }).toList()
            : null,
        "can_save_credentials": can_save_credentials,
        "need_password": need_password,
        "product_title": product_title,
        "product_description": (product_description != null) ? product_description.toJson() : null,
        "product_photo": (product_photo != null) ? product_photo.toJson() : null,
      });
    } catch (e) {
      return PaymentForm({
        "@type": "error",
        "error": "${e}",
        "message": "error method PaymentForm.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  Invoice? get invoice {
    try {
      return (rawData[invoice] as Invoice);
    } catch (e) {
      return null;
    }
  }

  int? get seller_bot_user_id {
    try {
      return (rawData[seller_bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get payment_provider_user_id {
    try {
      return (rawData[payment_provider_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  PaymentProvider? get payment_provider {
    try {
      return (rawData[payment_provider] as PaymentProvider);
    } catch (e) {
      return null;
    }
  }

  List<PaymentOption> get additional_payment_options {
    try {
      return (rawData[additional_payment_options] as List<PaymentOption>);
    } catch (e) {
      return [];
    }
  }

  OrderInfo? get saved_order_info {
    try {
      return (rawData[saved_order_info] as OrderInfo);
    } catch (e) {
      return null;
    }
  }

  List<SavedCredentials> get saved_credentials {
    try {
      return (rawData[saved_credentials] as List<SavedCredentials>);
    } catch (e) {
      return [];
    }
  }

  bool? get can_save_credentials {
    try {
      return (rawData[can_save_credentials] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_password {
    try {
      return (rawData[need_password] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get product_title {
    try {
      return (rawData[product_title] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get product_description {
    try {
      return (rawData[product_description] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Photo? get product_photo {
    try {
      return (rawData[product_photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ValidatedOrderInfo {
  late Map rawData;
  ValidatedOrderInfo(this.rawData);

  factory ValidatedOrderInfo.create({
    String special_type = "validatedOrderInfo",
    String? order_info_id,
    List<ShippingOption>? shipping_options,
  }) {
    try {
      return ValidatedOrderInfo({
        "@type": special_type,
        "order_info_id": order_info_id,
        "shipping_options": (shipping_options != null)
            ? shipping_options.map((e) {
                return ShippingOption((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ValidatedOrderInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ValidatedOrderInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get order_info_id {
    try {
      return (rawData[order_info_id] as String);
    } catch (e) {
      return null;
    }
  }

  List<ShippingOption> get shipping_options {
    try {
      return (rawData[shipping_options] as List<ShippingOption>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PaymentResult {
  late Map rawData;
  PaymentResult(this.rawData);

  factory PaymentResult.create({
    String special_type = "paymentResult",
    bool? success,
    String? verification_url,
  }) {
    try {
      return PaymentResult({
        "@type": special_type,
        "success": success,
        "verification_url": verification_url,
      });
    } catch (e) {
      return PaymentResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method PaymentResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get success {
    try {
      return (rawData[success] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get verification_url {
    try {
      return (rawData[verification_url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PaymentReceipt {
  late Map rawData;
  PaymentReceipt(this.rawData);

  factory PaymentReceipt.create({
    String special_type = "paymentReceipt",
    String? title,
    FormattedText? description,
    Photo? photo,
    int? date,
    int? seller_bot_user_id,
    int? payment_provider_user_id,
    Invoice? invoice,
    OrderInfo? order_info,
    ShippingOption? shipping_option,
    String? credentials_title,
    int? tip_amount,
  }) {
    try {
      return PaymentReceipt({
        "@type": special_type,
        "title": title,
        "description": (description != null) ? description.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "date": date,
        "seller_bot_user_id": seller_bot_user_id,
        "payment_provider_user_id": payment_provider_user_id,
        "invoice": (invoice != null) ? invoice.toJson() : null,
        "order_info": (order_info != null) ? order_info.toJson() : null,
        "shipping_option": (shipping_option != null) ? shipping_option.toJson() : null,
        "credentials_title": credentials_title,
        "tip_amount": tip_amount,
      });
    } catch (e) {
      return PaymentReceipt({
        "@type": "error",
        "error": "${e}",
        "message": "error method PaymentReceipt.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get description {
    try {
      return (rawData[description] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get seller_bot_user_id {
    try {
      return (rawData[seller_bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get payment_provider_user_id {
    try {
      return (rawData[payment_provider_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Invoice? get invoice {
    try {
      return (rawData[invoice] as Invoice);
    } catch (e) {
      return null;
    }
  }

  OrderInfo? get order_info {
    try {
      return (rawData[order_info] as OrderInfo);
    } catch (e) {
      return null;
    }
  }

  ShippingOption? get shipping_option {
    try {
      return (rawData[shipping_option] as ShippingOption);
    } catch (e) {
      return null;
    }
  }

  String? get credentials_title {
    try {
      return (rawData[credentials_title] as String);
    } catch (e) {
      return null;
    }
  }

  int? get tip_amount {
    try {
      return (rawData[tip_amount] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputInvoice {
  late Map rawData;
  InputInvoice(this.rawData);

  factory InputInvoice.create({
    String special_type = "inputInvoiceMessage",
    int? chat_id,
    int? message_id,
    String? name,
  }) {
    try {
      return InputInvoice({
        "@type": special_type,
        "chat_id": chat_id,
        "message_id": message_id,
        "name": name,
      });
    } catch (e) {
      return InputInvoice({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputInvoice.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageExtendedMedia {
  late Map rawData;
  MessageExtendedMedia(this.rawData);

  factory MessageExtendedMedia.create({
    String special_type = "messageExtendedMediaPreview",
    int? width,
    int? height,
    int? duration,
    Minithumbnail? minithumbnail,
    FormattedText? caption,
    Photo? photo,
    Video? video,
  }) {
    try {
      return MessageExtendedMedia({
        "@type": special_type,
        "width": width,
        "height": height,
        "duration": duration,
        "minithumbnail": (minithumbnail != null) ? minithumbnail.toJson() : null,
        "caption": (caption != null) ? caption.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "video": (video != null) ? video.toJson() : null,
      });
    } catch (e) {
      return MessageExtendedMedia({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageExtendedMedia.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  Minithumbnail? get minithumbnail {
    try {
      return (rawData[minithumbnail] as Minithumbnail);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get caption {
    try {
      return (rawData[caption] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DatedFile {
  late Map rawData;
  DatedFile(this.rawData);

  factory DatedFile.create({
    String special_type = "datedFile",
    File? file,
    int? date,
  }) {
    try {
      return DatedFile({
        "@type": special_type,
        "file": (file != null) ? file.toJson() : null,
        "date": date,
      });
    } catch (e) {
      return DatedFile({
        "@type": "error",
        "error": "${e}",
        "message": "error method DatedFile.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  File? get file {
    try {
      return (rawData[file] as File);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElementType {
  late Map rawData;
  PassportElementType(this.rawData);

  factory PassportElementType.create({
    String special_type = "passportElementTypePersonalDetails",
  }) {
    try {
      return PassportElementType({
        "@type": special_type,
      });
    } catch (e) {
      return PassportElementType({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElementType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Date {
  late Map rawData;
  Date(this.rawData);

  factory Date.create({
    String special_type = "date",
    int? day,
    int? month,
    int? year,
  }) {
    try {
      return Date({
        "@type": special_type,
        "day": day,
        "month": month,
        "year": year,
      });
    } catch (e) {
      return Date({
        "@type": "error",
        "error": "${e}",
        "message": "error method Date.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get day {
    try {
      return (rawData[day] as int);
    } catch (e) {
      return null;
    }
  }

  int? get month {
    try {
      return (rawData[month] as int);
    } catch (e) {
      return null;
    }
  }

  int? get year {
    try {
      return (rawData[year] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PersonalDetails {
  late Map rawData;
  PersonalDetails(this.rawData);

  factory PersonalDetails.create({
    String special_type = "personalDetails",
    String? first_name,
    String? middle_name,
    String? last_name,
    String? native_first_name,
    String? native_middle_name,
    String? native_last_name,
    Date? birthdate,
    String? gender,
    String? country_code,
    String? residence_country_code,
  }) {
    try {
      return PersonalDetails({
        "@type": special_type,
        "first_name": first_name,
        "middle_name": middle_name,
        "last_name": last_name,
        "native_first_name": native_first_name,
        "native_middle_name": native_middle_name,
        "native_last_name": native_last_name,
        "birthdate": (birthdate != null) ? birthdate.toJson() : null,
        "gender": gender,
        "country_code": country_code,
        "residence_country_code": residence_country_code,
      });
    } catch (e) {
      return PersonalDetails({
        "@type": "error",
        "error": "${e}",
        "message": "error method PersonalDetails.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get first_name {
    try {
      return (rawData[first_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get middle_name {
    try {
      return (rawData[middle_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get last_name {
    try {
      return (rawData[last_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get native_first_name {
    try {
      return (rawData[native_first_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get native_middle_name {
    try {
      return (rawData[native_middle_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get native_last_name {
    try {
      return (rawData[native_last_name] as String);
    } catch (e) {
      return null;
    }
  }

  Date? get birthdate {
    try {
      return (rawData[birthdate] as Date);
    } catch (e) {
      return null;
    }
  }

  String? get gender {
    try {
      return (rawData[gender] as String);
    } catch (e) {
      return null;
    }
  }

  String? get country_code {
    try {
      return (rawData[country_code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get residence_country_code {
    try {
      return (rawData[residence_country_code] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class IdentityDocument {
  late Map rawData;
  IdentityDocument(this.rawData);

  factory IdentityDocument.create({
    String special_type = "identityDocument",
    String? number,
    Date? expiry_date,
    DatedFile? front_side,
    DatedFile? reverse_side,
    DatedFile? selfie,
    List<DatedFile>? translation,
  }) {
    try {
      return IdentityDocument({
        "@type": special_type,
        "number": number,
        "expiry_date": (expiry_date != null) ? expiry_date.toJson() : null,
        "front_side": (front_side != null) ? front_side.toJson() : null,
        "reverse_side": (reverse_side != null) ? reverse_side.toJson() : null,
        "selfie": (selfie != null) ? selfie.toJson() : null,
        "translation": (translation != null)
            ? translation.map((e) {
                return DatedFile((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return IdentityDocument({
        "@type": "error",
        "error": "${e}",
        "message": "error method IdentityDocument.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get number {
    try {
      return (rawData[number] as String);
    } catch (e) {
      return null;
    }
  }

  Date? get expiry_date {
    try {
      return (rawData[expiry_date] as Date);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get front_side {
    try {
      return (rawData[front_side] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get reverse_side {
    try {
      return (rawData[reverse_side] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get selfie {
    try {
      return (rawData[selfie] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  List<DatedFile> get translation {
    try {
      return (rawData[translation] as List<DatedFile>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputIdentityDocument {
  late Map rawData;
  InputIdentityDocument(this.rawData);

  factory InputIdentityDocument.create({
    String special_type = "inputIdentityDocument",
    String? number,
    Date? expiry_date,
    InputFile? front_side,
    InputFile? reverse_side,
    InputFile? selfie,
    List<InputFile>? translation,
  }) {
    try {
      return InputIdentityDocument({
        "@type": special_type,
        "number": number,
        "expiry_date": (expiry_date != null) ? expiry_date.toJson() : null,
        "front_side": (front_side != null) ? front_side.toJson() : null,
        "reverse_side": (reverse_side != null) ? reverse_side.toJson() : null,
        "selfie": (selfie != null) ? selfie.toJson() : null,
        "translation": (translation != null)
            ? translation.map((e) {
                return InputFile((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return InputIdentityDocument({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputIdentityDocument.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get number {
    try {
      return (rawData[number] as String);
    } catch (e) {
      return null;
    }
  }

  Date? get expiry_date {
    try {
      return (rawData[expiry_date] as Date);
    } catch (e) {
      return null;
    }
  }

  InputFile? get front_side {
    try {
      return (rawData[front_side] as InputFile);
    } catch (e) {
      return null;
    }
  }

  InputFile? get reverse_side {
    try {
      return (rawData[reverse_side] as InputFile);
    } catch (e) {
      return null;
    }
  }

  InputFile? get selfie {
    try {
      return (rawData[selfie] as InputFile);
    } catch (e) {
      return null;
    }
  }

  List<InputFile> get translation {
    try {
      return (rawData[translation] as List<InputFile>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PersonalDocument {
  late Map rawData;
  PersonalDocument(this.rawData);

  factory PersonalDocument.create({
    String special_type = "personalDocument",
    List<DatedFile>? files,
    List<DatedFile>? translation,
  }) {
    try {
      return PersonalDocument({
        "@type": special_type,
        "files": (files != null)
            ? files.map((e) {
                return DatedFile((e as Map)).toJson();
              }).toList()
            : null,
        "translation": (translation != null)
            ? translation.map((e) {
                return DatedFile((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PersonalDocument({
        "@type": "error",
        "error": "${e}",
        "message": "error method PersonalDocument.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<DatedFile> get files {
    try {
      return (rawData[files] as List<DatedFile>);
    } catch (e) {
      return [];
    }
  }

  List<DatedFile> get translation {
    try {
      return (rawData[translation] as List<DatedFile>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputPersonalDocument {
  late Map rawData;
  InputPersonalDocument(this.rawData);

  factory InputPersonalDocument.create({
    String special_type = "inputPersonalDocument",
    List<InputFile>? files,
    List<InputFile>? translation,
  }) {
    try {
      return InputPersonalDocument({
        "@type": special_type,
        "files": (files != null)
            ? files.map((e) {
                return InputFile((e as Map)).toJson();
              }).toList()
            : null,
        "translation": (translation != null)
            ? translation.map((e) {
                return InputFile((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return InputPersonalDocument({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputPersonalDocument.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<InputFile> get files {
    try {
      return (rawData[files] as List<InputFile>);
    } catch (e) {
      return [];
    }
  }

  List<InputFile> get translation {
    try {
      return (rawData[translation] as List<InputFile>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElement {
  late Map rawData;
  PassportElement(this.rawData);

  factory PassportElement.create({
    String special_type = "passportElementPersonalDetails",
    PersonalDetails? personal_details,
    IdentityDocument? passport,
    IdentityDocument? driver_license,
    IdentityDocument? identity_card,
    IdentityDocument? internal_passport,
    Address? address,
    PersonalDocument? utility_bill,
    PersonalDocument? bank_statement,
    PersonalDocument? rental_agreement,
    PersonalDocument? passport_registration,
    PersonalDocument? temporary_registration,
    String? phone_number,
    String? email_address,
  }) {
    try {
      return PassportElement({
        "@type": special_type,
        "personal_details": (personal_details != null) ? personal_details.toJson() : null,
        "passport": (passport != null) ? passport.toJson() : null,
        "driver_license": (driver_license != null) ? driver_license.toJson() : null,
        "identity_card": (identity_card != null) ? identity_card.toJson() : null,
        "internal_passport": (internal_passport != null) ? internal_passport.toJson() : null,
        "address": (address != null) ? address.toJson() : null,
        "utility_bill": (utility_bill != null) ? utility_bill.toJson() : null,
        "bank_statement": (bank_statement != null) ? bank_statement.toJson() : null,
        "rental_agreement": (rental_agreement != null) ? rental_agreement.toJson() : null,
        "passport_registration": (passport_registration != null) ? passport_registration.toJson() : null,
        "temporary_registration": (temporary_registration != null) ? temporary_registration.toJson() : null,
        "phone_number": phone_number,
        "email_address": email_address,
      });
    } catch (e) {
      return PassportElement({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElement.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PersonalDetails? get personal_details {
    try {
      return (rawData[personal_details] as PersonalDetails);
    } catch (e) {
      return null;
    }
  }

  IdentityDocument? get passport {
    try {
      return (rawData[passport] as IdentityDocument);
    } catch (e) {
      return null;
    }
  }

  IdentityDocument? get driver_license {
    try {
      return (rawData[driver_license] as IdentityDocument);
    } catch (e) {
      return null;
    }
  }

  IdentityDocument? get identity_card {
    try {
      return (rawData[identity_card] as IdentityDocument);
    } catch (e) {
      return null;
    }
  }

  IdentityDocument? get internal_passport {
    try {
      return (rawData[internal_passport] as IdentityDocument);
    } catch (e) {
      return null;
    }
  }

  Address? get address {
    try {
      return (rawData[address] as Address);
    } catch (e) {
      return null;
    }
  }

  PersonalDocument? get utility_bill {
    try {
      return (rawData[utility_bill] as PersonalDocument);
    } catch (e) {
      return null;
    }
  }

  PersonalDocument? get bank_statement {
    try {
      return (rawData[bank_statement] as PersonalDocument);
    } catch (e) {
      return null;
    }
  }

  PersonalDocument? get rental_agreement {
    try {
      return (rawData[rental_agreement] as PersonalDocument);
    } catch (e) {
      return null;
    }
  }

  PersonalDocument? get passport_registration {
    try {
      return (rawData[passport_registration] as PersonalDocument);
    } catch (e) {
      return null;
    }
  }

  PersonalDocument? get temporary_registration {
    try {
      return (rawData[temporary_registration] as PersonalDocument);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  String? get email_address {
    try {
      return (rawData[email_address] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputPassportElement {
  late Map rawData;
  InputPassportElement(this.rawData);

  factory InputPassportElement.create({
    String special_type = "inputPassportElementPersonalDetails",
    PersonalDetails? personal_details,
    InputIdentityDocument? passport,
    InputIdentityDocument? driver_license,
    InputIdentityDocument? identity_card,
    InputIdentityDocument? internal_passport,
    Address? address,
    InputPersonalDocument? utility_bill,
    InputPersonalDocument? bank_statement,
    InputPersonalDocument? rental_agreement,
    InputPersonalDocument? passport_registration,
    InputPersonalDocument? temporary_registration,
    String? phone_number,
    String? email_address,
  }) {
    try {
      return InputPassportElement({
        "@type": special_type,
        "personal_details": (personal_details != null) ? personal_details.toJson() : null,
        "passport": (passport != null) ? passport.toJson() : null,
        "driver_license": (driver_license != null) ? driver_license.toJson() : null,
        "identity_card": (identity_card != null) ? identity_card.toJson() : null,
        "internal_passport": (internal_passport != null) ? internal_passport.toJson() : null,
        "address": (address != null) ? address.toJson() : null,
        "utility_bill": (utility_bill != null) ? utility_bill.toJson() : null,
        "bank_statement": (bank_statement != null) ? bank_statement.toJson() : null,
        "rental_agreement": (rental_agreement != null) ? rental_agreement.toJson() : null,
        "passport_registration": (passport_registration != null) ? passport_registration.toJson() : null,
        "temporary_registration": (temporary_registration != null) ? temporary_registration.toJson() : null,
        "phone_number": phone_number,
        "email_address": email_address,
      });
    } catch (e) {
      return InputPassportElement({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputPassportElement.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PersonalDetails? get personal_details {
    try {
      return (rawData[personal_details] as PersonalDetails);
    } catch (e) {
      return null;
    }
  }

  InputIdentityDocument? get passport {
    try {
      return (rawData[passport] as InputIdentityDocument);
    } catch (e) {
      return null;
    }
  }

  InputIdentityDocument? get driver_license {
    try {
      return (rawData[driver_license] as InputIdentityDocument);
    } catch (e) {
      return null;
    }
  }

  InputIdentityDocument? get identity_card {
    try {
      return (rawData[identity_card] as InputIdentityDocument);
    } catch (e) {
      return null;
    }
  }

  InputIdentityDocument? get internal_passport {
    try {
      return (rawData[internal_passport] as InputIdentityDocument);
    } catch (e) {
      return null;
    }
  }

  Address? get address {
    try {
      return (rawData[address] as Address);
    } catch (e) {
      return null;
    }
  }

  InputPersonalDocument? get utility_bill {
    try {
      return (rawData[utility_bill] as InputPersonalDocument);
    } catch (e) {
      return null;
    }
  }

  InputPersonalDocument? get bank_statement {
    try {
      return (rawData[bank_statement] as InputPersonalDocument);
    } catch (e) {
      return null;
    }
  }

  InputPersonalDocument? get rental_agreement {
    try {
      return (rawData[rental_agreement] as InputPersonalDocument);
    } catch (e) {
      return null;
    }
  }

  InputPersonalDocument? get passport_registration {
    try {
      return (rawData[passport_registration] as InputPersonalDocument);
    } catch (e) {
      return null;
    }
  }

  InputPersonalDocument? get temporary_registration {
    try {
      return (rawData[temporary_registration] as InputPersonalDocument);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  String? get email_address {
    try {
      return (rawData[email_address] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElements {
  late Map rawData;
  PassportElements(this.rawData);

  factory PassportElements.create({
    String special_type = "passportElements",
    List<PassportElement>? elements,
  }) {
    try {
      return PassportElements({
        "@type": special_type,
        "elements": (elements != null)
            ? elements.map((e) {
                return PassportElement((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PassportElements({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElements.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<PassportElement> get elements {
    try {
      return (rawData[elements] as List<PassportElement>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElementErrorSource {
  late Map rawData;
  PassportElementErrorSource(this.rawData);

  factory PassportElementErrorSource.create({
    String special_type = "passportElementErrorSourceUnspecified",
    String? field_name,
    int? file_index,
  }) {
    try {
      return PassportElementErrorSource({
        "@type": special_type,
        "field_name": field_name,
        "file_index": file_index,
      });
    } catch (e) {
      return PassportElementErrorSource({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElementErrorSource.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get field_name {
    try {
      return (rawData[field_name] as String);
    } catch (e) {
      return null;
    }
  }

  int? get file_index {
    try {
      return (rawData[file_index] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElementError {
  late Map rawData;
  PassportElementError(this.rawData);

  factory PassportElementError.create({
    String special_type = "passportElementError",
    PassportElementType? type,
    String? message,
    PassportElementErrorSource? source,
  }) {
    try {
      return PassportElementError({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "message": message,
        "source": (source != null) ? source.toJson() : null,
      });
    } catch (e) {
      return PassportElementError({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElementError.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PassportElementType? get type {
    try {
      return (rawData[type] as PassportElementType);
    } catch (e) {
      return null;
    }
  }

  String? get message {
    try {
      return (rawData[message] as String);
    } catch (e) {
      return null;
    }
  }

  PassportElementErrorSource? get source {
    try {
      return (rawData[source] as PassportElementErrorSource);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportSuitableElement {
  late Map rawData;
  PassportSuitableElement(this.rawData);

  factory PassportSuitableElement.create({
    String special_type = "passportSuitableElement",
    PassportElementType? type,
    bool? is_selfie_required,
    bool? is_translation_required,
    bool? is_native_name_required,
  }) {
    try {
      return PassportSuitableElement({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "is_selfie_required": is_selfie_required,
        "is_translation_required": is_translation_required,
        "is_native_name_required": is_native_name_required,
      });
    } catch (e) {
      return PassportSuitableElement({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportSuitableElement.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PassportElementType? get type {
    try {
      return (rawData[type] as PassportElementType);
    } catch (e) {
      return null;
    }
  }

  bool? get is_selfie_required {
    try {
      return (rawData[is_selfie_required] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_translation_required {
    try {
      return (rawData[is_translation_required] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_native_name_required {
    try {
      return (rawData[is_native_name_required] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportRequiredElement {
  late Map rawData;
  PassportRequiredElement(this.rawData);

  factory PassportRequiredElement.create({
    String special_type = "passportRequiredElement",
    List<PassportSuitableElement>? suitable_elements,
  }) {
    try {
      return PassportRequiredElement({
        "@type": special_type,
        "suitable_elements": (suitable_elements != null)
            ? suitable_elements.map((e) {
                return PassportSuitableElement((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PassportRequiredElement({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportRequiredElement.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<PassportSuitableElement> get suitable_elements {
    try {
      return (rawData[suitable_elements] as List<PassportSuitableElement>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportAuthorizationForm {
  late Map rawData;
  PassportAuthorizationForm(this.rawData);

  factory PassportAuthorizationForm.create({
    String special_type = "passportAuthorizationForm",
    int? id,
    List<PassportRequiredElement>? required_elements,
    String? privacy_policy_url,
  }) {
    try {
      return PassportAuthorizationForm({
        "@type": special_type,
        "id": id,
        "required_elements": (required_elements != null)
            ? required_elements.map((e) {
                return PassportRequiredElement((e as Map)).toJson();
              }).toList()
            : null,
        "privacy_policy_url": privacy_policy_url,
      });
    } catch (e) {
      return PassportAuthorizationForm({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportAuthorizationForm.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  List<PassportRequiredElement> get required_elements {
    try {
      return (rawData[required_elements] as List<PassportRequiredElement>);
    } catch (e) {
      return [];
    }
  }

  String? get privacy_policy_url {
    try {
      return (rawData[privacy_policy_url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PassportElementsWithErrors {
  late Map rawData;
  PassportElementsWithErrors(this.rawData);

  factory PassportElementsWithErrors.create({
    String special_type = "passportElementsWithErrors",
    List<PassportElement>? elements,
    List<PassportElementError>? errors,
  }) {
    try {
      return PassportElementsWithErrors({
        "@type": special_type,
        "elements": (elements != null)
            ? elements.map((e) {
                return PassportElement((e as Map)).toJson();
              }).toList()
            : null,
        "errors": (errors != null)
            ? errors.map((e) {
                return PassportElementError((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PassportElementsWithErrors({
        "@type": "error",
        "error": "${e}",
        "message": "error method PassportElementsWithErrors.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<PassportElement> get elements {
    try {
      return (rawData[elements] as List<PassportElement>);
    } catch (e) {
      return [];
    }
  }

  List<PassportElementError> get errors {
    try {
      return (rawData[errors] as List<PassportElementError>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EncryptedCredentials {
  late Map rawData;
  EncryptedCredentials(this.rawData);

  factory EncryptedCredentials.create({
    String special_type = "encryptedCredentials",
    String? data,
    String? hash,
    String? secret,
  }) {
    try {
      return EncryptedCredentials({
        "@type": special_type,
        "data": data,
        "hash": hash,
        "secret": secret,
      });
    } catch (e) {
      return EncryptedCredentials({
        "@type": "error",
        "error": "${e}",
        "message": "error method EncryptedCredentials.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  String? get hash {
    try {
      return (rawData[hash] as String);
    } catch (e) {
      return null;
    }
  }

  String? get secret {
    try {
      return (rawData[secret] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EncryptedPassportElement {
  late Map rawData;
  EncryptedPassportElement(this.rawData);

  factory EncryptedPassportElement.create({
    String special_type = "encryptedPassportElement",
    PassportElementType? type,
    String? data,
    DatedFile? front_side,
    DatedFile? reverse_side,
    DatedFile? selfie,
    List<DatedFile>? translation,
    List<DatedFile>? files,
    String? value,
    String? hash,
  }) {
    try {
      return EncryptedPassportElement({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "data": data,
        "front_side": (front_side != null) ? front_side.toJson() : null,
        "reverse_side": (reverse_side != null) ? reverse_side.toJson() : null,
        "selfie": (selfie != null) ? selfie.toJson() : null,
        "translation": (translation != null)
            ? translation.map((e) {
                return DatedFile((e as Map)).toJson();
              }).toList()
            : null,
        "files": (files != null)
            ? files.map((e) {
                return DatedFile((e as Map)).toJson();
              }).toList()
            : null,
        "value": value,
        "hash": hash,
      });
    } catch (e) {
      return EncryptedPassportElement({
        "@type": "error",
        "error": "${e}",
        "message": "error method EncryptedPassportElement.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PassportElementType? get type {
    try {
      return (rawData[type] as PassportElementType);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get front_side {
    try {
      return (rawData[front_side] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get reverse_side {
    try {
      return (rawData[reverse_side] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  DatedFile? get selfie {
    try {
      return (rawData[selfie] as DatedFile);
    } catch (e) {
      return null;
    }
  }

  List<DatedFile> get translation {
    try {
      return (rawData[translation] as List<DatedFile>);
    } catch (e) {
      return [];
    }
  }

  List<DatedFile> get files {
    try {
      return (rawData[files] as List<DatedFile>);
    } catch (e) {
      return [];
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get hash {
    try {
      return (rawData[hash] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputPassportElementErrorSource {
  late Map rawData;
  InputPassportElementErrorSource(this.rawData);

  factory InputPassportElementErrorSource.create({
    String special_type = "inputPassportElementErrorSourceUnspecified",
    String? element_hash,
    String? field_name,
    String? data_hash,
    String? file_hash,
    List<String>? file_hashes,
  }) {
    try {
      return InputPassportElementErrorSource({
        "@type": special_type,
        "element_hash": element_hash,
        "field_name": field_name,
        "data_hash": data_hash,
        "file_hash": file_hash,
        "file_hashes": file_hashes,
      });
    } catch (e) {
      return InputPassportElementErrorSource({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputPassportElementErrorSource.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get element_hash {
    try {
      return (rawData[element_hash] as String);
    } catch (e) {
      return null;
    }
  }

  String? get field_name {
    try {
      return (rawData[field_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data_hash {
    try {
      return (rawData[data_hash] as String);
    } catch (e) {
      return null;
    }
  }

  String? get file_hash {
    try {
      return (rawData[file_hash] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get file_hashes {
    try {
      return (rawData[file_hashes] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputPassportElementError {
  late Map rawData;
  InputPassportElementError(this.rawData);

  factory InputPassportElementError.create({
    String special_type = "inputPassportElementError",
    PassportElementType? type,
    String? message,
    InputPassportElementErrorSource? source,
  }) {
    try {
      return InputPassportElementError({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "message": message,
        "source": (source != null) ? source.toJson() : null,
      });
    } catch (e) {
      return InputPassportElementError({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputPassportElementError.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PassportElementType? get type {
    try {
      return (rawData[type] as PassportElementType);
    } catch (e) {
      return null;
    }
  }

  String? get message {
    try {
      return (rawData[message] as String);
    } catch (e) {
      return null;
    }
  }

  InputPassportElementErrorSource? get source {
    try {
      return (rawData[source] as InputPassportElementErrorSource);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageContent {
  late Map rawData;
  MessageContent(this.rawData);

  factory MessageContent.create({
    String special_type = "messageText",
    String? text,
    WebPage? web_page,
    Animation? animation,
    FormattedText? caption,
    bool? is_secret,
    Audio? audio,
    Document? document,
    ChatPhoto? photo,
    Sticker? sticker,
    bool? is_premium,
    Video? video,
    VideoNote? video_note,
    bool? is_viewed,
    VoiceNote? voice_note,
    bool? is_listened,
    Location? location,
    int? live_period,
    int? expires_in,
    int? heading,
    int? proximity_alert_radius,
    Venue? venue,
    Contact? contact,
    AnimatedEmoji? animated_emoji,
    String? emoji,
    DiceStickers? initial_state,
    DiceStickers? final_state,
    int? value,
    int? success_animation_frame_number,
    Game? game,
    Poll? poll,
    String? title,
    FormattedText? description,
    String? currency,
    int? total_amount,
    String? start_parameter,
    bool? is_test,
    bool? need_shipping_address,
    int? receipt_message_id,
    MessageExtendedMedia? extended_media,
    bool? is_video,
    CallDiscardReason? discard_reason,
    int? duration,
    int? group_call_id,
    int? start_date,
    List<int>? user_ids,
    List<int>? member_user_ids,
    int? user_id,
    int? supergroup_id,
    int? basic_group_id,
    int? message_id,
    String? theme_name,
    int? ttl,
    int? game_message_id,
    int? game_id,
    int? score,
    int? invoice_chat_id,
    int? invoice_message_id,
    bool? is_recurring,
    bool? is_first_recurring,
    String? invoice_name,
    String? invoice_payload,
    String? shipping_option_id,
    OrderInfo? order_info,
    String? telegram_payment_charge_id,
    String? provider_payment_charge_id,
    int? amount,
    int? month_count,
    String? domain_name,
    String? button_text,
    String? data,
    List<PassportElementType>? types,
    List<EncryptedPassportElement>? elements,
    EncryptedCredentials? credentials,
    MessageSender? traveler_id,
    MessageSender? watcher_id,
    int? distance,
  }) {
    try {
      return MessageContent({
        "@type": special_type,
        "text": text,
        "web_page": (web_page != null) ? web_page.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "caption": (caption != null) ? caption.toJson() : null,
        "is_secret": is_secret,
        "audio": (audio != null) ? audio.toJson() : null,
        "document": (document != null) ? document.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "is_premium": is_premium,
        "video": (video != null) ? video.toJson() : null,
        "video_note": (video_note != null) ? video_note.toJson() : null,
        "is_viewed": is_viewed,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
        "is_listened": is_listened,
        "location": (location != null) ? location.toJson() : null,
        "live_period": live_period,
        "expires_in": expires_in,
        "heading": heading,
        "proximity_alert_radius": proximity_alert_radius,
        "venue": (venue != null) ? venue.toJson() : null,
        "contact": (contact != null) ? contact.toJson() : null,
        "animated_emoji": (animated_emoji != null) ? animated_emoji.toJson() : null,
        "emoji": emoji,
        "initial_state": (initial_state != null) ? initial_state.toJson() : null,
        "final_state": (final_state != null) ? final_state.toJson() : null,
        "value": value,
        "success_animation_frame_number": success_animation_frame_number,
        "game": (game != null) ? game.toJson() : null,
        "poll": (poll != null) ? poll.toJson() : null,
        "title": title,
        "description": (description != null) ? description.toJson() : null,
        "currency": currency,
        "total_amount": total_amount,
        "start_parameter": start_parameter,
        "is_test": is_test,
        "need_shipping_address": need_shipping_address,
        "receipt_message_id": receipt_message_id,
        "extended_media": (extended_media != null) ? extended_media.toJson() : null,
        "is_video": is_video,
        "discard_reason": (discard_reason != null) ? discard_reason.toJson() : null,
        "duration": duration,
        "group_call_id": group_call_id,
        "start_date": start_date,
        "user_ids": user_ids,
        "member_user_ids": member_user_ids,
        "user_id": user_id,
        "supergroup_id": supergroup_id,
        "basic_group_id": basic_group_id,
        "message_id": message_id,
        "theme_name": theme_name,
        "ttl": ttl,
        "game_message_id": game_message_id,
        "game_id": game_id,
        "score": score,
        "invoice_chat_id": invoice_chat_id,
        "invoice_message_id": invoice_message_id,
        "is_recurring": is_recurring,
        "is_first_recurring": is_first_recurring,
        "invoice_name": invoice_name,
        "invoice_payload": invoice_payload,
        "shipping_option_id": shipping_option_id,
        "order_info": (order_info != null) ? order_info.toJson() : null,
        "telegram_payment_charge_id": telegram_payment_charge_id,
        "provider_payment_charge_id": provider_payment_charge_id,
        "amount": amount,
        "month_count": month_count,
        "domain_name": domain_name,
        "button_text": button_text,
        "data": data,
        "types": (types != null)
            ? types.map((e) {
                return PassportElementType((e as Map)).toJson();
              }).toList()
            : null,
        "elements": (elements != null)
            ? elements.map((e) {
                return EncryptedPassportElement((e as Map)).toJson();
              }).toList()
            : null,
        "credentials": (credentials != null) ? credentials.toJson() : null,
        "traveler_id": (traveler_id != null) ? traveler_id.toJson() : null,
        "watcher_id": (watcher_id != null) ? watcher_id.toJson() : null,
        "distance": distance,
      });
    } catch (e) {
      return MessageContent({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageContent.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  WebPage? get web_page {
    try {
      return (rawData[web_page] as WebPage);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get caption {
    try {
      return (rawData[caption] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret {
    try {
      return (rawData[is_secret] as bool);
    } catch (e) {
      return null;
    }
  }

  Audio? get audio {
    try {
      return (rawData[audio] as Audio);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get photo {
    try {
      return (rawData[photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  bool? get is_premium {
    try {
      return (rawData[is_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  VideoNote? get video_note {
    try {
      return (rawData[video_note] as VideoNote);
    } catch (e) {
      return null;
    }
  }

  bool? get is_viewed {
    try {
      return (rawData[is_viewed] as bool);
    } catch (e) {
      return null;
    }
  }

  VoiceNote? get voice_note {
    try {
      return (rawData[voice_note] as VoiceNote);
    } catch (e) {
      return null;
    }
  }

  bool? get is_listened {
    try {
      return (rawData[is_listened] as bool);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  int? get live_period {
    try {
      return (rawData[live_period] as int);
    } catch (e) {
      return null;
    }
  }

  int? get expires_in {
    try {
      return (rawData[expires_in] as int);
    } catch (e) {
      return null;
    }
  }

  int? get heading {
    try {
      return (rawData[heading] as int);
    } catch (e) {
      return null;
    }
  }

  int? get proximity_alert_radius {
    try {
      return (rawData[proximity_alert_radius] as int);
    } catch (e) {
      return null;
    }
  }

  Venue? get venue {
    try {
      return (rawData[venue] as Venue);
    } catch (e) {
      return null;
    }
  }

  Contact? get contact {
    try {
      return (rawData[contact] as Contact);
    } catch (e) {
      return null;
    }
  }

  AnimatedEmoji? get animated_emoji {
    try {
      return (rawData[animated_emoji] as AnimatedEmoji);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  DiceStickers? get initial_state {
    try {
      return (rawData[initial_state] as DiceStickers);
    } catch (e) {
      return null;
    }
  }

  DiceStickers? get final_state {
    try {
      return (rawData[final_state] as DiceStickers);
    } catch (e) {
      return null;
    }
  }

  int? get value {
    try {
      return (rawData[value] as int);
    } catch (e) {
      return null;
    }
  }

  int? get success_animation_frame_number {
    try {
      return (rawData[success_animation_frame_number] as int);
    } catch (e) {
      return null;
    }
  }

  Game? get game {
    try {
      return (rawData[game] as Game);
    } catch (e) {
      return null;
    }
  }

  Poll? get poll {
    try {
      return (rawData[poll] as Poll);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get description {
    try {
      return (rawData[description] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      return (rawData[currency] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_amount {
    try {
      return (rawData[total_amount] as int);
    } catch (e) {
      return null;
    }
  }

  String? get start_parameter {
    try {
      return (rawData[start_parameter] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_test {
    try {
      return (rawData[is_test] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_shipping_address {
    try {
      return (rawData[need_shipping_address] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get receipt_message_id {
    try {
      return (rawData[receipt_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageExtendedMedia? get extended_media {
    try {
      return (rawData[extended_media] as MessageExtendedMedia);
    } catch (e) {
      return null;
    }
  }

  bool? get is_video {
    try {
      return (rawData[is_video] as bool);
    } catch (e) {
      return null;
    }
  }

  CallDiscardReason? get discard_reason {
    try {
      return (rawData[discard_reason] as CallDiscardReason);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get group_call_id {
    try {
      return (rawData[group_call_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get start_date {
    try {
      return (rawData[start_date] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get user_ids {
    try {
      return (rawData[user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get member_user_ids {
    try {
      return (rawData[member_user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get supergroup_id {
    try {
      return (rawData[supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get basic_group_id {
    try {
      return (rawData[basic_group_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get theme_name {
    try {
      return (rawData[theme_name] as String);
    } catch (e) {
      return null;
    }
  }

  int? get ttl {
    try {
      return (rawData[ttl] as int);
    } catch (e) {
      return null;
    }
  }

  int? get game_message_id {
    try {
      return (rawData[game_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get game_id {
    try {
      return (rawData[game_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get score {
    try {
      return (rawData[score] as int);
    } catch (e) {
      return null;
    }
  }

  int? get invoice_chat_id {
    try {
      return (rawData[invoice_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get invoice_message_id {
    try {
      return (rawData[invoice_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_recurring {
    try {
      return (rawData[is_recurring] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_first_recurring {
    try {
      return (rawData[is_first_recurring] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get invoice_name {
    try {
      return (rawData[invoice_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get invoice_payload {
    try {
      return (rawData[invoice_payload] as String);
    } catch (e) {
      return null;
    }
  }

  String? get shipping_option_id {
    try {
      return (rawData[shipping_option_id] as String);
    } catch (e) {
      return null;
    }
  }

  OrderInfo? get order_info {
    try {
      return (rawData[order_info] as OrderInfo);
    } catch (e) {
      return null;
    }
  }

  String? get telegram_payment_charge_id {
    try {
      return (rawData[telegram_payment_charge_id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get provider_payment_charge_id {
    try {
      return (rawData[provider_payment_charge_id] as String);
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      return (rawData[amount] as int);
    } catch (e) {
      return null;
    }
  }

  int? get month_count {
    try {
      return (rawData[month_count] as int);
    } catch (e) {
      return null;
    }
  }

  String? get domain_name {
    try {
      return (rawData[domain_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get button_text {
    try {
      return (rawData[button_text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  List<PassportElementType> get types {
    try {
      return (rawData[types] as List<PassportElementType>);
    } catch (e) {
      return [];
    }
  }

  List<EncryptedPassportElement> get elements {
    try {
      return (rawData[elements] as List<EncryptedPassportElement>);
    } catch (e) {
      return [];
    }
  }

  EncryptedCredentials? get credentials {
    try {
      return (rawData[credentials] as EncryptedCredentials);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get traveler_id {
    try {
      return (rawData[traveler_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get watcher_id {
    try {
      return (rawData[watcher_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  int? get distance {
    try {
      return (rawData[distance] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TextEntityType {
  late Map rawData;
  TextEntityType(this.rawData);

  factory TextEntityType.create({
    String special_type = "textEntityTypeMention",
    String? language,
    String? url,
    int? user_id,
    int? custom_emoji_id,
    int? media_timestamp,
  }) {
    try {
      return TextEntityType({
        "@type": special_type,
        "language": language,
        "url": url,
        "user_id": user_id,
        "custom_emoji_id": custom_emoji_id,
        "media_timestamp": media_timestamp,
      });
    } catch (e) {
      return TextEntityType({
        "@type": "error",
        "error": "${e}",
        "message": "error method TextEntityType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get language {
    try {
      return (rawData[language] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get custom_emoji_id {
    try {
      return (rawData[custom_emoji_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get media_timestamp {
    try {
      return (rawData[media_timestamp] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputThumbnail {
  late Map rawData;
  InputThumbnail(this.rawData);

  factory InputThumbnail.create({
    String special_type = "inputThumbnail",
    InputFile? thumbnail,
    int? width,
    int? height,
  }) {
    try {
      return InputThumbnail({
        "@type": special_type,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "width": width,
        "height": height,
      });
    } catch (e) {
      return InputThumbnail({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputThumbnail.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  InputFile? get thumbnail {
    try {
      return (rawData[thumbnail] as InputFile);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageSchedulingState {
  late Map rawData;
  MessageSchedulingState(this.rawData);

  factory MessageSchedulingState.create({
    String special_type = "messageSchedulingStateSendAtDate",
    int? send_date,
  }) {
    try {
      return MessageSchedulingState({
        "@type": special_type,
        "send_date": send_date,
      });
    } catch (e) {
      return MessageSchedulingState({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageSchedulingState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get send_date {
    try {
      return (rawData[send_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageSendOptions {
  late Map rawData;
  MessageSendOptions(this.rawData);

  factory MessageSendOptions.create({
    String special_type = "messageSendOptions",
    bool? disable_notification,
    bool? from_background,
    bool? protect_content,
    bool? update_order_of_installed_sticker_sets,
    MessageSchedulingState? scheduling_state,
  }) {
    try {
      return MessageSendOptions({
        "@type": special_type,
        "disable_notification": disable_notification,
        "from_background": from_background,
        "protect_content": protect_content,
        "update_order_of_installed_sticker_sets": update_order_of_installed_sticker_sets,
        "scheduling_state": (scheduling_state != null) ? scheduling_state.toJson() : null,
      });
    } catch (e) {
      return MessageSendOptions({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageSendOptions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_notification {
    try {
      return (rawData[disable_notification] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get from_background {
    try {
      return (rawData[from_background] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get protect_content {
    try {
      return (rawData[protect_content] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get update_order_of_installed_sticker_sets {
    try {
      return (rawData[update_order_of_installed_sticker_sets] as bool);
    } catch (e) {
      return null;
    }
  }

  MessageSchedulingState? get scheduling_state {
    try {
      return (rawData[scheduling_state] as MessageSchedulingState);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageCopyOptions {
  late Map rawData;
  MessageCopyOptions(this.rawData);

  factory MessageCopyOptions.create({
    String special_type = "messageCopyOptions",
    bool? send_copy,
    bool? replace_caption,
    FormattedText? new_caption,
  }) {
    try {
      return MessageCopyOptions({
        "@type": special_type,
        "send_copy": send_copy,
        "replace_caption": replace_caption,
        "new_caption": (new_caption != null) ? new_caption.toJson() : null,
      });
    } catch (e) {
      return MessageCopyOptions({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageCopyOptions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get send_copy {
    try {
      return (rawData[send_copy] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get replace_caption {
    try {
      return (rawData[replace_caption] as bool);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get new_caption {
    try {
      return (rawData[new_caption] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputMessageContent {
  late Map rawData;
  InputMessageContent(this.rawData);

  factory InputMessageContent.create({
    String special_type = "inputMessageText",
    FormattedText? text,
    bool? disable_web_page_preview,
    bool? clear_draft,
    InputFile? animation,
    InputThumbnail? thumbnail,
    List<int>? added_sticker_file_ids,
    int? duration,
    int? width,
    int? height,
    FormattedText? caption,
    InputFile? audio,
    InputThumbnail? album_cover_thumbnail,
    String? title,
    String? performer,
    InputFile? document,
    bool? disable_content_type_detection,
    InputFile? photo,
    int? ttl,
    InputFile? sticker,
    String? emoji,
    InputFile? video,
    bool? supports_streaming,
    InputFile? video_note,
    int? length,
    InputFile? voice_note,
    String? waveform,
    Location? location,
    int? live_period,
    int? heading,
    int? proximity_alert_radius,
    Venue? venue,
    Contact? contact,
    int? bot_user_id,
    String? game_short_name,
    Invoice? invoice,
    String? description,
    String? photo_url,
    int? photo_size,
    int? photo_width,
    int? photo_height,
    String? payload,
    String? provider_token,
    String? provider_data,
    String? start_parameter,
    InputMessageContent? extended_media_content,
    String? question,
    List<String>? options,
    bool? is_anonymous,
    PollType? type,
    int? open_period,
    int? close_date,
    bool? is_closed,
    int? from_chat_id,
    int? message_id,
    bool? in_game_share,
    MessageCopyOptions? copy_options,
  }) {
    try {
      return InputMessageContent({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "disable_web_page_preview": disable_web_page_preview,
        "clear_draft": clear_draft,
        "animation": (animation != null) ? animation.toJson() : null,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "added_sticker_file_ids": added_sticker_file_ids,
        "duration": duration,
        "width": width,
        "height": height,
        "caption": (caption != null) ? caption.toJson() : null,
        "audio": (audio != null) ? audio.toJson() : null,
        "album_cover_thumbnail": (album_cover_thumbnail != null) ? album_cover_thumbnail.toJson() : null,
        "title": title,
        "performer": performer,
        "document": (document != null) ? document.toJson() : null,
        "disable_content_type_detection": disable_content_type_detection,
        "photo": (photo != null) ? photo.toJson() : null,
        "ttl": ttl,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "emoji": emoji,
        "video": (video != null) ? video.toJson() : null,
        "supports_streaming": supports_streaming,
        "video_note": (video_note != null) ? video_note.toJson() : null,
        "length": length,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
        "waveform": waveform,
        "location": (location != null) ? location.toJson() : null,
        "live_period": live_period,
        "heading": heading,
        "proximity_alert_radius": proximity_alert_radius,
        "venue": (venue != null) ? venue.toJson() : null,
        "contact": (contact != null) ? contact.toJson() : null,
        "bot_user_id": bot_user_id,
        "game_short_name": game_short_name,
        "invoice": (invoice != null) ? invoice.toJson() : null,
        "description": description,
        "photo_url": photo_url,
        "photo_size": photo_size,
        "photo_width": photo_width,
        "photo_height": photo_height,
        "payload": payload,
        "provider_token": provider_token,
        "provider_data": provider_data,
        "start_parameter": start_parameter,
        "extended_media_content": (extended_media_content != null) ? extended_media_content.toJson() : null,
        "question": question,
        "options": options,
        "is_anonymous": is_anonymous,
        "type": (type != null) ? type.toJson() : null,
        "open_period": open_period,
        "close_date": close_date,
        "is_closed": is_closed,
        "from_chat_id": from_chat_id,
        "message_id": message_id,
        "in_game_share": in_game_share,
        "copy_options": (copy_options != null) ? copy_options.toJson() : null,
      });
    } catch (e) {
      return InputMessageContent({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputMessageContent.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get text {
    try {
      return (rawData[text] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_web_page_preview {
    try {
      return (rawData[disable_web_page_preview] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get clear_draft {
    try {
      return (rawData[clear_draft] as bool);
    } catch (e) {
      return null;
    }
  }

  InputFile? get animation {
    try {
      return (rawData[animation] as InputFile);
    } catch (e) {
      return null;
    }
  }

  InputThumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as InputThumbnail);
    } catch (e) {
      return null;
    }
  }

  List<int> get added_sticker_file_ids {
    try {
      return (rawData[added_sticker_file_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get width {
    try {
      return (rawData[width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get height {
    try {
      return (rawData[height] as int);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get caption {
    try {
      return (rawData[caption] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  InputFile? get audio {
    try {
      return (rawData[audio] as InputFile);
    } catch (e) {
      return null;
    }
  }

  InputThumbnail? get album_cover_thumbnail {
    try {
      return (rawData[album_cover_thumbnail] as InputThumbnail);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get performer {
    try {
      return (rawData[performer] as String);
    } catch (e) {
      return null;
    }
  }

  InputFile? get document {
    try {
      return (rawData[document] as InputFile);
    } catch (e) {
      return null;
    }
  }

  bool? get disable_content_type_detection {
    try {
      return (rawData[disable_content_type_detection] as bool);
    } catch (e) {
      return null;
    }
  }

  InputFile? get photo {
    try {
      return (rawData[photo] as InputFile);
    } catch (e) {
      return null;
    }
  }

  int? get ttl {
    try {
      return (rawData[ttl] as int);
    } catch (e) {
      return null;
    }
  }

  InputFile? get sticker {
    try {
      return (rawData[sticker] as InputFile);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  InputFile? get video {
    try {
      return (rawData[video] as InputFile);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_streaming {
    try {
      return (rawData[supports_streaming] as bool);
    } catch (e) {
      return null;
    }
  }

  InputFile? get video_note {
    try {
      return (rawData[video_note] as InputFile);
    } catch (e) {
      return null;
    }
  }

  int? get length {
    try {
      return (rawData[length] as int);
    } catch (e) {
      return null;
    }
  }

  InputFile? get voice_note {
    try {
      return (rawData[voice_note] as InputFile);
    } catch (e) {
      return null;
    }
  }

  String? get waveform {
    try {
      return (rawData[waveform] as String);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  int? get live_period {
    try {
      return (rawData[live_period] as int);
    } catch (e) {
      return null;
    }
  }

  int? get heading {
    try {
      return (rawData[heading] as int);
    } catch (e) {
      return null;
    }
  }

  int? get proximity_alert_radius {
    try {
      return (rawData[proximity_alert_radius] as int);
    } catch (e) {
      return null;
    }
  }

  Venue? get venue {
    try {
      return (rawData[venue] as Venue);
    } catch (e) {
      return null;
    }
  }

  Contact? get contact {
    try {
      return (rawData[contact] as Contact);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get game_short_name {
    try {
      return (rawData[game_short_name] as String);
    } catch (e) {
      return null;
    }
  }

  Invoice? get invoice {
    try {
      return (rawData[invoice] as Invoice);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  String? get photo_url {
    try {
      return (rawData[photo_url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get photo_size {
    try {
      return (rawData[photo_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get photo_width {
    try {
      return (rawData[photo_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get photo_height {
    try {
      return (rawData[photo_height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get payload {
    try {
      return (rawData[payload] as String);
    } catch (e) {
      return null;
    }
  }

  String? get provider_token {
    try {
      return (rawData[provider_token] as String);
    } catch (e) {
      return null;
    }
  }

  String? get provider_data {
    try {
      return (rawData[provider_data] as String);
    } catch (e) {
      return null;
    }
  }

  String? get start_parameter {
    try {
      return (rawData[start_parameter] as String);
    } catch (e) {
      return null;
    }
  }

  InputMessageContent? get extended_media_content {
    try {
      return (rawData[extended_media_content] as InputMessageContent);
    } catch (e) {
      return null;
    }
  }

  String? get question {
    try {
      return (rawData[question] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get options {
    try {
      return (rawData[options] as List<String>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_anonymous {
    try {
      return (rawData[is_anonymous] as bool);
    } catch (e) {
      return null;
    }
  }

  PollType? get type {
    try {
      return (rawData[type] as PollType);
    } catch (e) {
      return null;
    }
  }

  int? get open_period {
    try {
      return (rawData[open_period] as int);
    } catch (e) {
      return null;
    }
  }

  int? get close_date {
    try {
      return (rawData[close_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_closed {
    try {
      return (rawData[is_closed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get from_chat_id {
    try {
      return (rawData[from_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get in_game_share {
    try {
      return (rawData[in_game_share] as bool);
    } catch (e) {
      return null;
    }
  }

  MessageCopyOptions? get copy_options {
    try {
      return (rawData[copy_options] as MessageCopyOptions);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SearchMessagesFilter {
  late Map rawData;
  SearchMessagesFilter(this.rawData);

  factory SearchMessagesFilter.create({
    String special_type = "searchMessagesFilterEmpty",
  }) {
    try {
      return SearchMessagesFilter({
        "@type": special_type,
      });
    } catch (e) {
      return SearchMessagesFilter({
        "@type": "error",
        "error": "${e}",
        "message": "error method SearchMessagesFilter.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatAction {
  late Map rawData;
  ChatAction(this.rawData);

  factory ChatAction.create({
    String special_type = "chatActionTyping",
    int? progress,
    String? emoji,
  }) {
    try {
      return ChatAction({
        "@type": special_type,
        "progress": progress,
        "emoji": emoji,
      });
    } catch (e) {
      return ChatAction({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatAction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get progress {
    try {
      return (rawData[progress] as int);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserStatus {
  late Map rawData;
  UserStatus(this.rawData);

  factory UserStatus.create({
    String special_type = "userStatusEmpty",
    int? expires,
    int? was_online,
  }) {
    try {
      return UserStatus({
        "@type": special_type,
        "expires": expires,
        "was_online": was_online,
      });
    } catch (e) {
      return UserStatus({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserStatus.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get expires {
    try {
      return (rawData[expires] as int);
    } catch (e) {
      return null;
    }
  }

  int? get was_online {
    try {
      return (rawData[was_online] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Stickers {
  late Map rawData;
  Stickers(this.rawData);

  factory Stickers.create({
    String special_type = "stickers",
    List<Sticker>? stickers,
  }) {
    try {
      return Stickers({
        "@type": special_type,
        "stickers": (stickers != null)
            ? stickers.map((e) {
                return Sticker((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Stickers({
        "@type": "error",
        "error": "${e}",
        "message": "error method Stickers.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Sticker> get stickers {
    try {
      return (rawData[stickers] as List<Sticker>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Emojis {
  late Map rawData;
  Emojis(this.rawData);

  factory Emojis.create({
    String special_type = "emojis",
    List<String>? emojis,
  }) {
    try {
      return Emojis({
        "@type": special_type,
        "emojis": emojis,
      });
    } catch (e) {
      return Emojis({
        "@type": "error",
        "error": "${e}",
        "message": "error method Emojis.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get emojis {
    try {
      return (rawData[emojis] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StickerSet {
  late Map rawData;
  StickerSet(this.rawData);

  factory StickerSet.create({
    String special_type = "stickerSet",
    int? id,
    String? title,
    String? name,
    Thumbnail? thumbnail,
    List<ClosedVectorPath>? thumbnail_outline,
    bool? is_installed,
    bool? is_archived,
    bool? is_official,
    StickerFormat? sticker_format,
    StickerType? sticker_type,
    bool? is_viewed,
    List<Sticker>? stickers,
    List<Emojis>? emojis,
  }) {
    try {
      return StickerSet({
        "@type": special_type,
        "id": id,
        "title": title,
        "name": name,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "thumbnail_outline": (thumbnail_outline != null)
            ? thumbnail_outline.map((e) {
                return ClosedVectorPath((e as Map)).toJson();
              }).toList()
            : null,
        "is_installed": is_installed,
        "is_archived": is_archived,
        "is_official": is_official,
        "sticker_format": (sticker_format != null) ? sticker_format.toJson() : null,
        "sticker_type": (sticker_type != null) ? sticker_type.toJson() : null,
        "is_viewed": is_viewed,
        "stickers": (stickers != null)
            ? stickers.map((e) {
                return Sticker((e as Map)).toJson();
              }).toList()
            : null,
        "emojis": (emojis != null)
            ? emojis.map((e) {
                return Emojis((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return StickerSet({
        "@type": "error",
        "error": "${e}",
        "message": "error method StickerSet.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  List<ClosedVectorPath> get thumbnail_outline {
    try {
      return (rawData[thumbnail_outline] as List<ClosedVectorPath>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_installed {
    try {
      return (rawData[is_installed] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_archived {
    try {
      return (rawData[is_archived] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_official {
    try {
      return (rawData[is_official] as bool);
    } catch (e) {
      return null;
    }
  }

  StickerFormat? get sticker_format {
    try {
      return (rawData[sticker_format] as StickerFormat);
    } catch (e) {
      return null;
    }
  }

  StickerType? get sticker_type {
    try {
      return (rawData[sticker_type] as StickerType);
    } catch (e) {
      return null;
    }
  }

  bool? get is_viewed {
    try {
      return (rawData[is_viewed] as bool);
    } catch (e) {
      return null;
    }
  }

  List<Sticker> get stickers {
    try {
      return (rawData[stickers] as List<Sticker>);
    } catch (e) {
      return [];
    }
  }

  List<Emojis> get emojis {
    try {
      return (rawData[emojis] as List<Emojis>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StickerSetInfo {
  late Map rawData;
  StickerSetInfo(this.rawData);

  factory StickerSetInfo.create({
    String special_type = "stickerSetInfo",
    int? id,
    String? title,
    String? name,
    Thumbnail? thumbnail,
    List<ClosedVectorPath>? thumbnail_outline,
    bool? is_installed,
    bool? is_archived,
    bool? is_official,
    StickerFormat? sticker_format,
    StickerType? sticker_type,
    bool? is_viewed,
    int? size,
    List<Sticker>? covers,
  }) {
    try {
      return StickerSetInfo({
        "@type": special_type,
        "id": id,
        "title": title,
        "name": name,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "thumbnail_outline": (thumbnail_outline != null)
            ? thumbnail_outline.map((e) {
                return ClosedVectorPath((e as Map)).toJson();
              }).toList()
            : null,
        "is_installed": is_installed,
        "is_archived": is_archived,
        "is_official": is_official,
        "sticker_format": (sticker_format != null) ? sticker_format.toJson() : null,
        "sticker_type": (sticker_type != null) ? sticker_type.toJson() : null,
        "is_viewed": is_viewed,
        "size": size,
        "covers": (covers != null)
            ? covers.map((e) {
                return Sticker((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return StickerSetInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method StickerSetInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  List<ClosedVectorPath> get thumbnail_outline {
    try {
      return (rawData[thumbnail_outline] as List<ClosedVectorPath>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_installed {
    try {
      return (rawData[is_installed] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_archived {
    try {
      return (rawData[is_archived] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_official {
    try {
      return (rawData[is_official] as bool);
    } catch (e) {
      return null;
    }
  }

  StickerFormat? get sticker_format {
    try {
      return (rawData[sticker_format] as StickerFormat);
    } catch (e) {
      return null;
    }
  }

  StickerType? get sticker_type {
    try {
      return (rawData[sticker_type] as StickerType);
    } catch (e) {
      return null;
    }
  }

  bool? get is_viewed {
    try {
      return (rawData[is_viewed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  List<Sticker> get covers {
    try {
      return (rawData[covers] as List<Sticker>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StickerSets {
  late Map rawData;
  StickerSets(this.rawData);

  factory StickerSets.create({
    String special_type = "stickerSets",
    int? total_count,
    List<StickerSetInfo>? sets,
  }) {
    try {
      return StickerSets({
        "@type": special_type,
        "total_count": total_count,
        "sets": (sets != null)
            ? sets.map((e) {
                return StickerSetInfo((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return StickerSets({
        "@type": "error",
        "error": "${e}",
        "message": "error method StickerSets.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<StickerSetInfo> get sets {
    try {
      return (rawData[sets] as List<StickerSetInfo>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TrendingStickerSets {
  late Map rawData;
  TrendingStickerSets(this.rawData);

  factory TrendingStickerSets.create({
    String special_type = "trendingStickerSets",
    int? total_count,
    List<StickerSetInfo>? sets,
    bool? is_premium,
  }) {
    try {
      return TrendingStickerSets({
        "@type": special_type,
        "total_count": total_count,
        "sets": (sets != null)
            ? sets.map((e) {
                return StickerSetInfo((e as Map)).toJson();
              }).toList()
            : null,
        "is_premium": is_premium,
      });
    } catch (e) {
      return TrendingStickerSets({
        "@type": "error",
        "error": "${e}",
        "message": "error method TrendingStickerSets.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<StickerSetInfo> get sets {
    try {
      return (rawData[sets] as List<StickerSetInfo>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_premium {
    try {
      return (rawData[is_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallDiscardReason {
  late Map rawData;
  CallDiscardReason(this.rawData);

  factory CallDiscardReason.create({
    String special_type = "callDiscardReasonEmpty",
  }) {
    try {
      return CallDiscardReason({
        "@type": special_type,
      });
    } catch (e) {
      return CallDiscardReason({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallDiscardReason.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallProtocol {
  late Map rawData;
  CallProtocol(this.rawData);

  factory CallProtocol.create({
    String special_type = "callProtocol",
    bool? udp_p2p,
    bool? udp_reflector,
    int? min_layer,
    int? max_layer,
    List<String>? library_versions,
  }) {
    try {
      return CallProtocol({
        "@type": special_type,
        "udp_p2p": udp_p2p,
        "udp_reflector": udp_reflector,
        "min_layer": min_layer,
        "max_layer": max_layer,
        "library_versions": library_versions,
      });
    } catch (e) {
      return CallProtocol({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallProtocol.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get udp_p2p {
    try {
      return (rawData[udp_p2p] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get udp_reflector {
    try {
      return (rawData[udp_reflector] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get min_layer {
    try {
      return (rawData[min_layer] as int);
    } catch (e) {
      return null;
    }
  }

  int? get max_layer {
    try {
      return (rawData[max_layer] as int);
    } catch (e) {
      return null;
    }
  }

  List<String> get library_versions {
    try {
      return (rawData[library_versions] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallServerType {
  late Map rawData;
  CallServerType(this.rawData);

  factory CallServerType.create({
    String special_type = "callServerTypeTelegramReflector",
    String? peer_tag,
    bool? is_tcp,
    String? username,
    String? password,
    bool? supports_turn,
    bool? supports_stun,
  }) {
    try {
      return CallServerType({
        "@type": special_type,
        "peer_tag": peer_tag,
        "is_tcp": is_tcp,
        "username": username,
        "password": password,
        "supports_turn": supports_turn,
        "supports_stun": supports_stun,
      });
    } catch (e) {
      return CallServerType({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallServerType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get peer_tag {
    try {
      return (rawData[peer_tag] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_tcp {
    try {
      return (rawData[is_tcp] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      return (rawData[username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get password {
    try {
      return (rawData[password] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_turn {
    try {
      return (rawData[supports_turn] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_stun {
    try {
      return (rawData[supports_stun] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallServer {
  late Map rawData;
  CallServer(this.rawData);

  factory CallServer.create({
    String special_type = "callServer",
    int? id,
    String? ip_address,
    String? ipv6_address,
    int? port,
    CallServerType? type,
  }) {
    try {
      return CallServer({
        "@type": special_type,
        "id": id,
        "ip_address": ip_address,
        "ipv6_address": ipv6_address,
        "port": port,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return CallServer({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallServer.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get ip_address {
    try {
      return (rawData[ip_address] as String);
    } catch (e) {
      return null;
    }
  }

  String? get ipv6_address {
    try {
      return (rawData[ipv6_address] as String);
    } catch (e) {
      return null;
    }
  }

  int? get port {
    try {
      return (rawData[port] as int);
    } catch (e) {
      return null;
    }
  }

  CallServerType? get type {
    try {
      return (rawData[type] as CallServerType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallId {
  late Map rawData;
  CallId(this.rawData);

  factory CallId.create({
    String special_type = "callId",
    int? id,
  }) {
    try {
      return CallId({
        "@type": special_type,
        "id": id,
      });
    } catch (e) {
      return CallId({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallId.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallId {
  late Map rawData;
  GroupCallId(this.rawData);

  factory GroupCallId.create({
    String special_type = "groupCallId",
    int? id,
  }) {
    try {
      return GroupCallId({
        "@type": special_type,
        "id": id,
      });
    } catch (e) {
      return GroupCallId({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallId.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallState {
  late Map rawData;
  CallState(this.rawData);

  factory CallState.create({
    String special_type = "callStatePending",
    bool? is_created,
    bool? is_received,
    CallProtocol? protocol,
    List<CallServer>? servers,
    String? config,
    String? encryption_key,
    List<String>? emojis,
    bool? allow_p2p,
    CallDiscardReason? reason,
    bool? need_rating,
    bool? need_debug_information,
    bool? need_log,
    Error? error,
  }) {
    try {
      return CallState({
        "@type": special_type,
        "is_created": is_created,
        "is_received": is_received,
        "protocol": (protocol != null) ? protocol.toJson() : null,
        "servers": (servers != null)
            ? servers.map((e) {
                return CallServer((e as Map)).toJson();
              }).toList()
            : null,
        "config": config,
        "encryption_key": encryption_key,
        "emojis": emojis,
        "allow_p2p": allow_p2p,
        "reason": (reason != null) ? reason.toJson() : null,
        "need_rating": need_rating,
        "need_debug_information": need_debug_information,
        "need_log": need_log,
        "error": (error != null) ? error.toJson() : null,
      });
    } catch (e) {
      return CallState({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_created {
    try {
      return (rawData[is_created] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_received {
    try {
      return (rawData[is_received] as bool);
    } catch (e) {
      return null;
    }
  }

  CallProtocol? get protocol {
    try {
      return (rawData[protocol] as CallProtocol);
    } catch (e) {
      return null;
    }
  }

  List<CallServer> get servers {
    try {
      return (rawData[servers] as List<CallServer>);
    } catch (e) {
      return [];
    }
  }

  String? get config {
    try {
      return (rawData[config] as String);
    } catch (e) {
      return null;
    }
  }

  String? get encryption_key {
    try {
      return (rawData[encryption_key] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get emojis {
    try {
      return (rawData[emojis] as List<String>);
    } catch (e) {
      return [];
    }
  }

  bool? get allow_p2p {
    try {
      return (rawData[allow_p2p] as bool);
    } catch (e) {
      return null;
    }
  }

  CallDiscardReason? get reason {
    try {
      return (rawData[reason] as CallDiscardReason);
    } catch (e) {
      return null;
    }
  }

  bool? get need_rating {
    try {
      return (rawData[need_rating] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_debug_information {
    try {
      return (rawData[need_debug_information] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_log {
    try {
      return (rawData[need_log] as bool);
    } catch (e) {
      return null;
    }
  }

  Error? get error {
    try {
      return (rawData[error] as Error);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallVideoQuality {
  late Map rawData;
  GroupCallVideoQuality(this.rawData);

  factory GroupCallVideoQuality.create({
    String special_type = "groupCallVideoQualityThumbnail",
  }) {
    try {
      return GroupCallVideoQuality({
        "@type": special_type,
      });
    } catch (e) {
      return GroupCallVideoQuality({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallVideoQuality.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallStream {
  late Map rawData;
  GroupCallStream(this.rawData);

  factory GroupCallStream.create({
    String special_type = "groupCallStream",
    int? channel_id,
    int? scale,
    int? time_offset,
  }) {
    try {
      return GroupCallStream({
        "@type": special_type,
        "channel_id": channel_id,
        "scale": scale,
        "time_offset": time_offset,
      });
    } catch (e) {
      return GroupCallStream({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallStream.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get channel_id {
    try {
      return (rawData[channel_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get scale {
    try {
      return (rawData[scale] as int);
    } catch (e) {
      return null;
    }
  }

  int? get time_offset {
    try {
      return (rawData[time_offset] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallStreams {
  late Map rawData;
  GroupCallStreams(this.rawData);

  factory GroupCallStreams.create({
    String special_type = "groupCallStreams",
    List<GroupCallStream>? streams,
  }) {
    try {
      return GroupCallStreams({
        "@type": special_type,
        "streams": (streams != null)
            ? streams.map((e) {
                return GroupCallStream((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return GroupCallStreams({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallStreams.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<GroupCallStream> get streams {
    try {
      return (rawData[streams] as List<GroupCallStream>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class RtmpUrl {
  late Map rawData;
  RtmpUrl(this.rawData);

  factory RtmpUrl.create({
    String special_type = "rtmpUrl",
    String? url,
    String? stream_key,
  }) {
    try {
      return RtmpUrl({
        "@type": special_type,
        "url": url,
        "stream_key": stream_key,
      });
    } catch (e) {
      return RtmpUrl({
        "@type": "error",
        "error": "${e}",
        "message": "error method RtmpUrl.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get stream_key {
    try {
      return (rawData[stream_key] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallRecentSpeaker {
  late Map rawData;
  GroupCallRecentSpeaker(this.rawData);

  factory GroupCallRecentSpeaker.create({
    String special_type = "groupCallRecentSpeaker",
    MessageSender? participant_id,
    bool? is_speaking,
  }) {
    try {
      return GroupCallRecentSpeaker({
        "@type": special_type,
        "participant_id": (participant_id != null) ? participant_id.toJson() : null,
        "is_speaking": is_speaking,
      });
    } catch (e) {
      return GroupCallRecentSpeaker({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallRecentSpeaker.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get participant_id {
    try {
      return (rawData[participant_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  bool? get is_speaking {
    try {
      return (rawData[is_speaking] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCall {
  late Map rawData;
  GroupCall(this.rawData);

  factory GroupCall.create({
    String special_type = "groupCall",
    int? id,
    String? title,
    int? scheduled_start_date,
    bool? enabled_start_notification,
    bool? is_active,
    bool? is_rtmp_stream,
    bool? is_joined,
    bool? need_rejoin,
    bool? can_be_managed,
    int? participant_count,
    bool? has_hidden_listeners,
    bool? loaded_all_participants,
    List<GroupCallRecentSpeaker>? recent_speakers,
    bool? is_my_video_enabled,
    bool? is_my_video_paused,
    bool? can_enable_video,
    bool? mute_new_participants,
    bool? can_toggle_mute_new_participants,
    int? record_duration,
    bool? is_video_recorded,
    int? duration,
  }) {
    try {
      return GroupCall({
        "@type": special_type,
        "id": id,
        "title": title,
        "scheduled_start_date": scheduled_start_date,
        "enabled_start_notification": enabled_start_notification,
        "is_active": is_active,
        "is_rtmp_stream": is_rtmp_stream,
        "is_joined": is_joined,
        "need_rejoin": need_rejoin,
        "can_be_managed": can_be_managed,
        "participant_count": participant_count,
        "has_hidden_listeners": has_hidden_listeners,
        "loaded_all_participants": loaded_all_participants,
        "recent_speakers": (recent_speakers != null)
            ? recent_speakers.map((e) {
                return GroupCallRecentSpeaker((e as Map)).toJson();
              }).toList()
            : null,
        "is_my_video_enabled": is_my_video_enabled,
        "is_my_video_paused": is_my_video_paused,
        "can_enable_video": can_enable_video,
        "mute_new_participants": mute_new_participants,
        "can_toggle_mute_new_participants": can_toggle_mute_new_participants,
        "record_duration": record_duration,
        "is_video_recorded": is_video_recorded,
        "duration": duration,
      });
    } catch (e) {
      return GroupCall({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCall.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  int? get scheduled_start_date {
    try {
      return (rawData[scheduled_start_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get enabled_start_notification {
    try {
      return (rawData[enabled_start_notification] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_active {
    try {
      return (rawData[is_active] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_rtmp_stream {
    try {
      return (rawData[is_rtmp_stream] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_joined {
    try {
      return (rawData[is_joined] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get need_rejoin {
    try {
      return (rawData[need_rejoin] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_managed {
    try {
      return (rawData[can_be_managed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get participant_count {
    try {
      return (rawData[participant_count] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get has_hidden_listeners {
    try {
      return (rawData[has_hidden_listeners] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get loaded_all_participants {
    try {
      return (rawData[loaded_all_participants] as bool);
    } catch (e) {
      return null;
    }
  }

  List<GroupCallRecentSpeaker> get recent_speakers {
    try {
      return (rawData[recent_speakers] as List<GroupCallRecentSpeaker>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_my_video_enabled {
    try {
      return (rawData[is_my_video_enabled] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_my_video_paused {
    try {
      return (rawData[is_my_video_paused] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_enable_video {
    try {
      return (rawData[can_enable_video] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get mute_new_participants {
    try {
      return (rawData[mute_new_participants] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_toggle_mute_new_participants {
    try {
      return (rawData[can_toggle_mute_new_participants] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get record_duration {
    try {
      return (rawData[record_duration] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_video_recorded {
    try {
      return (rawData[is_video_recorded] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallVideoSourceGroup {
  late Map rawData;
  GroupCallVideoSourceGroup(this.rawData);

  factory GroupCallVideoSourceGroup.create({
    String special_type = "groupCallVideoSourceGroup",
    String? semantics,
    List<int>? source_ids,
  }) {
    try {
      return GroupCallVideoSourceGroup({
        "@type": special_type,
        "semantics": semantics,
        "source_ids": source_ids,
      });
    } catch (e) {
      return GroupCallVideoSourceGroup({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallVideoSourceGroup.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get semantics {
    try {
      return (rawData[semantics] as String);
    } catch (e) {
      return null;
    }
  }

  List<int> get source_ids {
    try {
      return (rawData[source_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallParticipantVideoInfo {
  late Map rawData;
  GroupCallParticipantVideoInfo(this.rawData);

  factory GroupCallParticipantVideoInfo.create({
    String special_type = "groupCallParticipantVideoInfo",
    List<GroupCallVideoSourceGroup>? source_groups,
    String? endpoint_id,
    bool? is_paused,
  }) {
    try {
      return GroupCallParticipantVideoInfo({
        "@type": special_type,
        "source_groups": (source_groups != null)
            ? source_groups.map((e) {
                return GroupCallVideoSourceGroup((e as Map)).toJson();
              }).toList()
            : null,
        "endpoint_id": endpoint_id,
        "is_paused": is_paused,
      });
    } catch (e) {
      return GroupCallParticipantVideoInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallParticipantVideoInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<GroupCallVideoSourceGroup> get source_groups {
    try {
      return (rawData[source_groups] as List<GroupCallVideoSourceGroup>);
    } catch (e) {
      return [];
    }
  }

  String? get endpoint_id {
    try {
      return (rawData[endpoint_id] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_paused {
    try {
      return (rawData[is_paused] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GroupCallParticipant {
  late Map rawData;
  GroupCallParticipant(this.rawData);

  factory GroupCallParticipant.create({
    String special_type = "groupCallParticipant",
    MessageSender? participant_id,
    int? audio_source_id,
    int? screen_sharing_audio_source_id,
    GroupCallParticipantVideoInfo? video_info,
    GroupCallParticipantVideoInfo? screen_sharing_video_info,
    String? bio,
    bool? is_current_user,
    bool? is_speaking,
    bool? is_hand_raised,
    bool? can_be_muted_for_all_users,
    bool? can_be_unmuted_for_all_users,
    bool? can_be_muted_for_current_user,
    bool? can_be_unmuted_for_current_user,
    bool? is_muted_for_all_users,
    bool? is_muted_for_current_user,
    bool? can_unmute_self,
    int? volume_level,
    String? order,
  }) {
    try {
      return GroupCallParticipant({
        "@type": special_type,
        "participant_id": (participant_id != null) ? participant_id.toJson() : null,
        "audio_source_id": audio_source_id,
        "screen_sharing_audio_source_id": screen_sharing_audio_source_id,
        "video_info": (video_info != null) ? video_info.toJson() : null,
        "screen_sharing_video_info": (screen_sharing_video_info != null) ? screen_sharing_video_info.toJson() : null,
        "bio": bio,
        "is_current_user": is_current_user,
        "is_speaking": is_speaking,
        "is_hand_raised": is_hand_raised,
        "can_be_muted_for_all_users": can_be_muted_for_all_users,
        "can_be_unmuted_for_all_users": can_be_unmuted_for_all_users,
        "can_be_muted_for_current_user": can_be_muted_for_current_user,
        "can_be_unmuted_for_current_user": can_be_unmuted_for_current_user,
        "is_muted_for_all_users": is_muted_for_all_users,
        "is_muted_for_current_user": is_muted_for_current_user,
        "can_unmute_self": can_unmute_self,
        "volume_level": volume_level,
        "order": order,
      });
    } catch (e) {
      return GroupCallParticipant({
        "@type": "error",
        "error": "${e}",
        "message": "error method GroupCallParticipant.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get participant_id {
    try {
      return (rawData[participant_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  int? get audio_source_id {
    try {
      return (rawData[audio_source_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get screen_sharing_audio_source_id {
    try {
      return (rawData[screen_sharing_audio_source_id] as int);
    } catch (e) {
      return null;
    }
  }

  GroupCallParticipantVideoInfo? get video_info {
    try {
      return (rawData[video_info] as GroupCallParticipantVideoInfo);
    } catch (e) {
      return null;
    }
  }

  GroupCallParticipantVideoInfo? get screen_sharing_video_info {
    try {
      return (rawData[screen_sharing_video_info] as GroupCallParticipantVideoInfo);
    } catch (e) {
      return null;
    }
  }

  String? get bio {
    try {
      return (rawData[bio] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_current_user {
    try {
      return (rawData[is_current_user] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_speaking {
    try {
      return (rawData[is_speaking] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_hand_raised {
    try {
      return (rawData[is_hand_raised] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_muted_for_all_users {
    try {
      return (rawData[can_be_muted_for_all_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_unmuted_for_all_users {
    try {
      return (rawData[can_be_unmuted_for_all_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_muted_for_current_user {
    try {
      return (rawData[can_be_muted_for_current_user] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_be_unmuted_for_current_user {
    try {
      return (rawData[can_be_unmuted_for_current_user] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_muted_for_all_users {
    try {
      return (rawData[is_muted_for_all_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_muted_for_current_user {
    try {
      return (rawData[is_muted_for_current_user] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_unmute_self {
    try {
      return (rawData[can_unmute_self] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get volume_level {
    try {
      return (rawData[volume_level] as int);
    } catch (e) {
      return null;
    }
  }

  String? get order {
    try {
      return (rawData[order] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallProblem {
  late Map rawData;
  CallProblem(this.rawData);

  factory CallProblem.create({
    String special_type = "callProblemEcho",
  }) {
    try {
      return CallProblem({
        "@type": special_type,
      });
    } catch (e) {
      return CallProblem({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallProblem.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Call {
  late Map rawData;
  Call(this.rawData);

  factory Call.create({
    String special_type = "call",
    int? id,
    int? user_id,
    bool? is_outgoing,
    bool? is_video,
    CallState? state,
  }) {
    try {
      return Call({
        "@type": special_type,
        "id": id,
        "user_id": user_id,
        "is_outgoing": is_outgoing,
        "is_video": is_video,
        "state": (state != null) ? state.toJson() : null,
      });
    } catch (e) {
      return Call({
        "@type": "error",
        "error": "${e}",
        "message": "error method Call.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_outgoing {
    try {
      return (rawData[is_outgoing] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_video {
    try {
      return (rawData[is_video] as bool);
    } catch (e) {
      return null;
    }
  }

  CallState? get state {
    try {
      return (rawData[state] as CallState);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PhoneNumberAuthenticationSettings {
  late Map rawData;
  PhoneNumberAuthenticationSettings(this.rawData);

  factory PhoneNumberAuthenticationSettings.create({
    String special_type = "phoneNumberAuthenticationSettings",
    bool? allow_flash_call,
    bool? allow_missed_call,
    bool? is_current_phone_number,
    bool? allow_sms_retriever_api,
    List<String>? authentication_tokens,
  }) {
    try {
      return PhoneNumberAuthenticationSettings({
        "@type": special_type,
        "allow_flash_call": allow_flash_call,
        "allow_missed_call": allow_missed_call,
        "is_current_phone_number": is_current_phone_number,
        "allow_sms_retriever_api": allow_sms_retriever_api,
        "authentication_tokens": authentication_tokens,
      });
    } catch (e) {
      return PhoneNumberAuthenticationSettings({
        "@type": "error",
        "error": "${e}",
        "message": "error method PhoneNumberAuthenticationSettings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_flash_call {
    try {
      return (rawData[allow_flash_call] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_missed_call {
    try {
      return (rawData[allow_missed_call] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_current_phone_number {
    try {
      return (rawData[is_current_phone_number] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_sms_retriever_api {
    try {
      return (rawData[allow_sms_retriever_api] as bool);
    } catch (e) {
      return null;
    }
  }

  List<String> get authentication_tokens {
    try {
      return (rawData[authentication_tokens] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AddedReaction {
  late Map rawData;
  AddedReaction(this.rawData);

  factory AddedReaction.create({
    String special_type = "addedReaction",
    ReactionType? type,
    MessageSender? sender_id,
  }) {
    try {
      return AddedReaction({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "sender_id": (sender_id != null) ? sender_id.toJson() : null,
      });
    } catch (e) {
      return AddedReaction({
        "@type": "error",
        "error": "${e}",
        "message": "error method AddedReaction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ReactionType? get type {
    try {
      return (rawData[type] as ReactionType);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender_id {
    try {
      return (rawData[sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AddedReactions {
  late Map rawData;
  AddedReactions(this.rawData);

  factory AddedReactions.create({
    String special_type = "addedReactions",
    int? total_count,
    List<AddedReaction>? reactions,
    String? next_offset,
  }) {
    try {
      return AddedReactions({
        "@type": special_type,
        "total_count": total_count,
        "reactions": (reactions != null)
            ? reactions.map((e) {
                return AddedReaction((e as Map)).toJson();
              }).toList()
            : null,
        "next_offset": next_offset,
      });
    } catch (e) {
      return AddedReactions({
        "@type": "error",
        "error": "${e}",
        "message": "error method AddedReactions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<AddedReaction> get reactions {
    try {
      return (rawData[reactions] as List<AddedReaction>);
    } catch (e) {
      return [];
    }
  }

  String? get next_offset {
    try {
      return (rawData[next_offset] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AvailableReaction {
  late Map rawData;
  AvailableReaction(this.rawData);

  factory AvailableReaction.create({
    String special_type = "availableReaction",
    ReactionType? type,
    bool? needs_premium,
  }) {
    try {
      return AvailableReaction({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "needs_premium": needs_premium,
      });
    } catch (e) {
      return AvailableReaction({
        "@type": "error",
        "error": "${e}",
        "message": "error method AvailableReaction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  ReactionType? get type {
    try {
      return (rawData[type] as ReactionType);
    } catch (e) {
      return null;
    }
  }

  bool? get needs_premium {
    try {
      return (rawData[needs_premium] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AvailableReactions {
  late Map rawData;
  AvailableReactions(this.rawData);

  factory AvailableReactions.create({
    String special_type = "availableReactions",
    List<AvailableReaction>? top_reactions,
    List<AvailableReaction>? recent_reactions,
    List<AvailableReaction>? popular_reactions,
    bool? allow_custom_emoji,
  }) {
    try {
      return AvailableReactions({
        "@type": special_type,
        "top_reactions": (top_reactions != null)
            ? top_reactions.map((e) {
                return AvailableReaction((e as Map)).toJson();
              }).toList()
            : null,
        "recent_reactions": (recent_reactions != null)
            ? recent_reactions.map((e) {
                return AvailableReaction((e as Map)).toJson();
              }).toList()
            : null,
        "popular_reactions": (popular_reactions != null)
            ? popular_reactions.map((e) {
                return AvailableReaction((e as Map)).toJson();
              }).toList()
            : null,
        "allow_custom_emoji": allow_custom_emoji,
      });
    } catch (e) {
      return AvailableReactions({
        "@type": "error",
        "error": "${e}",
        "message": "error method AvailableReactions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<AvailableReaction> get top_reactions {
    try {
      return (rawData[top_reactions] as List<AvailableReaction>);
    } catch (e) {
      return [];
    }
  }

  List<AvailableReaction> get recent_reactions {
    try {
      return (rawData[recent_reactions] as List<AvailableReaction>);
    } catch (e) {
      return [];
    }
  }

  List<AvailableReaction> get popular_reactions {
    try {
      return (rawData[popular_reactions] as List<AvailableReaction>);
    } catch (e) {
      return [];
    }
  }

  bool? get allow_custom_emoji {
    try {
      return (rawData[allow_custom_emoji] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class EmojiReaction {
  late Map rawData;
  EmojiReaction(this.rawData);

  factory EmojiReaction.create({
    String special_type = "emojiReaction",
    String? emoji,
    String? title,
    bool? is_active,
    Sticker? static_icon,
    Sticker? appear_animation,
    Sticker? select_animation,
    Sticker? activate_animation,
    Sticker? effect_animation,
    Sticker? around_animation,
    Sticker? center_animation,
  }) {
    try {
      return EmojiReaction({
        "@type": special_type,
        "emoji": emoji,
        "title": title,
        "is_active": is_active,
        "static_icon": (static_icon != null) ? static_icon.toJson() : null,
        "appear_animation": (appear_animation != null) ? appear_animation.toJson() : null,
        "select_animation": (select_animation != null) ? select_animation.toJson() : null,
        "activate_animation": (activate_animation != null) ? activate_animation.toJson() : null,
        "effect_animation": (effect_animation != null) ? effect_animation.toJson() : null,
        "around_animation": (around_animation != null) ? around_animation.toJson() : null,
        "center_animation": (center_animation != null) ? center_animation.toJson() : null,
      });
    } catch (e) {
      return EmojiReaction({
        "@type": "error",
        "error": "${e}",
        "message": "error method EmojiReaction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_active {
    try {
      return (rawData[is_active] as bool);
    } catch (e) {
      return null;
    }
  }

  Sticker? get static_icon {
    try {
      return (rawData[static_icon] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get appear_animation {
    try {
      return (rawData[appear_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get select_animation {
    try {
      return (rawData[select_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get activate_animation {
    try {
      return (rawData[activate_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get effect_animation {
    try {
      return (rawData[effect_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get around_animation {
    try {
      return (rawData[around_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get center_animation {
    try {
      return (rawData[center_animation] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Animations {
  late Map rawData;
  Animations(this.rawData);

  factory Animations.create({
    String special_type = "animations",
    List<Animation>? animations,
  }) {
    try {
      return Animations({
        "@type": special_type,
        "animations": (animations != null)
            ? animations.map((e) {
                return Animation((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Animations({
        "@type": "error",
        "error": "${e}",
        "message": "error method Animations.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Animation> get animations {
    try {
      return (rawData[animations] as List<Animation>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DiceStickers {
  late Map rawData;
  DiceStickers(this.rawData);

  factory DiceStickers.create({
    String special_type = "diceStickersRegular",
    Sticker? sticker,
    Sticker? background,
    Sticker? lever,
    Sticker? left_reel,
    Sticker? center_reel,
    Sticker? right_reel,
  }) {
    try {
      return DiceStickers({
        "@type": special_type,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "background": (background != null) ? background.toJson() : null,
        "lever": (lever != null) ? lever.toJson() : null,
        "left_reel": (left_reel != null) ? left_reel.toJson() : null,
        "center_reel": (center_reel != null) ? center_reel.toJson() : null,
        "right_reel": (right_reel != null) ? right_reel.toJson() : null,
      });
    } catch (e) {
      return DiceStickers({
        "@type": "error",
        "error": "${e}",
        "message": "error method DiceStickers.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get background {
    try {
      return (rawData[background] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get lever {
    try {
      return (rawData[lever] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get left_reel {
    try {
      return (rawData[left_reel] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get center_reel {
    try {
      return (rawData[center_reel] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Sticker? get right_reel {
    try {
      return (rawData[right_reel] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ImportedContacts {
  late Map rawData;
  ImportedContacts(this.rawData);

  factory ImportedContacts.create({
    String special_type = "importedContacts",
    List<int>? user_ids,
    List<int>? importer_count,
  }) {
    try {
      return ImportedContacts({
        "@type": special_type,
        "user_ids": user_ids,
        "importer_count": importer_count,
      });
    } catch (e) {
      return ImportedContacts({
        "@type": "error",
        "error": "${e}",
        "message": "error method ImportedContacts.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<int> get user_ids {
    try {
      return (rawData[user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get importer_count {
    try {
      return (rawData[importer_count] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SpeechRecognitionResult {
  late Map rawData;
  SpeechRecognitionResult(this.rawData);

  factory SpeechRecognitionResult.create({
    String special_type = "speechRecognitionResultPending",
    String? partial_text,
    String? text,
    Error? error,
  }) {
    try {
      return SpeechRecognitionResult({
        "@type": special_type,
        "partial_text": partial_text,
        "text": text,
        "error": (error != null) ? error.toJson() : null,
      });
    } catch (e) {
      return SpeechRecognitionResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method SpeechRecognitionResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get partial_text {
    try {
      return (rawData[partial_text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  Error? get error {
    try {
      return (rawData[error] as Error);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AttachmentMenuBotColor {
  late Map rawData;
  AttachmentMenuBotColor(this.rawData);

  factory AttachmentMenuBotColor.create({
    String special_type = "attachmentMenuBotColor",
    int? light_color,
    int? dark_color,
  }) {
    try {
      return AttachmentMenuBotColor({
        "@type": special_type,
        "light_color": light_color,
        "dark_color": dark_color,
      });
    } catch (e) {
      return AttachmentMenuBotColor({
        "@type": "error",
        "error": "${e}",
        "message": "error method AttachmentMenuBotColor.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get light_color {
    try {
      return (rawData[light_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get dark_color {
    try {
      return (rawData[dark_color] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AttachmentMenuBot {
  late Map rawData;
  AttachmentMenuBot(this.rawData);

  factory AttachmentMenuBot.create({
    String special_type = "attachmentMenuBot",
    int? bot_user_id,
    bool? supports_self_chat,
    bool? supports_user_chats,
    bool? supports_bot_chats,
    bool? supports_group_chats,
    bool? supports_channel_chats,
    bool? supports_settings,
    String? name,
    AttachmentMenuBotColor? name_color,
    File? default_icon,
    File? ios_static_icon,
    File? ios_animated_icon,
    File? android_icon,
    File? macos_icon,
    AttachmentMenuBotColor? icon_color,
    File? web_app_placeholder,
  }) {
    try {
      return AttachmentMenuBot({
        "@type": special_type,
        "bot_user_id": bot_user_id,
        "supports_self_chat": supports_self_chat,
        "supports_user_chats": supports_user_chats,
        "supports_bot_chats": supports_bot_chats,
        "supports_group_chats": supports_group_chats,
        "supports_channel_chats": supports_channel_chats,
        "supports_settings": supports_settings,
        "name": name,
        "name_color": (name_color != null) ? name_color.toJson() : null,
        "default_icon": (default_icon != null) ? default_icon.toJson() : null,
        "ios_static_icon": (ios_static_icon != null) ? ios_static_icon.toJson() : null,
        "ios_animated_icon": (ios_animated_icon != null) ? ios_animated_icon.toJson() : null,
        "android_icon": (android_icon != null) ? android_icon.toJson() : null,
        "macos_icon": (macos_icon != null) ? macos_icon.toJson() : null,
        "icon_color": (icon_color != null) ? icon_color.toJson() : null,
        "web_app_placeholder": (web_app_placeholder != null) ? web_app_placeholder.toJson() : null,
      });
    } catch (e) {
      return AttachmentMenuBot({
        "@type": "error",
        "error": "${e}",
        "message": "error method AttachmentMenuBot.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_self_chat {
    try {
      return (rawData[supports_self_chat] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_user_chats {
    try {
      return (rawData[supports_user_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_bot_chats {
    try {
      return (rawData[supports_bot_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_group_chats {
    try {
      return (rawData[supports_group_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_channel_chats {
    try {
      return (rawData[supports_channel_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get supports_settings {
    try {
      return (rawData[supports_settings] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  AttachmentMenuBotColor? get name_color {
    try {
      return (rawData[name_color] as AttachmentMenuBotColor);
    } catch (e) {
      return null;
    }
  }

  File? get default_icon {
    try {
      return (rawData[default_icon] as File);
    } catch (e) {
      return null;
    }
  }

  File? get ios_static_icon {
    try {
      return (rawData[ios_static_icon] as File);
    } catch (e) {
      return null;
    }
  }

  File? get ios_animated_icon {
    try {
      return (rawData[ios_animated_icon] as File);
    } catch (e) {
      return null;
    }
  }

  File? get android_icon {
    try {
      return (rawData[android_icon] as File);
    } catch (e) {
      return null;
    }
  }

  File? get macos_icon {
    try {
      return (rawData[macos_icon] as File);
    } catch (e) {
      return null;
    }
  }

  AttachmentMenuBotColor? get icon_color {
    try {
      return (rawData[icon_color] as AttachmentMenuBotColor);
    } catch (e) {
      return null;
    }
  }

  File? get web_app_placeholder {
    try {
      return (rawData[web_app_placeholder] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SentWebAppMessage {
  late Map rawData;
  SentWebAppMessage(this.rawData);

  factory SentWebAppMessage.create({
    String special_type = "sentWebAppMessage",
    String? inline_message_id,
  }) {
    try {
      return SentWebAppMessage({
        "@type": special_type,
        "inline_message_id": inline_message_id,
      });
    } catch (e) {
      return SentWebAppMessage({
        "@type": "error",
        "error": "${e}",
        "message": "error method SentWebAppMessage.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get inline_message_id {
    try {
      return (rawData[inline_message_id] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class HttpUrl {
  late Map rawData;
  HttpUrl(this.rawData);

  factory HttpUrl.create({
    String special_type = "httpUrl",
    String? url,
  }) {
    try {
      return HttpUrl({
        "@type": special_type,
        "url": url,
      });
    } catch (e) {
      return HttpUrl({
        "@type": "error",
        "error": "${e}",
        "message": "error method HttpUrl.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputInlineQueryResult {
  late Map rawData;
  InputInlineQueryResult(this.rawData);

  factory InputInlineQueryResult.create({
    String special_type = "inputInlineQueryResultAnimation",
    String? id,
    String? title,
    String? thumbnail_url,
    String? thumbnail_mime_type,
    String? video_url,
    String? video_mime_type,
    int? video_duration,
    int? video_width,
    int? video_height,
    ReplyMarkup? reply_markup,
    InputMessageContent? input_message_content,
    String? url,
    bool? hide_url,
    String? description,
    int? thumbnail_width,
    int? thumbnail_height,
    String? performer,
    String? audio_url,
    int? audio_duration,
    Contact? contact,
    String? document_url,
    String? mime_type,
    String? game_short_name,
    Location? location,
    int? live_period,
    String? photo_url,
    int? photo_width,
    int? photo_height,
    String? sticker_url,
    int? sticker_width,
    int? sticker_height,
    Venue? venue,
    String? voice_note_url,
    int? voice_note_duration,
  }) {
    try {
      return InputInlineQueryResult({
        "@type": special_type,
        "id": id,
        "title": title,
        "thumbnail_url": thumbnail_url,
        "thumbnail_mime_type": thumbnail_mime_type,
        "video_url": video_url,
        "video_mime_type": video_mime_type,
        "video_duration": video_duration,
        "video_width": video_width,
        "video_height": video_height,
        "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
        "input_message_content": (input_message_content != null) ? input_message_content.toJson() : null,
        "url": url,
        "hide_url": hide_url,
        "description": description,
        "thumbnail_width": thumbnail_width,
        "thumbnail_height": thumbnail_height,
        "performer": performer,
        "audio_url": audio_url,
        "audio_duration": audio_duration,
        "contact": (contact != null) ? contact.toJson() : null,
        "document_url": document_url,
        "mime_type": mime_type,
        "game_short_name": game_short_name,
        "location": (location != null) ? location.toJson() : null,
        "live_period": live_period,
        "photo_url": photo_url,
        "photo_width": photo_width,
        "photo_height": photo_height,
        "sticker_url": sticker_url,
        "sticker_width": sticker_width,
        "sticker_height": sticker_height,
        "venue": (venue != null) ? venue.toJson() : null,
        "voice_note_url": voice_note_url,
        "voice_note_duration": voice_note_duration,
      });
    } catch (e) {
      return InputInlineQueryResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputInlineQueryResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get thumbnail_url {
    try {
      return (rawData[thumbnail_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get thumbnail_mime_type {
    try {
      return (rawData[thumbnail_mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get video_url {
    try {
      return (rawData[video_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get video_mime_type {
    try {
      return (rawData[video_mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get video_duration {
    try {
      return (rawData[video_duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get video_width {
    try {
      return (rawData[video_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get video_height {
    try {
      return (rawData[video_height] as int);
    } catch (e) {
      return null;
    }
  }

  ReplyMarkup? get reply_markup {
    try {
      return (rawData[reply_markup] as ReplyMarkup);
    } catch (e) {
      return null;
    }
  }

  InputMessageContent? get input_message_content {
    try {
      return (rawData[input_message_content] as InputMessageContent);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get hide_url {
    try {
      return (rawData[hide_url] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  int? get thumbnail_width {
    try {
      return (rawData[thumbnail_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get thumbnail_height {
    try {
      return (rawData[thumbnail_height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get performer {
    try {
      return (rawData[performer] as String);
    } catch (e) {
      return null;
    }
  }

  String? get audio_url {
    try {
      return (rawData[audio_url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get audio_duration {
    try {
      return (rawData[audio_duration] as int);
    } catch (e) {
      return null;
    }
  }

  Contact? get contact {
    try {
      return (rawData[contact] as Contact);
    } catch (e) {
      return null;
    }
  }

  String? get document_url {
    try {
      return (rawData[document_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get mime_type {
    try {
      return (rawData[mime_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get game_short_name {
    try {
      return (rawData[game_short_name] as String);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  int? get live_period {
    try {
      return (rawData[live_period] as int);
    } catch (e) {
      return null;
    }
  }

  String? get photo_url {
    try {
      return (rawData[photo_url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get photo_width {
    try {
      return (rawData[photo_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get photo_height {
    try {
      return (rawData[photo_height] as int);
    } catch (e) {
      return null;
    }
  }

  String? get sticker_url {
    try {
      return (rawData[sticker_url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_width {
    try {
      return (rawData[sticker_width] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_height {
    try {
      return (rawData[sticker_height] as int);
    } catch (e) {
      return null;
    }
  }

  Venue? get venue {
    try {
      return (rawData[venue] as Venue);
    } catch (e) {
      return null;
    }
  }

  String? get voice_note_url {
    try {
      return (rawData[voice_note_url] as String);
    } catch (e) {
      return null;
    }
  }

  int? get voice_note_duration {
    try {
      return (rawData[voice_note_duration] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InlineQueryResult {
  late Map rawData;
  InlineQueryResult(this.rawData);

  factory InlineQueryResult.create({
    String special_type = "inlineQueryResultArticle",
    String? id,
    String? url,
    bool? hide_url,
    String? title,
    String? description,
    Thumbnail? thumbnail,
    Contact? contact,
    Location? location,
    Venue? venue,
    Game? game,
    Animation? animation,
    Audio? audio,
    Document? document,
    Photo? photo,
    Sticker? sticker,
    Video? video,
    VoiceNote? voice_note,
  }) {
    try {
      return InlineQueryResult({
        "@type": special_type,
        "id": id,
        "url": url,
        "hide_url": hide_url,
        "title": title,
        "description": description,
        "thumbnail": (thumbnail != null) ? thumbnail.toJson() : null,
        "contact": (contact != null) ? contact.toJson() : null,
        "location": (location != null) ? location.toJson() : null,
        "venue": (venue != null) ? venue.toJson() : null,
        "game": (game != null) ? game.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
        "audio": (audio != null) ? audio.toJson() : null,
        "document": (document != null) ? document.toJson() : null,
        "photo": (photo != null) ? photo.toJson() : null,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "video": (video != null) ? video.toJson() : null,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
      });
    } catch (e) {
      return InlineQueryResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method InlineQueryResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get hide_url {
    try {
      return (rawData[hide_url] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get description {
    try {
      return (rawData[description] as String);
    } catch (e) {
      return null;
    }
  }

  Thumbnail? get thumbnail {
    try {
      return (rawData[thumbnail] as Thumbnail);
    } catch (e) {
      return null;
    }
  }

  Contact? get contact {
    try {
      return (rawData[contact] as Contact);
    } catch (e) {
      return null;
    }
  }

  Location? get location {
    try {
      return (rawData[location] as Location);
    } catch (e) {
      return null;
    }
  }

  Venue? get venue {
    try {
      return (rawData[venue] as Venue);
    } catch (e) {
      return null;
    }
  }

  Game? get game {
    try {
      return (rawData[game] as Game);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  Audio? get audio {
    try {
      return (rawData[audio] as Audio);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  VoiceNote? get voice_note {
    try {
      return (rawData[voice_note] as VoiceNote);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InlineQueryResults {
  late Map rawData;
  InlineQueryResults(this.rawData);

  factory InlineQueryResults.create({
    String special_type = "inlineQueryResults",
    int? inline_query_id,
    String? next_offset,
    List<InlineQueryResult>? results,
    String? switch_pm_text,
    String? switch_pm_parameter,
  }) {
    try {
      return InlineQueryResults({
        "@type": special_type,
        "inline_query_id": inline_query_id,
        "next_offset": next_offset,
        "results": (results != null)
            ? results.map((e) {
                return InlineQueryResult((e as Map)).toJson();
              }).toList()
            : null,
        "switch_pm_text": switch_pm_text,
        "switch_pm_parameter": switch_pm_parameter,
      });
    } catch (e) {
      return InlineQueryResults({
        "@type": "error",
        "error": "${e}",
        "message": "error method InlineQueryResults.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get inline_query_id {
    try {
      return (rawData[inline_query_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get next_offset {
    try {
      return (rawData[next_offset] as String);
    } catch (e) {
      return null;
    }
  }

  List<InlineQueryResult> get results {
    try {
      return (rawData[results] as List<InlineQueryResult>);
    } catch (e) {
      return [];
    }
  }

  String? get switch_pm_text {
    try {
      return (rawData[switch_pm_text] as String);
    } catch (e) {
      return null;
    }
  }

  String? get switch_pm_parameter {
    try {
      return (rawData[switch_pm_parameter] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallbackQueryPayload {
  late Map rawData;
  CallbackQueryPayload(this.rawData);

  factory CallbackQueryPayload.create({
    String special_type = "callbackQueryPayloadData",
    String? data,
    String? password,
    String? game_short_name,
  }) {
    try {
      return CallbackQueryPayload({
        "@type": special_type,
        "data": data,
        "password": password,
        "game_short_name": game_short_name,
      });
    } catch (e) {
      return CallbackQueryPayload({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallbackQueryPayload.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  String? get password {
    try {
      return (rawData[password] as String);
    } catch (e) {
      return null;
    }
  }

  String? get game_short_name {
    try {
      return (rawData[game_short_name] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CallbackQueryAnswer {
  late Map rawData;
  CallbackQueryAnswer(this.rawData);

  factory CallbackQueryAnswer.create({
    String special_type = "callbackQueryAnswer",
    String? text,
    bool? show_alert,
    String? url,
  }) {
    try {
      return CallbackQueryAnswer({
        "@type": special_type,
        "text": text,
        "show_alert": show_alert,
        "url": url,
      });
    } catch (e) {
      return CallbackQueryAnswer({
        "@type": "error",
        "error": "${e}",
        "message": "error method CallbackQueryAnswer.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get show_alert {
    try {
      return (rawData[show_alert] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CustomRequestResult {
  late Map rawData;
  CustomRequestResult(this.rawData);

  factory CustomRequestResult.create({
    String special_type = "customRequestResult",
    String? result,
  }) {
    try {
      return CustomRequestResult({
        "@type": special_type,
        "result": result,
      });
    } catch (e) {
      return CustomRequestResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method CustomRequestResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get result {
    try {
      return (rawData[result] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GameHighScore {
  late Map rawData;
  GameHighScore(this.rawData);

  factory GameHighScore.create({
    String special_type = "gameHighScore",
    int? position,
    int? user_id,
    int? score,
  }) {
    try {
      return GameHighScore({
        "@type": special_type,
        "position": position,
        "user_id": user_id,
        "score": score,
      });
    } catch (e) {
      return GameHighScore({
        "@type": "error",
        "error": "${e}",
        "message": "error method GameHighScore.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get position {
    try {
      return (rawData[position] as int);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get score {
    try {
      return (rawData[score] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class GameHighScores {
  late Map rawData;
  GameHighScores(this.rawData);

  factory GameHighScores.create({
    String special_type = "gameHighScores",
    List<GameHighScore>? scores,
  }) {
    try {
      return GameHighScores({
        "@type": special_type,
        "scores": (scores != null)
            ? scores.map((e) {
                return GameHighScore((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return GameHighScores({
        "@type": "error",
        "error": "${e}",
        "message": "error method GameHighScores.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<GameHighScore> get scores {
    try {
      return (rawData[scores] as List<GameHighScore>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatEventAction {
  late Map rawData;
  ChatEventAction(this.rawData);

  factory ChatEventAction.create({
    String special_type = "chatEventMessageEdited",
    Message? old_message,
    Message? new_message,
    Message? message,
    ChatInviteLink? invite_link,
    int? approver_user_id,
    int? user_id,
    ChatMemberStatus? status,
    ChatMemberStatus? old_status,
    ChatMemberStatus? new_status,
    MessageSender? member_id,
    ChatAvailableReactions? old_available_reactions,
    ChatAvailableReactions? new_available_reactions,
    String? old_description,
    String? new_description,
    int? old_linked_chat_id,
    int? new_linked_chat_id,
    ChatLocation? old_location,
    ChatLocation? new_location,
    int? old_message_ttl,
    int? new_message_ttl,
    ChatPermissions? old_permissions,
    ChatPermissions? new_permissions,
    ChatPhoto? old_photo,
    ChatPhoto? new_photo,
    int? old_slow_mode_delay,
    int? new_slow_mode_delay,
    int? old_sticker_set_id,
    int? new_sticker_set_id,
    String? old_title,
    String? new_title,
    String? old_username,
    String? new_username,
    bool? has_protected_content,
    bool? can_invite_users,
    bool? is_all_history_available,
    bool? sign_messages,
    ChatInviteLink? old_invite_link,
    ChatInviteLink? new_invite_link,
    int? group_call_id,
    bool? mute_new_participants,
    MessageSender? participant_id,
    bool? is_muted,
    int? volume_level,
  }) {
    try {
      return ChatEventAction({
        "@type": special_type,
        "old_message": (old_message != null) ? old_message.toJson() : null,
        "new_message": (new_message != null) ? new_message.toJson() : null,
        "message": (message != null) ? message.toJson() : null,
        "invite_link": (invite_link != null) ? invite_link.toJson() : null,
        "approver_user_id": approver_user_id,
        "user_id": user_id,
        "status": (status != null) ? status.toJson() : null,
        "old_status": (old_status != null) ? old_status.toJson() : null,
        "new_status": (new_status != null) ? new_status.toJson() : null,
        "member_id": (member_id != null) ? member_id.toJson() : null,
        "old_available_reactions": (old_available_reactions != null) ? old_available_reactions.toJson() : null,
        "new_available_reactions": (new_available_reactions != null) ? new_available_reactions.toJson() : null,
        "old_description": old_description,
        "new_description": new_description,
        "old_linked_chat_id": old_linked_chat_id,
        "new_linked_chat_id": new_linked_chat_id,
        "old_location": (old_location != null) ? old_location.toJson() : null,
        "new_location": (new_location != null) ? new_location.toJson() : null,
        "old_message_ttl": old_message_ttl,
        "new_message_ttl": new_message_ttl,
        "old_permissions": (old_permissions != null) ? old_permissions.toJson() : null,
        "new_permissions": (new_permissions != null) ? new_permissions.toJson() : null,
        "old_photo": (old_photo != null) ? old_photo.toJson() : null,
        "new_photo": (new_photo != null) ? new_photo.toJson() : null,
        "old_slow_mode_delay": old_slow_mode_delay,
        "new_slow_mode_delay": new_slow_mode_delay,
        "old_sticker_set_id": old_sticker_set_id,
        "new_sticker_set_id": new_sticker_set_id,
        "old_title": old_title,
        "new_title": new_title,
        "old_username": old_username,
        "new_username": new_username,
        "has_protected_content": has_protected_content,
        "can_invite_users": can_invite_users,
        "is_all_history_available": is_all_history_available,
        "sign_messages": sign_messages,
        "old_invite_link": (old_invite_link != null) ? old_invite_link.toJson() : null,
        "new_invite_link": (new_invite_link != null) ? new_invite_link.toJson() : null,
        "group_call_id": group_call_id,
        "mute_new_participants": mute_new_participants,
        "participant_id": (participant_id != null) ? participant_id.toJson() : null,
        "is_muted": is_muted,
        "volume_level": volume_level,
      });
    } catch (e) {
      return ChatEventAction({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatEventAction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Message? get old_message {
    try {
      return (rawData[old_message] as Message);
    } catch (e) {
      return null;
    }
  }

  Message? get new_message {
    try {
      return (rawData[new_message] as Message);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLink? get invite_link {
    try {
      return (rawData[invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  int? get approver_user_id {
    try {
      return (rawData[approver_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get status {
    try {
      return (rawData[status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get old_status {
    try {
      return (rawData[old_status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  ChatMemberStatus? get new_status {
    try {
      return (rawData[new_status] as ChatMemberStatus);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get member_id {
    try {
      return (rawData[member_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  ChatAvailableReactions? get old_available_reactions {
    try {
      return (rawData[old_available_reactions] as ChatAvailableReactions);
    } catch (e) {
      return null;
    }
  }

  ChatAvailableReactions? get new_available_reactions {
    try {
      return (rawData[new_available_reactions] as ChatAvailableReactions);
    } catch (e) {
      return null;
    }
  }

  String? get old_description {
    try {
      return (rawData[old_description] as String);
    } catch (e) {
      return null;
    }
  }

  String? get new_description {
    try {
      return (rawData[new_description] as String);
    } catch (e) {
      return null;
    }
  }

  int? get old_linked_chat_id {
    try {
      return (rawData[old_linked_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get new_linked_chat_id {
    try {
      return (rawData[new_linked_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatLocation? get old_location {
    try {
      return (rawData[old_location] as ChatLocation);
    } catch (e) {
      return null;
    }
  }

  ChatLocation? get new_location {
    try {
      return (rawData[new_location] as ChatLocation);
    } catch (e) {
      return null;
    }
  }

  int? get old_message_ttl {
    try {
      return (rawData[old_message_ttl] as int);
    } catch (e) {
      return null;
    }
  }

  int? get new_message_ttl {
    try {
      return (rawData[new_message_ttl] as int);
    } catch (e) {
      return null;
    }
  }

  ChatPermissions? get old_permissions {
    try {
      return (rawData[old_permissions] as ChatPermissions);
    } catch (e) {
      return null;
    }
  }

  ChatPermissions? get new_permissions {
    try {
      return (rawData[new_permissions] as ChatPermissions);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get old_photo {
    try {
      return (rawData[old_photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  ChatPhoto? get new_photo {
    try {
      return (rawData[new_photo] as ChatPhoto);
    } catch (e) {
      return null;
    }
  }

  int? get old_slow_mode_delay {
    try {
      return (rawData[old_slow_mode_delay] as int);
    } catch (e) {
      return null;
    }
  }

  int? get new_slow_mode_delay {
    try {
      return (rawData[new_slow_mode_delay] as int);
    } catch (e) {
      return null;
    }
  }

  int? get old_sticker_set_id {
    try {
      return (rawData[old_sticker_set_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get new_sticker_set_id {
    try {
      return (rawData[new_sticker_set_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get old_title {
    try {
      return (rawData[old_title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get new_title {
    try {
      return (rawData[new_title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get old_username {
    try {
      return (rawData[old_username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get new_username {
    try {
      return (rawData[new_username] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get has_protected_content {
    try {
      return (rawData[has_protected_content] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_invite_users {
    try {
      return (rawData[can_invite_users] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_all_history_available {
    try {
      return (rawData[is_all_history_available] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get sign_messages {
    try {
      return (rawData[sign_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLink? get old_invite_link {
    try {
      return (rawData[old_invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLink? get new_invite_link {
    try {
      return (rawData[new_invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  int? get group_call_id {
    try {
      return (rawData[group_call_id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get mute_new_participants {
    try {
      return (rawData[mute_new_participants] as bool);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get participant_id {
    try {
      return (rawData[participant_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  bool? get is_muted {
    try {
      return (rawData[is_muted] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get volume_level {
    try {
      return (rawData[volume_level] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatEvent {
  late Map rawData;
  ChatEvent(this.rawData);

  factory ChatEvent.create({
    String special_type = "chatEvent",
    int? id,
    int? date,
    MessageSender? member_id,
    ChatEventAction? action,
  }) {
    try {
      return ChatEvent({
        "@type": special_type,
        "id": id,
        "date": date,
        "member_id": (member_id != null) ? member_id.toJson() : null,
        "action": (action != null) ? action.toJson() : null,
      });
    } catch (e) {
      return ChatEvent({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatEvent.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get member_id {
    try {
      return (rawData[member_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  ChatEventAction? get action {
    try {
      return (rawData[action] as ChatEventAction);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatEvents {
  late Map rawData;
  ChatEvents(this.rawData);

  factory ChatEvents.create({
    String special_type = "chatEvents",
    List<ChatEvent>? events,
  }) {
    try {
      return ChatEvents({
        "@type": special_type,
        "events": (events != null)
            ? events.map((e) {
                return ChatEvent((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatEvents({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatEvents.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ChatEvent> get events {
    try {
      return (rawData[events] as List<ChatEvent>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatEventLogFilters {
  late Map rawData;
  ChatEventLogFilters(this.rawData);

  factory ChatEventLogFilters.create({
    String special_type = "chatEventLogFilters",
    bool? message_edits,
    bool? message_deletions,
    bool? message_pins,
    bool? member_joins,
    bool? member_leaves,
    bool? member_invites,
    bool? member_promotions,
    bool? member_restrictions,
    bool? info_changes,
    bool? setting_changes,
    bool? invite_link_changes,
    bool? video_chat_changes,
  }) {
    try {
      return ChatEventLogFilters({
        "@type": special_type,
        "message_edits": message_edits,
        "message_deletions": message_deletions,
        "message_pins": message_pins,
        "member_joins": member_joins,
        "member_leaves": member_leaves,
        "member_invites": member_invites,
        "member_promotions": member_promotions,
        "member_restrictions": member_restrictions,
        "info_changes": info_changes,
        "setting_changes": setting_changes,
        "invite_link_changes": invite_link_changes,
        "video_chat_changes": video_chat_changes,
      });
    } catch (e) {
      return ChatEventLogFilters({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatEventLogFilters.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get message_edits {
    try {
      return (rawData[message_edits] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get message_deletions {
    try {
      return (rawData[message_deletions] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get message_pins {
    try {
      return (rawData[message_pins] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get member_joins {
    try {
      return (rawData[member_joins] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get member_leaves {
    try {
      return (rawData[member_leaves] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get member_invites {
    try {
      return (rawData[member_invites] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get member_promotions {
    try {
      return (rawData[member_promotions] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get member_restrictions {
    try {
      return (rawData[member_restrictions] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get info_changes {
    try {
      return (rawData[info_changes] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get setting_changes {
    try {
      return (rawData[setting_changes] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get invite_link_changes {
    try {
      return (rawData[invite_link_changes] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get video_chat_changes {
    try {
      return (rawData[video_chat_changes] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LanguagePackStringValue {
  late Map rawData;
  LanguagePackStringValue(this.rawData);

  factory LanguagePackStringValue.create({
    String special_type = "languagePackStringValueOrdinary",
    String? value,
    String? zero_value,
    String? one_value,
    String? two_value,
    String? few_value,
    String? many_value,
    String? other_value,
  }) {
    try {
      return LanguagePackStringValue({
        "@type": special_type,
        "value": value,
        "zero_value": zero_value,
        "one_value": one_value,
        "two_value": two_value,
        "few_value": few_value,
        "many_value": many_value,
        "other_value": other_value,
      });
    } catch (e) {
      return LanguagePackStringValue({
        "@type": "error",
        "error": "${e}",
        "message": "error method LanguagePackStringValue.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get zero_value {
    try {
      return (rawData[zero_value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get one_value {
    try {
      return (rawData[one_value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get two_value {
    try {
      return (rawData[two_value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get few_value {
    try {
      return (rawData[few_value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get many_value {
    try {
      return (rawData[many_value] as String);
    } catch (e) {
      return null;
    }
  }

  String? get other_value {
    try {
      return (rawData[other_value] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LanguagePackString {
  late Map rawData;
  LanguagePackString(this.rawData);

  factory LanguagePackString.create({
    String special_type = "languagePackString",
    String? key,
    LanguagePackStringValue? value,
  }) {
    try {
      return LanguagePackString({
        "@type": special_type,
        "key": key,
        "value": (value != null) ? value.toJson() : null,
      });
    } catch (e) {
      return LanguagePackString({
        "@type": "error",
        "error": "${e}",
        "message": "error method LanguagePackString.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get key {
    try {
      return (rawData[key] as String);
    } catch (e) {
      return null;
    }
  }

  LanguagePackStringValue? get value {
    try {
      return (rawData[value] as LanguagePackStringValue);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LanguagePackStrings {
  late Map rawData;
  LanguagePackStrings(this.rawData);

  factory LanguagePackStrings.create({
    String special_type = "languagePackStrings",
    List<LanguagePackString>? strings,
  }) {
    try {
      return LanguagePackStrings({
        "@type": special_type,
        "strings": (strings != null)
            ? strings.map((e) {
                return LanguagePackString((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return LanguagePackStrings({
        "@type": "error",
        "error": "${e}",
        "message": "error method LanguagePackStrings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<LanguagePackString> get strings {
    try {
      return (rawData[strings] as List<LanguagePackString>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LanguagePackInfo {
  late Map rawData;
  LanguagePackInfo(this.rawData);

  factory LanguagePackInfo.create({
    String special_type = "languagePackInfo",
    String? id,
    String? base_language_pack_id,
    String? name,
    String? native_name,
    String? plural_code,
    bool? is_official,
    bool? is_rtl,
    bool? is_beta,
    bool? is_installed,
    int? total_string_count,
    int? translated_string_count,
    int? local_string_count,
    String? translation_url,
  }) {
    try {
      return LanguagePackInfo({
        "@type": special_type,
        "id": id,
        "base_language_pack_id": base_language_pack_id,
        "name": name,
        "native_name": native_name,
        "plural_code": plural_code,
        "is_official": is_official,
        "is_rtl": is_rtl,
        "is_beta": is_beta,
        "is_installed": is_installed,
        "total_string_count": total_string_count,
        "translated_string_count": translated_string_count,
        "local_string_count": local_string_count,
        "translation_url": translation_url,
      });
    } catch (e) {
      return LanguagePackInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method LanguagePackInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get id {
    try {
      return (rawData[id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get base_language_pack_id {
    try {
      return (rawData[base_language_pack_id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get native_name {
    try {
      return (rawData[native_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get plural_code {
    try {
      return (rawData[plural_code] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_official {
    try {
      return (rawData[is_official] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_rtl {
    try {
      return (rawData[is_rtl] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_beta {
    try {
      return (rawData[is_beta] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_installed {
    try {
      return (rawData[is_installed] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get total_string_count {
    try {
      return (rawData[total_string_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get translated_string_count {
    try {
      return (rawData[translated_string_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get local_string_count {
    try {
      return (rawData[local_string_count] as int);
    } catch (e) {
      return null;
    }
  }

  String? get translation_url {
    try {
      return (rawData[translation_url] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LocalizationTargetInfo {
  late Map rawData;
  LocalizationTargetInfo(this.rawData);

  factory LocalizationTargetInfo.create({
    String special_type = "localizationTargetInfo",
    List<LanguagePackInfo>? language_packs,
  }) {
    try {
      return LocalizationTargetInfo({
        "@type": special_type,
        "language_packs": (language_packs != null)
            ? language_packs.map((e) {
                return LanguagePackInfo((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return LocalizationTargetInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method LocalizationTargetInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<LanguagePackInfo> get language_packs {
    try {
      return (rawData[language_packs] as List<LanguagePackInfo>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumLimitType {
  late Map rawData;
  PremiumLimitType(this.rawData);

  factory PremiumLimitType.create({
    String special_type = "premiumLimitTypeSupergroupCount",
  }) {
    try {
      return PremiumLimitType({
        "@type": special_type,
      });
    } catch (e) {
      return PremiumLimitType({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumLimitType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumFeature {
  late Map rawData;
  PremiumFeature(this.rawData);

  factory PremiumFeature.create({
    String special_type = "premiumFeatureIncreasedLimits",
  }) {
    try {
      return PremiumFeature({
        "@type": special_type,
      });
    } catch (e) {
      return PremiumFeature({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumFeature.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumLimit {
  late Map rawData;
  PremiumLimit(this.rawData);

  factory PremiumLimit.create({
    String special_type = "premiumLimit",
    PremiumLimitType? type,
    int? default_value,
    int? premium_value,
  }) {
    try {
      return PremiumLimit({
        "@type": special_type,
        "type": (type != null) ? type.toJson() : null,
        "default_value": default_value,
        "premium_value": premium_value,
      });
    } catch (e) {
      return PremiumLimit({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumLimit.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PremiumLimitType? get type {
    try {
      return (rawData[type] as PremiumLimitType);
    } catch (e) {
      return null;
    }
  }

  int? get default_value {
    try {
      return (rawData[default_value] as int);
    } catch (e) {
      return null;
    }
  }

  int? get premium_value {
    try {
      return (rawData[premium_value] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumFeatures {
  late Map rawData;
  PremiumFeatures(this.rawData);

  factory PremiumFeatures.create({
    String special_type = "premiumFeatures",
    List<PremiumFeature>? features,
    List<PremiumLimit>? limits,
    InternalLinkType? payment_link,
  }) {
    try {
      return PremiumFeatures({
        "@type": special_type,
        "features": (features != null)
            ? features.map((e) {
                return PremiumFeature((e as Map)).toJson();
              }).toList()
            : null,
        "limits": (limits != null)
            ? limits.map((e) {
                return PremiumLimit((e as Map)).toJson();
              }).toList()
            : null,
        "payment_link": (payment_link != null) ? payment_link.toJson() : null,
      });
    } catch (e) {
      return PremiumFeatures({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumFeatures.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<PremiumFeature> get features {
    try {
      return (rawData[features] as List<PremiumFeature>);
    } catch (e) {
      return [];
    }
  }

  List<PremiumLimit> get limits {
    try {
      return (rawData[limits] as List<PremiumLimit>);
    } catch (e) {
      return [];
    }
  }

  InternalLinkType? get payment_link {
    try {
      return (rawData[payment_link] as InternalLinkType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumSource {
  late Map rawData;
  PremiumSource(this.rawData);

  factory PremiumSource.create({
    String special_type = "premiumSourceLimitExceeded",
    PremiumLimitType? limit_type,
    PremiumFeature? feature,
    String? referrer,
  }) {
    try {
      return PremiumSource({
        "@type": special_type,
        "limit_type": (limit_type != null) ? limit_type.toJson() : null,
        "feature": (feature != null) ? feature.toJson() : null,
        "referrer": referrer,
      });
    } catch (e) {
      return PremiumSource({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumSource.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PremiumLimitType? get limit_type {
    try {
      return (rawData[limit_type] as PremiumLimitType);
    } catch (e) {
      return null;
    }
  }

  PremiumFeature? get feature {
    try {
      return (rawData[feature] as PremiumFeature);
    } catch (e) {
      return null;
    }
  }

  String? get referrer {
    try {
      return (rawData[referrer] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumFeaturePromotionAnimation {
  late Map rawData;
  PremiumFeaturePromotionAnimation(this.rawData);

  factory PremiumFeaturePromotionAnimation.create({
    String special_type = "premiumFeaturePromotionAnimation",
    PremiumFeature? feature,
    Animation? animation,
  }) {
    try {
      return PremiumFeaturePromotionAnimation({
        "@type": special_type,
        "feature": (feature != null) ? feature.toJson() : null,
        "animation": (animation != null) ? animation.toJson() : null,
      });
    } catch (e) {
      return PremiumFeaturePromotionAnimation({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumFeaturePromotionAnimation.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  PremiumFeature? get feature {
    try {
      return (rawData[feature] as PremiumFeature);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PremiumState {
  late Map rawData;
  PremiumState(this.rawData);

  factory PremiumState.create({
    String special_type = "premiumState",
    FormattedText? state,
    List<PremiumPaymentOption>? payment_options,
    List<PremiumFeaturePromotionAnimation>? animations,
  }) {
    try {
      return PremiumState({
        "@type": special_type,
        "state": (state != null) ? state.toJson() : null,
        "payment_options": (payment_options != null)
            ? payment_options.map((e) {
                return PremiumPaymentOption((e as Map)).toJson();
              }).toList()
            : null,
        "animations": (animations != null)
            ? animations.map((e) {
                return PremiumFeaturePromotionAnimation((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return PremiumState({
        "@type": "error",
        "error": "${e}",
        "message": "error method PremiumState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get state {
    try {
      return (rawData[state] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  List<PremiumPaymentOption> get payment_options {
    try {
      return (rawData[payment_options] as List<PremiumPaymentOption>);
    } catch (e) {
      return [];
    }
  }

  List<PremiumFeaturePromotionAnimation> get animations {
    try {
      return (rawData[animations] as List<PremiumFeaturePromotionAnimation>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StorePaymentPurpose {
  late Map rawData;
  StorePaymentPurpose(this.rawData);

  factory StorePaymentPurpose.create({
    String special_type = "storePaymentPurposePremiumSubscription",
    bool? is_restore,
    int? user_id,
    String? currency,
    int? amount,
  }) {
    try {
      return StorePaymentPurpose({
        "@type": special_type,
        "is_restore": is_restore,
        "user_id": user_id,
        "currency": currency,
        "amount": amount,
      });
    } catch (e) {
      return StorePaymentPurpose({
        "@type": "error",
        "error": "${e}",
        "message": "error method StorePaymentPurpose.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_restore {
    try {
      return (rawData[is_restore] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      return (rawData[currency] as String);
    } catch (e) {
      return null;
    }
  }

  int? get amount {
    try {
      return (rawData[amount] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DeviceToken {
  late Map rawData;
  DeviceToken(this.rawData);

  factory DeviceToken.create({
    String special_type = "deviceTokenFirebaseCloudMessaging",
    String? token,
    bool? encrypt,
    String? device_token,
    bool? is_app_sandbox,
    String? access_token,
    String? channel_uri,
    String? endpoint,
    String? p256dh_base64url,
    String? auth_base64url,
    String? reg_id,
  }) {
    try {
      return DeviceToken({
        "@type": special_type,
        "token": token,
        "encrypt": encrypt,
        "device_token": device_token,
        "is_app_sandbox": is_app_sandbox,
        "access_token": access_token,
        "channel_uri": channel_uri,
        "endpoint": endpoint,
        "p256dh_base64url": p256dh_base64url,
        "auth_base64url": auth_base64url,
        "reg_id": reg_id,
      });
    } catch (e) {
      return DeviceToken({
        "@type": "error",
        "error": "${e}",
        "message": "error method DeviceToken.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get token {
    try {
      return (rawData[token] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get encrypt {
    try {
      return (rawData[encrypt] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get device_token {
    try {
      return (rawData[device_token] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_app_sandbox {
    try {
      return (rawData[is_app_sandbox] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get access_token {
    try {
      return (rawData[access_token] as String);
    } catch (e) {
      return null;
    }
  }

  String? get channel_uri {
    try {
      return (rawData[channel_uri] as String);
    } catch (e) {
      return null;
    }
  }

  String? get endpoint {
    try {
      return (rawData[endpoint] as String);
    } catch (e) {
      return null;
    }
  }

  String? get p256dh_base64url {
    try {
      return (rawData[p256dh_base64url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get auth_base64url {
    try {
      return (rawData[auth_base64url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get reg_id {
    try {
      return (rawData[reg_id] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PushReceiverId {
  late Map rawData;
  PushReceiverId(this.rawData);

  factory PushReceiverId.create({
    String special_type = "pushReceiverId",
    int? id,
  }) {
    try {
      return PushReceiverId({
        "@type": special_type,
        "id": id,
      });
    } catch (e) {
      return PushReceiverId({
        "@type": "error",
        "error": "${e}",
        "message": "error method PushReceiverId.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BackgroundFill {
  late Map rawData;
  BackgroundFill(this.rawData);

  factory BackgroundFill.create({
    String special_type = "backgroundFillSolid",
    int? color,
    int? top_color,
    int? bottom_color,
    int? rotation_angle,
    List<int>? colors,
  }) {
    try {
      return BackgroundFill({
        "@type": special_type,
        "color": color,
        "top_color": top_color,
        "bottom_color": bottom_color,
        "rotation_angle": rotation_angle,
        "colors": colors,
      });
    } catch (e) {
      return BackgroundFill({
        "@type": "error",
        "error": "${e}",
        "message": "error method BackgroundFill.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get color {
    try {
      return (rawData[color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get top_color {
    try {
      return (rawData[top_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get bottom_color {
    try {
      return (rawData[bottom_color] as int);
    } catch (e) {
      return null;
    }
  }

  int? get rotation_angle {
    try {
      return (rawData[rotation_angle] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get colors {
    try {
      return (rawData[colors] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BackgroundType {
  late Map rawData;
  BackgroundType(this.rawData);

  factory BackgroundType.create({
    String special_type = "backgroundTypeWallpaper",
    bool? is_blurred,
    bool? is_moving,
    BackgroundFill? fill,
    int? intensity,
    bool? is_inverted,
  }) {
    try {
      return BackgroundType({
        "@type": special_type,
        "is_blurred": is_blurred,
        "is_moving": is_moving,
        "fill": (fill != null) ? fill.toJson() : null,
        "intensity": intensity,
        "is_inverted": is_inverted,
      });
    } catch (e) {
      return BackgroundType({
        "@type": "error",
        "error": "${e}",
        "message": "error method BackgroundType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_blurred {
    try {
      return (rawData[is_blurred] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_moving {
    try {
      return (rawData[is_moving] as bool);
    } catch (e) {
      return null;
    }
  }

  BackgroundFill? get fill {
    try {
      return (rawData[fill] as BackgroundFill);
    } catch (e) {
      return null;
    }
  }

  int? get intensity {
    try {
      return (rawData[intensity] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_inverted {
    try {
      return (rawData[is_inverted] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Background {
  late Map rawData;
  Background(this.rawData);

  factory Background.create({
    String special_type = "background",
    int? id,
    bool? is_default,
    bool? is_dark,
    String? name,
    Document? document,
    BackgroundType? type,
  }) {
    try {
      return Background({
        "@type": special_type,
        "id": id,
        "is_default": is_default,
        "is_dark": is_dark,
        "name": name,
        "document": (document != null) ? document.toJson() : null,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return Background({
        "@type": "error",
        "error": "${e}",
        "message": "error method Background.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_default {
    try {
      return (rawData[is_default] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_dark {
    try {
      return (rawData[is_dark] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  BackgroundType? get type {
    try {
      return (rawData[type] as BackgroundType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Backgrounds {
  late Map rawData;
  Backgrounds(this.rawData);

  factory Backgrounds.create({
    String special_type = "backgrounds",
    List<Background>? backgrounds,
  }) {
    try {
      return Backgrounds({
        "@type": special_type,
        "backgrounds": (backgrounds != null)
            ? backgrounds.map((e) {
                return Background((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Backgrounds({
        "@type": "error",
        "error": "${e}",
        "message": "error method Backgrounds.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Background> get backgrounds {
    try {
      return (rawData[backgrounds] as List<Background>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputBackground {
  late Map rawData;
  InputBackground(this.rawData);

  factory InputBackground.create({
    String special_type = "inputBackgroundLocal",
    InputFile? background,
    int? background_id,
  }) {
    try {
      return InputBackground({
        "@type": special_type,
        "background": (background != null) ? background.toJson() : null,
        "background_id": background_id,
      });
    } catch (e) {
      return InputBackground({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputBackground.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  InputFile? get background {
    try {
      return (rawData[background] as InputFile);
    } catch (e) {
      return null;
    }
  }

  int? get background_id {
    try {
      return (rawData[background_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ThemeSettings {
  late Map rawData;
  ThemeSettings(this.rawData);

  factory ThemeSettings.create({
    String special_type = "themeSettings",
    int? accent_color,
    Background? background,
    BackgroundFill? outgoing_message_fill,
    bool? animate_outgoing_message_fill,
    int? outgoing_message_accent_color,
  }) {
    try {
      return ThemeSettings({
        "@type": special_type,
        "accent_color": accent_color,
        "background": (background != null) ? background.toJson() : null,
        "outgoing_message_fill": (outgoing_message_fill != null) ? outgoing_message_fill.toJson() : null,
        "animate_outgoing_message_fill": animate_outgoing_message_fill,
        "outgoing_message_accent_color": outgoing_message_accent_color,
      });
    } catch (e) {
      return ThemeSettings({
        "@type": "error",
        "error": "${e}",
        "message": "error method ThemeSettings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get accent_color {
    try {
      return (rawData[accent_color] as int);
    } catch (e) {
      return null;
    }
  }

  Background? get background {
    try {
      return (rawData[background] as Background);
    } catch (e) {
      return null;
    }
  }

  BackgroundFill? get outgoing_message_fill {
    try {
      return (rawData[outgoing_message_fill] as BackgroundFill);
    } catch (e) {
      return null;
    }
  }

  bool? get animate_outgoing_message_fill {
    try {
      return (rawData[animate_outgoing_message_fill] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get outgoing_message_accent_color {
    try {
      return (rawData[outgoing_message_accent_color] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatTheme {
  late Map rawData;
  ChatTheme(this.rawData);

  factory ChatTheme.create({
    String special_type = "chatTheme",
    String? name,
    ThemeSettings? light_settings,
    ThemeSettings? dark_settings,
  }) {
    try {
      return ChatTheme({
        "@type": special_type,
        "name": name,
        "light_settings": (light_settings != null) ? light_settings.toJson() : null,
        "dark_settings": (dark_settings != null) ? dark_settings.toJson() : null,
      });
    } catch (e) {
      return ChatTheme({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatTheme.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  ThemeSettings? get light_settings {
    try {
      return (rawData[light_settings] as ThemeSettings);
    } catch (e) {
      return null;
    }
  }

  ThemeSettings? get dark_settings {
    try {
      return (rawData[dark_settings] as ThemeSettings);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Hashtags {
  late Map rawData;
  Hashtags(this.rawData);

  factory Hashtags.create({
    String special_type = "hashtags",
    List<String>? hashtags,
  }) {
    try {
      return Hashtags({
        "@type": special_type,
        "hashtags": hashtags,
      });
    } catch (e) {
      return Hashtags({
        "@type": "error",
        "error": "${e}",
        "message": "error method Hashtags.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get hashtags {
    try {
      return (rawData[hashtags] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CanTransferOwnershipResult {
  late Map rawData;
  CanTransferOwnershipResult(this.rawData);

  factory CanTransferOwnershipResult.create({
    String special_type = "canTransferOwnershipResultOk",
    int? retry_after,
  }) {
    try {
      return CanTransferOwnershipResult({
        "@type": special_type,
        "retry_after": retry_after,
      });
    } catch (e) {
      return CanTransferOwnershipResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method CanTransferOwnershipResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get retry_after {
    try {
      return (rawData[retry_after] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CheckChatUsernameResult {
  late Map rawData;
  CheckChatUsernameResult(this.rawData);

  factory CheckChatUsernameResult.create({
    String special_type = "checkChatUsernameResultOk",
  }) {
    try {
      return CheckChatUsernameResult({
        "@type": special_type,
      });
    } catch (e) {
      return CheckChatUsernameResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method CheckChatUsernameResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class CheckStickerSetNameResult {
  late Map rawData;
  CheckStickerSetNameResult(this.rawData);

  factory CheckStickerSetNameResult.create({
    String special_type = "checkStickerSetNameResultOk",
  }) {
    try {
      return CheckStickerSetNameResult({
        "@type": special_type,
      });
    } catch (e) {
      return CheckStickerSetNameResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method CheckStickerSetNameResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ResetPasswordResult {
  late Map rawData;
  ResetPasswordResult(this.rawData);

  factory ResetPasswordResult.create({
    String special_type = "resetPasswordResultOk",
    int? pending_reset_date,
    int? retry_date,
  }) {
    try {
      return ResetPasswordResult({
        "@type": special_type,
        "pending_reset_date": pending_reset_date,
        "retry_date": retry_date,
      });
    } catch (e) {
      return ResetPasswordResult({
        "@type": "error",
        "error": "${e}",
        "message": "error method ResetPasswordResult.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get pending_reset_date {
    try {
      return (rawData[pending_reset_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get retry_date {
    try {
      return (rawData[retry_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageFileType {
  late Map rawData;
  MessageFileType(this.rawData);

  factory MessageFileType.create({
    String special_type = "messageFileTypePrivate",
    String? name,
    String? title,
  }) {
    try {
      return MessageFileType({
        "@type": special_type,
        "name": name,
        "title": title,
      });
    } catch (e) {
      return MessageFileType({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageFileType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class PushMessageContent {
  late Map rawData;
  PushMessageContent(this.rawData);

  factory PushMessageContent.create({
    String special_type = "pushMessageContentHidden",
    bool? is_pinned,
    Animation? animation,
    String? caption,
    Audio? audio,
    String? name,
    Document? document,
    String? title,
    int? score,
    String? price,
    bool? is_live,
    Photo? photo,
    bool? is_secret,
    String? question,
    bool? is_regular,
    Sticker? sticker,
    String? emoji,
    String? text,
    Video? video,
    VideoNote? video_note,
    VoiceNote? voice_note,
    String? member_name,
    bool? is_current_user,
    bool? is_returned,
    String? theme_name,
    bool? is_left,
    String? amount,
    int? total_count,
    bool? has_photos,
    bool? has_videos,
    bool? has_audios,
    bool? has_documents,
  }) {
    try {
      return PushMessageContent({
        "@type": special_type,
        "is_pinned": is_pinned,
        "animation": (animation != null) ? animation.toJson() : null,
        "caption": caption,
        "audio": (audio != null) ? audio.toJson() : null,
        "name": name,
        "document": (document != null) ? document.toJson() : null,
        "title": title,
        "score": score,
        "price": price,
        "is_live": is_live,
        "photo": (photo != null) ? photo.toJson() : null,
        "is_secret": is_secret,
        "question": question,
        "is_regular": is_regular,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "emoji": emoji,
        "text": text,
        "video": (video != null) ? video.toJson() : null,
        "video_note": (video_note != null) ? video_note.toJson() : null,
        "voice_note": (voice_note != null) ? voice_note.toJson() : null,
        "member_name": member_name,
        "is_current_user": is_current_user,
        "is_returned": is_returned,
        "theme_name": theme_name,
        "is_left": is_left,
        "amount": amount,
        "total_count": total_count,
        "has_photos": has_photos,
        "has_videos": has_videos,
        "has_audios": has_audios,
        "has_documents": has_documents,
      });
    } catch (e) {
      return PushMessageContent({
        "@type": "error",
        "error": "${e}",
        "message": "error method PushMessageContent.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_pinned {
    try {
      return (rawData[is_pinned] as bool);
    } catch (e) {
      return null;
    }
  }

  Animation? get animation {
    try {
      return (rawData[animation] as Animation);
    } catch (e) {
      return null;
    }
  }

  String? get caption {
    try {
      return (rawData[caption] as String);
    } catch (e) {
      return null;
    }
  }

  Audio? get audio {
    try {
      return (rawData[audio] as Audio);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  Document? get document {
    try {
      return (rawData[document] as Document);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  int? get score {
    try {
      return (rawData[score] as int);
    } catch (e) {
      return null;
    }
  }

  String? get price {
    try {
      return (rawData[price] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_live {
    try {
      return (rawData[is_live] as bool);
    } catch (e) {
      return null;
    }
  }

  Photo? get photo {
    try {
      return (rawData[photo] as Photo);
    } catch (e) {
      return null;
    }
  }

  bool? get is_secret {
    try {
      return (rawData[is_secret] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get question {
    try {
      return (rawData[question] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_regular {
    try {
      return (rawData[is_regular] as bool);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  String? get emoji {
    try {
      return (rawData[emoji] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  Video? get video {
    try {
      return (rawData[video] as Video);
    } catch (e) {
      return null;
    }
  }

  VideoNote? get video_note {
    try {
      return (rawData[video_note] as VideoNote);
    } catch (e) {
      return null;
    }
  }

  VoiceNote? get voice_note {
    try {
      return (rawData[voice_note] as VoiceNote);
    } catch (e) {
      return null;
    }
  }

  String? get member_name {
    try {
      return (rawData[member_name] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_current_user {
    try {
      return (rawData[is_current_user] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_returned {
    try {
      return (rawData[is_returned] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get theme_name {
    try {
      return (rawData[theme_name] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_left {
    try {
      return (rawData[is_left] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get amount {
    try {
      return (rawData[amount] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get has_photos {
    try {
      return (rawData[has_photos] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_videos {
    try {
      return (rawData[has_videos] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_audios {
    try {
      return (rawData[has_audios] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_documents {
    try {
      return (rawData[has_documents] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationType {
  late Map rawData;
  NotificationType(this.rawData);

  factory NotificationType.create({
    String special_type = "notificationTypeNewMessage",
    Message? message,
    bool? show_preview,
    int? call_id,
    int? message_id,
    MessageSender? sender_id,
    String? sender_name,
    bool? is_outgoing,
    PushMessageContent? content,
  }) {
    try {
      return NotificationType({
        "@type": special_type,
        "message": (message != null) ? message.toJson() : null,
        "show_preview": show_preview,
        "call_id": call_id,
        "message_id": message_id,
        "sender_id": (sender_id != null) ? sender_id.toJson() : null,
        "sender_name": sender_name,
        "is_outgoing": is_outgoing,
        "content": (content != null) ? content.toJson() : null,
      });
    } catch (e) {
      return NotificationType({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  bool? get show_preview {
    try {
      return (rawData[show_preview] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get call_id {
    try {
      return (rawData[call_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender_id {
    try {
      return (rawData[sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  String? get sender_name {
    try {
      return (rawData[sender_name] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_outgoing {
    try {
      return (rawData[is_outgoing] as bool);
    } catch (e) {
      return null;
    }
  }

  PushMessageContent? get content {
    try {
      return (rawData[content] as PushMessageContent);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationGroupType {
  late Map rawData;
  NotificationGroupType(this.rawData);

  factory NotificationGroupType.create({
    String special_type = "notificationGroupTypeMessages",
  }) {
    try {
      return NotificationGroupType({
        "@type": special_type,
      });
    } catch (e) {
      return NotificationGroupType({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationGroupType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationSound {
  late Map rawData;
  NotificationSound(this.rawData);

  factory NotificationSound.create({
    String special_type = "notificationSound",
    int? id,
    int? duration,
    int? date,
    String? title,
    String? data,
    File? sound,
  }) {
    try {
      return NotificationSound({
        "@type": special_type,
        "id": id,
        "duration": duration,
        "date": date,
        "title": title,
        "data": data,
        "sound": (sound != null) ? sound.toJson() : null,
      });
    } catch (e) {
      return NotificationSound({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationSound.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      return (rawData[duration] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  File? get sound {
    try {
      return (rawData[sound] as File);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationSounds {
  late Map rawData;
  NotificationSounds(this.rawData);

  factory NotificationSounds.create({
    String special_type = "notificationSounds",
    List<NotificationSound>? notification_sounds,
  }) {
    try {
      return NotificationSounds({
        "@type": special_type,
        "notification_sounds": (notification_sounds != null)
            ? notification_sounds.map((e) {
                return NotificationSound((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return NotificationSounds({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationSounds.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<NotificationSound> get notification_sounds {
    try {
      return (rawData[notification_sounds] as List<NotificationSound>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Notification {
  late Map rawData;
  Notification(this.rawData);

  factory Notification.create({
    String special_type = "notification",
    int? id,
    int? date,
    bool? is_silent,
    NotificationType? type,
  }) {
    try {
      return Notification({
        "@type": special_type,
        "id": id,
        "date": date,
        "is_silent": is_silent,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return Notification({
        "@type": "error",
        "error": "${e}",
        "message": "error method Notification.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_silent {
    try {
      return (rawData[is_silent] as bool);
    } catch (e) {
      return null;
    }
  }

  NotificationType? get type {
    try {
      return (rawData[type] as NotificationType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NotificationGroup {
  late Map rawData;
  NotificationGroup(this.rawData);

  factory NotificationGroup.create({
    String special_type = "notificationGroup",
    int? id,
    NotificationGroupType? type,
    int? chat_id,
    int? total_count,
    List<Notification>? notifications,
  }) {
    try {
      return NotificationGroup({
        "@type": special_type,
        "id": id,
        "type": (type != null) ? type.toJson() : null,
        "chat_id": chat_id,
        "total_count": total_count,
        "notifications": (notifications != null)
            ? notifications.map((e) {
                return Notification((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return NotificationGroup({
        "@type": "error",
        "error": "${e}",
        "message": "error method NotificationGroup.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  NotificationGroupType? get type {
    try {
      return (rawData[type] as NotificationGroupType);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<Notification> get notifications {
    try {
      return (rawData[notifications] as List<Notification>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class OptionValue {
  late Map rawData;
  OptionValue(this.rawData);

  factory OptionValue.create({
    String special_type = "optionValueBoolean",
    String? value,
  }) {
    try {
      return OptionValue({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return OptionValue({
        "@type": "error",
        "error": "${e}",
        "message": "error method OptionValue.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class JsonObjectMember {
  late Map rawData;
  JsonObjectMember(this.rawData);

  factory JsonObjectMember.create({
    String special_type = "jsonObjectMember",
    String? key,
    JsonValue? value,
  }) {
    try {
      return JsonObjectMember({
        "@type": special_type,
        "key": key,
        "value": (value != null) ? value.toJson() : null,
      });
    } catch (e) {
      return JsonObjectMember({
        "@type": "error",
        "error": "${e}",
        "message": "error method JsonObjectMember.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get key {
    try {
      return (rawData[key] as String);
    } catch (e) {
      return null;
    }
  }

  JsonValue? get value {
    try {
      return (rawData[value] as JsonValue);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class JsonValue {
  late Map rawData;
  JsonValue(this.rawData);

  factory JsonValue.create({
    String special_type = "jsonValueNull",
    String? value,
    List<JsonValue>? values,
    List<JsonObjectMember>? members,
  }) {
    try {
      return JsonValue({
        "@type": special_type,
        "value": value,
        "values": (values != null)
            ? values.map((e) {
                return JsonValue((e as Map)).toJson();
              }).toList()
            : null,
        "members": (members != null)
            ? members.map((e) {
                return JsonObjectMember((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return JsonValue({
        "@type": "error",
        "error": "${e}",
        "message": "error method JsonValue.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  List<JsonValue> get values {
    try {
      return (rawData[values] as List<JsonValue>);
    } catch (e) {
      return [];
    }
  }

  List<JsonObjectMember> get members {
    try {
      return (rawData[members] as List<JsonObjectMember>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserPrivacySettingRule {
  late Map rawData;
  UserPrivacySettingRule(this.rawData);

  factory UserPrivacySettingRule.create({
    String special_type = "userPrivacySettingRuleAllowAll",
    List<int>? user_ids,
    List<int>? chat_ids,
  }) {
    try {
      return UserPrivacySettingRule({
        "@type": special_type,
        "user_ids": user_ids,
        "chat_ids": chat_ids,
      });
    } catch (e) {
      return UserPrivacySettingRule({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserPrivacySettingRule.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<int> get user_ids {
    try {
      return (rawData[user_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get chat_ids {
    try {
      return (rawData[chat_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserPrivacySettingRules {
  late Map rawData;
  UserPrivacySettingRules(this.rawData);

  factory UserPrivacySettingRules.create({
    String special_type = "userPrivacySettingRules",
    List<UserPrivacySettingRule>? rules,
  }) {
    try {
      return UserPrivacySettingRules({
        "@type": special_type,
        "rules": (rules != null)
            ? rules.map((e) {
                return UserPrivacySettingRule((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return UserPrivacySettingRules({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserPrivacySettingRules.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<UserPrivacySettingRule> get rules {
    try {
      return (rawData[rules] as List<UserPrivacySettingRule>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserPrivacySetting {
  late Map rawData;
  UserPrivacySetting(this.rawData);

  factory UserPrivacySetting.create({
    String special_type = "userPrivacySettingShowStatus",
  }) {
    try {
      return UserPrivacySetting({
        "@type": special_type,
      });
    } catch (e) {
      return UserPrivacySetting({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserPrivacySetting.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AccountTtl {
  late Map rawData;
  AccountTtl(this.rawData);

  factory AccountTtl.create({
    String special_type = "accountTtl",
    int? days,
  }) {
    try {
      return AccountTtl({
        "@type": special_type,
        "days": days,
      });
    } catch (e) {
      return AccountTtl({
        "@type": "error",
        "error": "${e}",
        "message": "error method AccountTtl.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get days {
    try {
      return (rawData[days] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SessionType {
  late Map rawData;
  SessionType(this.rawData);

  factory SessionType.create({
    String special_type = "sessionTypeAndroid",
  }) {
    try {
      return SessionType({
        "@type": special_type,
      });
    } catch (e) {
      return SessionType({
        "@type": "error",
        "error": "${e}",
        "message": "error method SessionType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Session {
  late Map rawData;
  Session(this.rawData);

  factory Session.create({
    String special_type = "session",
    int? id,
    bool? is_current,
    bool? is_password_pending,
    bool? can_accept_secret_chats,
    bool? can_accept_calls,
    SessionType? type,
    int? api_id,
    String? application_name,
    String? application_version,
    bool? is_official_application,
    String? device_model,
    String? platform,
    String? system_version,
    int? log_in_date,
    int? last_active_date,
    String? ip,
    String? country,
    String? region,
  }) {
    try {
      return Session({
        "@type": special_type,
        "id": id,
        "is_current": is_current,
        "is_password_pending": is_password_pending,
        "can_accept_secret_chats": can_accept_secret_chats,
        "can_accept_calls": can_accept_calls,
        "type": (type != null) ? type.toJson() : null,
        "api_id": api_id,
        "application_name": application_name,
        "application_version": application_version,
        "is_official_application": is_official_application,
        "device_model": device_model,
        "platform": platform,
        "system_version": system_version,
        "log_in_date": log_in_date,
        "last_active_date": last_active_date,
        "ip": ip,
        "country": country,
        "region": region,
      });
    } catch (e) {
      return Session({
        "@type": "error",
        "error": "${e}",
        "message": "error method Session.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_current {
    try {
      return (rawData[is_current] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_password_pending {
    try {
      return (rawData[is_password_pending] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_accept_secret_chats {
    try {
      return (rawData[can_accept_secret_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get can_accept_calls {
    try {
      return (rawData[can_accept_calls] as bool);
    } catch (e) {
      return null;
    }
  }

  SessionType? get type {
    try {
      return (rawData[type] as SessionType);
    } catch (e) {
      return null;
    }
  }

  int? get api_id {
    try {
      return (rawData[api_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get application_name {
    try {
      return (rawData[application_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get application_version {
    try {
      return (rawData[application_version] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_official_application {
    try {
      return (rawData[is_official_application] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get device_model {
    try {
      return (rawData[device_model] as String);
    } catch (e) {
      return null;
    }
  }

  String? get platform {
    try {
      return (rawData[platform] as String);
    } catch (e) {
      return null;
    }
  }

  String? get system_version {
    try {
      return (rawData[system_version] as String);
    } catch (e) {
      return null;
    }
  }

  int? get log_in_date {
    try {
      return (rawData[log_in_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_active_date {
    try {
      return (rawData[last_active_date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get ip {
    try {
      return (rawData[ip] as String);
    } catch (e) {
      return null;
    }
  }

  String? get country {
    try {
      return (rawData[country] as String);
    } catch (e) {
      return null;
    }
  }

  String? get region {
    try {
      return (rawData[region] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Sessions {
  late Map rawData;
  Sessions(this.rawData);

  factory Sessions.create({
    String special_type = "sessions",
    List<Session>? sessions,
    int? inactive_session_ttl_days,
  }) {
    try {
      return Sessions({
        "@type": special_type,
        "sessions": (sessions != null)
            ? sessions.map((e) {
                return Session((e as Map)).toJson();
              }).toList()
            : null,
        "inactive_session_ttl_days": inactive_session_ttl_days,
      });
    } catch (e) {
      return Sessions({
        "@type": "error",
        "error": "${e}",
        "message": "error method Sessions.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Session> get sessions {
    try {
      return (rawData[sessions] as List<Session>);
    } catch (e) {
      return [];
    }
  }

  int? get inactive_session_ttl_days {
    try {
      return (rawData[inactive_session_ttl_days] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ConnectedWebsite {
  late Map rawData;
  ConnectedWebsite(this.rawData);

  factory ConnectedWebsite.create({
    String special_type = "connectedWebsite",
    int? id,
    String? domain_name,
    int? bot_user_id,
    String? browser,
    String? platform,
    int? log_in_date,
    int? last_active_date,
    String? ip,
    String? location,
  }) {
    try {
      return ConnectedWebsite({
        "@type": special_type,
        "id": id,
        "domain_name": domain_name,
        "bot_user_id": bot_user_id,
        "browser": browser,
        "platform": platform,
        "log_in_date": log_in_date,
        "last_active_date": last_active_date,
        "ip": ip,
        "location": location,
      });
    } catch (e) {
      return ConnectedWebsite({
        "@type": "error",
        "error": "${e}",
        "message": "error method ConnectedWebsite.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get domain_name {
    try {
      return (rawData[domain_name] as String);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get browser {
    try {
      return (rawData[browser] as String);
    } catch (e) {
      return null;
    }
  }

  String? get platform {
    try {
      return (rawData[platform] as String);
    } catch (e) {
      return null;
    }
  }

  int? get log_in_date {
    try {
      return (rawData[log_in_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_active_date {
    try {
      return (rawData[last_active_date] as int);
    } catch (e) {
      return null;
    }
  }

  String? get ip {
    try {
      return (rawData[ip] as String);
    } catch (e) {
      return null;
    }
  }

  String? get location {
    try {
      return (rawData[location] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ConnectedWebsites {
  late Map rawData;
  ConnectedWebsites(this.rawData);

  factory ConnectedWebsites.create({
    String special_type = "connectedWebsites",
    List<ConnectedWebsite>? websites,
  }) {
    try {
      return ConnectedWebsites({
        "@type": special_type,
        "websites": (websites != null)
            ? websites.map((e) {
                return ConnectedWebsite((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ConnectedWebsites({
        "@type": "error",
        "error": "${e}",
        "message": "error method ConnectedWebsites.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<ConnectedWebsite> get websites {
    try {
      return (rawData[websites] as List<ConnectedWebsite>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatReportReason {
  late Map rawData;
  ChatReportReason(this.rawData);

  factory ChatReportReason.create({
    String special_type = "chatReportReasonSpam",
  }) {
    try {
      return ChatReportReason({
        "@type": special_type,
      });
    } catch (e) {
      return ChatReportReason({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatReportReason.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TargetChat {
  late Map rawData;
  TargetChat(this.rawData);

  factory TargetChat.create({
    String special_type = "targetChatCurrent",
    bool? allow_user_chats,
    bool? allow_bot_chats,
    bool? allow_group_chats,
    bool? allow_channel_chats,
    InternalLinkType? link,
  }) {
    try {
      return TargetChat({
        "@type": special_type,
        "allow_user_chats": allow_user_chats,
        "allow_bot_chats": allow_bot_chats,
        "allow_group_chats": allow_group_chats,
        "allow_channel_chats": allow_channel_chats,
        "link": (link != null) ? link.toJson() : null,
      });
    } catch (e) {
      return TargetChat({
        "@type": "error",
        "error": "${e}",
        "message": "error method TargetChat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_user_chats {
    try {
      return (rawData[allow_user_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_bot_chats {
    try {
      return (rawData[allow_bot_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_group_chats {
    try {
      return (rawData[allow_group_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get allow_channel_chats {
    try {
      return (rawData[allow_channel_chats] as bool);
    } catch (e) {
      return null;
    }
  }

  InternalLinkType? get link {
    try {
      return (rawData[link] as InternalLinkType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InternalLinkType {
  late Map rawData;
  InternalLinkType(this.rawData);

  factory InternalLinkType.create({
    String special_type = "internalLinkTypeActiveSessions",
    TargetChat? target_chat,
    String? bot_username,
    String? url,
    String? code,
    String? background_name,
    String? start_parameter,
    bool? autostart,
    ChatAdministratorRights? administrator_rights,
    String? invite_link,
    String? game_short_name,
    String? fallback_url,
    String? invoice_name,
    String? language_pack_id,
    FormattedText? text,
    bool? contains_link,
    int? bot_user_id,
    String? scope,
    String? public_key,
    String? nonce,
    String? callback_url,
    String? hash,
    String? phone_number,
    String? referrer,
    String? server,
    int? port,
    ProxyType? type,
    String? chat_username,
    String? sticker_set_name,
    String? theme_name,
    String? link,
    String? invite_hash,
    bool? is_live_stream,
  }) {
    try {
      return InternalLinkType({
        "@type": special_type,
        "target_chat": (target_chat != null) ? target_chat.toJson() : null,
        "bot_username": bot_username,
        "url": url,
        "code": code,
        "background_name": background_name,
        "start_parameter": start_parameter,
        "autostart": autostart,
        "administrator_rights": (administrator_rights != null) ? administrator_rights.toJson() : null,
        "invite_link": invite_link,
        "game_short_name": game_short_name,
        "fallback_url": fallback_url,
        "invoice_name": invoice_name,
        "language_pack_id": language_pack_id,
        "text": (text != null) ? text.toJson() : null,
        "contains_link": contains_link,
        "bot_user_id": bot_user_id,
        "scope": scope,
        "public_key": public_key,
        "nonce": nonce,
        "callback_url": callback_url,
        "hash": hash,
        "phone_number": phone_number,
        "referrer": referrer,
        "server": server,
        "port": port,
        "type": (type != null) ? type.toJson() : null,
        "chat_username": chat_username,
        "sticker_set_name": sticker_set_name,
        "theme_name": theme_name,
        "link": link,
        "invite_hash": invite_hash,
        "is_live_stream": is_live_stream,
      });
    } catch (e) {
      return InternalLinkType({
        "@type": "error",
        "error": "${e}",
        "message": "error method InternalLinkType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  TargetChat? get target_chat {
    try {
      return (rawData[target_chat] as TargetChat);
    } catch (e) {
      return null;
    }
  }

  String? get bot_username {
    try {
      return (rawData[bot_username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get code {
    try {
      return (rawData[code] as String);
    } catch (e) {
      return null;
    }
  }

  String? get background_name {
    try {
      return (rawData[background_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get start_parameter {
    try {
      return (rawData[start_parameter] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get autostart {
    try {
      return (rawData[autostart] as bool);
    } catch (e) {
      return null;
    }
  }

  ChatAdministratorRights? get administrator_rights {
    try {
      return (rawData[administrator_rights] as ChatAdministratorRights);
    } catch (e) {
      return null;
    }
  }

  String? get invite_link {
    try {
      return (rawData[invite_link] as String);
    } catch (e) {
      return null;
    }
  }

  String? get game_short_name {
    try {
      return (rawData[game_short_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get fallback_url {
    try {
      return (rawData[fallback_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get invoice_name {
    try {
      return (rawData[invoice_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get language_pack_id {
    try {
      return (rawData[language_pack_id] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get text {
    try {
      return (rawData[text] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  bool? get contains_link {
    try {
      return (rawData[contains_link] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get bot_user_id {
    try {
      return (rawData[bot_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get scope {
    try {
      return (rawData[scope] as String);
    } catch (e) {
      return null;
    }
  }

  String? get public_key {
    try {
      return (rawData[public_key] as String);
    } catch (e) {
      return null;
    }
  }

  String? get nonce {
    try {
      return (rawData[nonce] as String);
    } catch (e) {
      return null;
    }
  }

  String? get callback_url {
    try {
      return (rawData[callback_url] as String);
    } catch (e) {
      return null;
    }
  }

  String? get hash {
    try {
      return (rawData[hash] as String);
    } catch (e) {
      return null;
    }
  }

  String? get phone_number {
    try {
      return (rawData[phone_number] as String);
    } catch (e) {
      return null;
    }
  }

  String? get referrer {
    try {
      return (rawData[referrer] as String);
    } catch (e) {
      return null;
    }
  }

  String? get server {
    try {
      return (rawData[server] as String);
    } catch (e) {
      return null;
    }
  }

  int? get port {
    try {
      return (rawData[port] as int);
    } catch (e) {
      return null;
    }
  }

  ProxyType? get type {
    try {
      return (rawData[type] as ProxyType);
    } catch (e) {
      return null;
    }
  }

  String? get chat_username {
    try {
      return (rawData[chat_username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get sticker_set_name {
    try {
      return (rawData[sticker_set_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get theme_name {
    try {
      return (rawData[theme_name] as String);
    } catch (e) {
      return null;
    }
  }

  String? get link {
    try {
      return (rawData[link] as String);
    } catch (e) {
      return null;
    }
  }

  String? get invite_hash {
    try {
      return (rawData[invite_hash] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_live_stream {
    try {
      return (rawData[is_live_stream] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageLink {
  late Map rawData;
  MessageLink(this.rawData);

  factory MessageLink.create({
    String special_type = "messageLink",
    String? link,
    bool? is_public,
  }) {
    try {
      return MessageLink({
        "@type": special_type,
        "link": link,
        "is_public": is_public,
      });
    } catch (e) {
      return MessageLink({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageLink.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get link {
    try {
      return (rawData[link] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_public {
    try {
      return (rawData[is_public] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageLinkInfo {
  late Map rawData;
  MessageLinkInfo(this.rawData);

  factory MessageLinkInfo.create({
    String special_type = "messageLinkInfo",
    bool? is_public,
    int? chat_id,
    Message? message,
    int? media_timestamp,
    bool? for_album,
    bool? for_comment,
  }) {
    try {
      return MessageLinkInfo({
        "@type": special_type,
        "is_public": is_public,
        "chat_id": chat_id,
        "message": (message != null) ? message.toJson() : null,
        "media_timestamp": media_timestamp,
        "for_album": for_album,
        "for_comment": for_comment,
      });
    } catch (e) {
      return MessageLinkInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageLinkInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_public {
    try {
      return (rawData[is_public] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  int? get media_timestamp {
    try {
      return (rawData[media_timestamp] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get for_album {
    try {
      return (rawData[for_album] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get for_comment {
    try {
      return (rawData[for_comment] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FilePart {
  late Map rawData;
  FilePart(this.rawData);

  factory FilePart.create({
    String special_type = "filePart",
    String? data,
  }) {
    try {
      return FilePart({
        "@type": special_type,
        "data": data,
      });
    } catch (e) {
      return FilePart({
        "@type": "error",
        "error": "${e}",
        "message": "error method FilePart.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FileType {
  late Map rawData;
  FileType(this.rawData);

  factory FileType.create({
    String special_type = "fileTypeNone",
  }) {
    try {
      return FileType({
        "@type": special_type,
      });
    } catch (e) {
      return FileType({
        "@type": "error",
        "error": "${e}",
        "message": "error method FileType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StorageStatisticsByFileType {
  late Map rawData;
  StorageStatisticsByFileType(this.rawData);

  factory StorageStatisticsByFileType.create({
    String special_type = "storageStatisticsByFileType",
    FileType? file_type,
    int? size,
    int? count,
  }) {
    try {
      return StorageStatisticsByFileType({
        "@type": special_type,
        "file_type": (file_type != null) ? file_type.toJson() : null,
        "size": size,
        "count": count,
      });
    } catch (e) {
      return StorageStatisticsByFileType({
        "@type": "error",
        "error": "${e}",
        "message": "error method StorageStatisticsByFileType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FileType? get file_type {
    try {
      return (rawData[file_type] as FileType);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get count {
    try {
      return (rawData[count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StorageStatisticsByChat {
  late Map rawData;
  StorageStatisticsByChat(this.rawData);

  factory StorageStatisticsByChat.create({
    String special_type = "storageStatisticsByChat",
    int? chat_id,
    int? size,
    int? count,
    List<StorageStatisticsByFileType>? by_file_type,
  }) {
    try {
      return StorageStatisticsByChat({
        "@type": special_type,
        "chat_id": chat_id,
        "size": size,
        "count": count,
        "by_file_type": (by_file_type != null)
            ? by_file_type.map((e) {
                return StorageStatisticsByFileType((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return StorageStatisticsByChat({
        "@type": "error",
        "error": "${e}",
        "message": "error method StorageStatisticsByChat.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get count {
    try {
      return (rawData[count] as int);
    } catch (e) {
      return null;
    }
  }

  List<StorageStatisticsByFileType> get by_file_type {
    try {
      return (rawData[by_file_type] as List<StorageStatisticsByFileType>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StorageStatistics {
  late Map rawData;
  StorageStatistics(this.rawData);

  factory StorageStatistics.create({
    String special_type = "storageStatistics",
    int? size,
    int? count,
    List<StorageStatisticsByChat>? by_chat,
  }) {
    try {
      return StorageStatistics({
        "@type": special_type,
        "size": size,
        "count": count,
        "by_chat": (by_chat != null)
            ? by_chat.map((e) {
                return StorageStatisticsByChat((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return StorageStatistics({
        "@type": "error",
        "error": "${e}",
        "message": "error method StorageStatistics.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get count {
    try {
      return (rawData[count] as int);
    } catch (e) {
      return null;
    }
  }

  List<StorageStatisticsByChat> get by_chat {
    try {
      return (rawData[by_chat] as List<StorageStatisticsByChat>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StorageStatisticsFast {
  late Map rawData;
  StorageStatisticsFast(this.rawData);

  factory StorageStatisticsFast.create({
    String special_type = "storageStatisticsFast",
    int? files_size,
    int? file_count,
    int? database_size,
    int? language_pack_database_size,
    int? log_size,
  }) {
    try {
      return StorageStatisticsFast({
        "@type": special_type,
        "files_size": files_size,
        "file_count": file_count,
        "database_size": database_size,
        "language_pack_database_size": language_pack_database_size,
        "log_size": log_size,
      });
    } catch (e) {
      return StorageStatisticsFast({
        "@type": "error",
        "error": "${e}",
        "message": "error method StorageStatisticsFast.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get files_size {
    try {
      return (rawData[files_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get file_count {
    try {
      return (rawData[file_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get database_size {
    try {
      return (rawData[database_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get language_pack_database_size {
    try {
      return (rawData[language_pack_database_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get log_size {
    try {
      return (rawData[log_size] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DatabaseStatistics {
  late Map rawData;
  DatabaseStatistics(this.rawData);

  factory DatabaseStatistics.create({
    String special_type = "databaseStatistics",
    String? statistics,
  }) {
    try {
      return DatabaseStatistics({
        "@type": special_type,
        "statistics": statistics,
      });
    } catch (e) {
      return DatabaseStatistics({
        "@type": "error",
        "error": "${e}",
        "message": "error method DatabaseStatistics.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get statistics {
    try {
      return (rawData[statistics] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NetworkType {
  late Map rawData;
  NetworkType(this.rawData);

  factory NetworkType.create({
    String special_type = "networkTypeNone",
  }) {
    try {
      return NetworkType({
        "@type": special_type,
      });
    } catch (e) {
      return NetworkType({
        "@type": "error",
        "error": "${e}",
        "message": "error method NetworkType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NetworkStatisticsEntry {
  late Map rawData;
  NetworkStatisticsEntry(this.rawData);

  factory NetworkStatisticsEntry.create({
    String special_type = "networkStatisticsEntryFile",
    FileType? file_type,
    NetworkType? network_type,
    int? sent_bytes,
    int? received_bytes,
    double? duration,
  }) {
    try {
      return NetworkStatisticsEntry({
        "@type": special_type,
        "file_type": (file_type != null) ? file_type.toJson() : null,
        "network_type": (network_type != null) ? network_type.toJson() : null,
        "sent_bytes": sent_bytes,
        "received_bytes": received_bytes,
        "duration": duration,
      });
    } catch (e) {
      return NetworkStatisticsEntry({
        "@type": "error",
        "error": "${e}",
        "message": "error method NetworkStatisticsEntry.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FileType? get file_type {
    try {
      return (rawData[file_type] as FileType);
    } catch (e) {
      return null;
    }
  }

  NetworkType? get network_type {
    try {
      return (rawData[network_type] as NetworkType);
    } catch (e) {
      return null;
    }
  }

  int? get sent_bytes {
    try {
      return (rawData[sent_bytes] as int);
    } catch (e) {
      return null;
    }
  }

  int? get received_bytes {
    try {
      return (rawData[received_bytes] as int);
    } catch (e) {
      return null;
    }
  }

  double? get duration {
    try {
      return (rawData[duration] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class NetworkStatistics {
  late Map rawData;
  NetworkStatistics(this.rawData);

  factory NetworkStatistics.create({
    String special_type = "networkStatistics",
    int? since_date,
    List<NetworkStatisticsEntry>? entries,
  }) {
    try {
      return NetworkStatistics({
        "@type": special_type,
        "since_date": since_date,
        "entries": (entries != null)
            ? entries.map((e) {
                return NetworkStatisticsEntry((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return NetworkStatistics({
        "@type": "error",
        "error": "${e}",
        "message": "error method NetworkStatistics.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get since_date {
    try {
      return (rawData[since_date] as int);
    } catch (e) {
      return null;
    }
  }

  List<NetworkStatisticsEntry> get entries {
    try {
      return (rawData[entries] as List<NetworkStatisticsEntry>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AutoDownloadSettings {
  late Map rawData;
  AutoDownloadSettings(this.rawData);

  factory AutoDownloadSettings.create({
    String special_type = "autoDownloadSettings",
    bool? is_auto_download_enabled,
    int? max_photo_file_size,
    int? max_video_file_size,
    int? max_other_file_size,
    int? video_upload_bitrate,
    bool? preload_large_videos,
    bool? preload_next_audio,
    bool? use_less_data_for_calls,
  }) {
    try {
      return AutoDownloadSettings({
        "@type": special_type,
        "is_auto_download_enabled": is_auto_download_enabled,
        "max_photo_file_size": max_photo_file_size,
        "max_video_file_size": max_video_file_size,
        "max_other_file_size": max_other_file_size,
        "video_upload_bitrate": video_upload_bitrate,
        "preload_large_videos": preload_large_videos,
        "preload_next_audio": preload_next_audio,
        "use_less_data_for_calls": use_less_data_for_calls,
      });
    } catch (e) {
      return AutoDownloadSettings({
        "@type": "error",
        "error": "${e}",
        "message": "error method AutoDownloadSettings.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get is_auto_download_enabled {
    try {
      return (rawData[is_auto_download_enabled] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get max_photo_file_size {
    try {
      return (rawData[max_photo_file_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get max_video_file_size {
    try {
      return (rawData[max_video_file_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get max_other_file_size {
    try {
      return (rawData[max_other_file_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get video_upload_bitrate {
    try {
      return (rawData[video_upload_bitrate] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get preload_large_videos {
    try {
      return (rawData[preload_large_videos] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get preload_next_audio {
    try {
      return (rawData[preload_next_audio] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get use_less_data_for_calls {
    try {
      return (rawData[use_less_data_for_calls] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class AutoDownloadSettingsPresets {
  late Map rawData;
  AutoDownloadSettingsPresets(this.rawData);

  factory AutoDownloadSettingsPresets.create({
    String special_type = "autoDownloadSettingsPresets",
    AutoDownloadSettings? low,
    AutoDownloadSettings? medium,
    AutoDownloadSettings? high,
  }) {
    try {
      return AutoDownloadSettingsPresets({
        "@type": special_type,
        "low": (low != null) ? low.toJson() : null,
        "medium": (medium != null) ? medium.toJson() : null,
        "high": (high != null) ? high.toJson() : null,
      });
    } catch (e) {
      return AutoDownloadSettingsPresets({
        "@type": "error",
        "error": "${e}",
        "message": "error method AutoDownloadSettingsPresets.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  AutoDownloadSettings? get low {
    try {
      return (rawData[low] as AutoDownloadSettings);
    } catch (e) {
      return null;
    }
  }

  AutoDownloadSettings? get medium {
    try {
      return (rawData[medium] as AutoDownloadSettings);
    } catch (e) {
      return null;
    }
  }

  AutoDownloadSettings? get high {
    try {
      return (rawData[high] as AutoDownloadSettings);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ConnectionState {
  late Map rawData;
  ConnectionState(this.rawData);

  factory ConnectionState.create({
    String special_type = "connectionStateWaitingForNetwork",
  }) {
    try {
      return ConnectionState({
        "@type": special_type,
      });
    } catch (e) {
      return ConnectionState({
        "@type": "error",
        "error": "${e}",
        "message": "error method ConnectionState.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TopChatCategory {
  late Map rawData;
  TopChatCategory(this.rawData);

  factory TopChatCategory.create({
    String special_type = "topChatCategoryUsers",
  }) {
    try {
      return TopChatCategory({
        "@type": special_type,
      });
    } catch (e) {
      return TopChatCategory({
        "@type": "error",
        "error": "${e}",
        "message": "error method TopChatCategory.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TMeUrlType {
  late Map rawData;
  TMeUrlType(this.rawData);

  factory TMeUrlType.create({
    String special_type = "tMeUrlTypeUser",
    int? user_id,
    int? supergroup_id,
    ChatInviteLinkInfo? info,
    int? sticker_set_id,
  }) {
    try {
      return TMeUrlType({
        "@type": special_type,
        "user_id": user_id,
        "supergroup_id": supergroup_id,
        "info": (info != null) ? info.toJson() : null,
        "sticker_set_id": sticker_set_id,
      });
    } catch (e) {
      return TMeUrlType({
        "@type": "error",
        "error": "${e}",
        "message": "error method TMeUrlType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get supergroup_id {
    try {
      return (rawData[supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLinkInfo? get info {
    try {
      return (rawData[info] as ChatInviteLinkInfo);
    } catch (e) {
      return null;
    }
  }

  int? get sticker_set_id {
    try {
      return (rawData[sticker_set_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TMeUrl {
  late Map rawData;
  TMeUrl(this.rawData);

  factory TMeUrl.create({
    String special_type = "tMeUrl",
    String? url,
    TMeUrlType? type,
  }) {
    try {
      return TMeUrl({
        "@type": special_type,
        "url": url,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return TMeUrl({
        "@type": "error",
        "error": "${e}",
        "message": "error method TMeUrl.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get url {
    try {
      return (rawData[url] as String);
    } catch (e) {
      return null;
    }
  }

  TMeUrlType? get type {
    try {
      return (rawData[type] as TMeUrlType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TMeUrls {
  late Map rawData;
  TMeUrls(this.rawData);

  factory TMeUrls.create({
    String special_type = "tMeUrls",
    List<TMeUrl>? urls,
  }) {
    try {
      return TMeUrls({
        "@type": special_type,
        "urls": (urls != null)
            ? urls.map((e) {
                return TMeUrl((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return TMeUrls({
        "@type": "error",
        "error": "${e}",
        "message": "error method TMeUrls.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<TMeUrl> get urls {
    try {
      return (rawData[urls] as List<TMeUrl>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class SuggestedAction {
  late Map rawData;
  SuggestedAction(this.rawData);

  factory SuggestedAction.create({
    String special_type = "suggestedActionEnableArchiveAndMuteNewChats",
    int? supergroup_id,
    int? authorization_delay,
  }) {
    try {
      return SuggestedAction({
        "@type": special_type,
        "supergroup_id": supergroup_id,
        "authorization_delay": authorization_delay,
      });
    } catch (e) {
      return SuggestedAction({
        "@type": "error",
        "error": "${e}",
        "message": "error method SuggestedAction.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get supergroup_id {
    try {
      return (rawData[supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get authorization_delay {
    try {
      return (rawData[authorization_delay] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Count {
  late Map rawData;
  Count(this.rawData);

  factory Count.create({
    String special_type = "count",
    int? count,
  }) {
    try {
      return Count({
        "@type": special_type,
        "count": count,
      });
    } catch (e) {
      return Count({
        "@type": "error",
        "error": "${e}",
        "message": "error method Count.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get count {
    try {
      return (rawData[count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Text {
  late Map rawData;
  Text(this.rawData);

  factory Text.create({
    String special_type = "text",
    String? text,
  }) {
    try {
      return Text({
        "@type": special_type,
        "text": text,
      });
    } catch (e) {
      return Text({
        "@type": "error",
        "error": "${e}",
        "message": "error method Text.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get text {
    try {
      return (rawData[text] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Seconds {
  late Map rawData;
  Seconds(this.rawData);

  factory Seconds.create({
    String special_type = "seconds",
    double? seconds,
  }) {
    try {
      return Seconds({
        "@type": special_type,
        "seconds": seconds,
      });
    } catch (e) {
      return Seconds({
        "@type": "error",
        "error": "${e}",
        "message": "error method Seconds.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  double? get seconds {
    try {
      return (rawData[seconds] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class FileDownloadedPrefixSize {
  late Map rawData;
  FileDownloadedPrefixSize(this.rawData);

  factory FileDownloadedPrefixSize.create({
    String special_type = "fileDownloadedPrefixSize",
    int? size,
  }) {
    try {
      return FileDownloadedPrefixSize({
        "@type": special_type,
        "size": size,
      });
    } catch (e) {
      return FileDownloadedPrefixSize({
        "@type": "error",
        "error": "${e}",
        "message": "error method FileDownloadedPrefixSize.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get size {
    try {
      return (rawData[size] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DeepLinkInfo {
  late Map rawData;
  DeepLinkInfo(this.rawData);

  factory DeepLinkInfo.create({
    String special_type = "deepLinkInfo",
    FormattedText? text,
    bool? need_update_application,
  }) {
    try {
      return DeepLinkInfo({
        "@type": special_type,
        "text": (text != null) ? text.toJson() : null,
        "need_update_application": need_update_application,
      });
    } catch (e) {
      return DeepLinkInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method DeepLinkInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get text {
    try {
      return (rawData[text] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  bool? get need_update_application {
    try {
      return (rawData[need_update_application] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TextParseMode {
  late Map rawData;
  TextParseMode(this.rawData);

  factory TextParseMode.create({
    String special_type = "textParseModeMarkdown",
    int? version,
  }) {
    try {
      return TextParseMode({
        "@type": special_type,
        "version": version,
      });
    } catch (e) {
      return TextParseMode({
        "@type": "error",
        "error": "${e}",
        "message": "error method TextParseMode.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get version {
    try {
      return (rawData[version] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ProxyType {
  late Map rawData;
  ProxyType(this.rawData);

  factory ProxyType.create({
    String special_type = "proxyTypeSocks5",
    String? username,
    String? password,
    bool? http_only,
    String? secret,
  }) {
    try {
      return ProxyType({
        "@type": special_type,
        "username": username,
        "password": password,
        "http_only": http_only,
        "secret": secret,
      });
    } catch (e) {
      return ProxyType({
        "@type": "error",
        "error": "${e}",
        "message": "error method ProxyType.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get username {
    try {
      return (rawData[username] as String);
    } catch (e) {
      return null;
    }
  }

  String? get password {
    try {
      return (rawData[password] as String);
    } catch (e) {
      return null;
    }
  }

  bool? get http_only {
    try {
      return (rawData[http_only] as bool);
    } catch (e) {
      return null;
    }
  }

  String? get secret {
    try {
      return (rawData[secret] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Proxy {
  late Map rawData;
  Proxy(this.rawData);

  factory Proxy.create({
    String special_type = "proxy",
    int? id,
    String? server,
    int? port,
    int? last_used_date,
    bool? is_enabled,
    ProxyType? type,
  }) {
    try {
      return Proxy({
        "@type": special_type,
        "id": id,
        "server": server,
        "port": port,
        "last_used_date": last_used_date,
        "is_enabled": is_enabled,
        "type": (type != null) ? type.toJson() : null,
      });
    } catch (e) {
      return Proxy({
        "@type": "error",
        "error": "${e}",
        "message": "error method Proxy.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get server {
    try {
      return (rawData[server] as String);
    } catch (e) {
      return null;
    }
  }

  int? get port {
    try {
      return (rawData[port] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_used_date {
    try {
      return (rawData[last_used_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_enabled {
    try {
      return (rawData[is_enabled] as bool);
    } catch (e) {
      return null;
    }
  }

  ProxyType? get type {
    try {
      return (rawData[type] as ProxyType);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Proxies {
  late Map rawData;
  Proxies(this.rawData);

  factory Proxies.create({
    String special_type = "proxies",
    List<Proxy>? proxies,
  }) {
    try {
      return Proxies({
        "@type": special_type,
        "proxies": (proxies != null)
            ? proxies.map((e) {
                return Proxy((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Proxies({
        "@type": "error",
        "error": "${e}",
        "message": "error method Proxies.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Proxy> get proxies {
    try {
      return (rawData[proxies] as List<Proxy>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class InputSticker {
  late Map rawData;
  InputSticker(this.rawData);

  factory InputSticker.create({
    String special_type = "inputSticker",
    InputFile? sticker,
    String? emojis,
    StickerFormat? format,
    MaskPosition? mask_position,
  }) {
    try {
      return InputSticker({
        "@type": special_type,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "emojis": emojis,
        "format": (format != null) ? format.toJson() : null,
        "mask_position": (mask_position != null) ? mask_position.toJson() : null,
      });
    } catch (e) {
      return InputSticker({
        "@type": "error",
        "error": "${e}",
        "message": "error method InputSticker.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  InputFile? get sticker {
    try {
      return (rawData[sticker] as InputFile);
    } catch (e) {
      return null;
    }
  }

  String? get emojis {
    try {
      return (rawData[emojis] as String);
    } catch (e) {
      return null;
    }
  }

  StickerFormat? get format {
    try {
      return (rawData[format] as StickerFormat);
    } catch (e) {
      return null;
    }
  }

  MaskPosition? get mask_position {
    try {
      return (rawData[mask_position] as MaskPosition);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class DateRange {
  late Map rawData;
  DateRange(this.rawData);

  factory DateRange.create({
    String special_type = "dateRange",
    int? start_date,
    int? end_date,
  }) {
    try {
      return DateRange({
        "@type": special_type,
        "start_date": start_date,
        "end_date": end_date,
      });
    } catch (e) {
      return DateRange({
        "@type": "error",
        "error": "${e}",
        "message": "error method DateRange.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get start_date {
    try {
      return (rawData[start_date] as int);
    } catch (e) {
      return null;
    }
  }

  int? get end_date {
    try {
      return (rawData[end_date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StatisticalValue {
  late Map rawData;
  StatisticalValue(this.rawData);

  factory StatisticalValue.create({
    String special_type = "statisticalValue",
    double? value,
    double? previous_value,
    double? growth_rate_percentage,
  }) {
    try {
      return StatisticalValue({
        "@type": special_type,
        "value": value,
        "previous_value": previous_value,
        "growth_rate_percentage": growth_rate_percentage,
      });
    } catch (e) {
      return StatisticalValue({
        "@type": "error",
        "error": "${e}",
        "message": "error method StatisticalValue.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  double? get value {
    try {
      return (rawData[value] as double);
    } catch (e) {
      return null;
    }
  }

  double? get previous_value {
    try {
      return (rawData[previous_value] as double);
    } catch (e) {
      return null;
    }
  }

  double? get growth_rate_percentage {
    try {
      return (rawData[growth_rate_percentage] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class StatisticalGraph {
  late Map rawData;
  StatisticalGraph(this.rawData);

  factory StatisticalGraph.create({
    String special_type = "statisticalGraphData",
    String? json_data,
    String? zoom_token,
    String? token,
    String? error_message,
  }) {
    try {
      return StatisticalGraph({
        "@type": special_type,
        "json_data": json_data,
        "zoom_token": zoom_token,
        "token": token,
        "error_message": error_message,
      });
    } catch (e) {
      return StatisticalGraph({
        "@type": "error",
        "error": "${e}",
        "message": "error method StatisticalGraph.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get json_data {
    try {
      return (rawData[json_data] as String);
    } catch (e) {
      return null;
    }
  }

  String? get zoom_token {
    try {
      return (rawData[zoom_token] as String);
    } catch (e) {
      return null;
    }
  }

  String? get token {
    try {
      return (rawData[token] as String);
    } catch (e) {
      return null;
    }
  }

  String? get error_message {
    try {
      return (rawData[error_message] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatStatisticsMessageInteractionInfo {
  late Map rawData;
  ChatStatisticsMessageInteractionInfo(this.rawData);

  factory ChatStatisticsMessageInteractionInfo.create({
    String special_type = "chatStatisticsMessageInteractionInfo",
    int? message_id,
    int? view_count,
    int? forward_count,
  }) {
    try {
      return ChatStatisticsMessageInteractionInfo({
        "@type": special_type,
        "message_id": message_id,
        "view_count": view_count,
        "forward_count": forward_count,
      });
    } catch (e) {
      return ChatStatisticsMessageInteractionInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatStatisticsMessageInteractionInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get view_count {
    try {
      return (rawData[view_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get forward_count {
    try {
      return (rawData[forward_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatStatisticsMessageSenderInfo {
  late Map rawData;
  ChatStatisticsMessageSenderInfo(this.rawData);

  factory ChatStatisticsMessageSenderInfo.create({
    String special_type = "chatStatisticsMessageSenderInfo",
    int? user_id,
    int? sent_message_count,
    int? average_character_count,
  }) {
    try {
      return ChatStatisticsMessageSenderInfo({
        "@type": special_type,
        "user_id": user_id,
        "sent_message_count": sent_message_count,
        "average_character_count": average_character_count,
      });
    } catch (e) {
      return ChatStatisticsMessageSenderInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatStatisticsMessageSenderInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sent_message_count {
    try {
      return (rawData[sent_message_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get average_character_count {
    try {
      return (rawData[average_character_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatStatisticsAdministratorActionsInfo {
  late Map rawData;
  ChatStatisticsAdministratorActionsInfo(this.rawData);

  factory ChatStatisticsAdministratorActionsInfo.create({
    String special_type = "chatStatisticsAdministratorActionsInfo",
    int? user_id,
    int? deleted_message_count,
    int? banned_user_count,
    int? restricted_user_count,
  }) {
    try {
      return ChatStatisticsAdministratorActionsInfo({
        "@type": special_type,
        "user_id": user_id,
        "deleted_message_count": deleted_message_count,
        "banned_user_count": banned_user_count,
        "restricted_user_count": restricted_user_count,
      });
    } catch (e) {
      return ChatStatisticsAdministratorActionsInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatStatisticsAdministratorActionsInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get deleted_message_count {
    try {
      return (rawData[deleted_message_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get banned_user_count {
    try {
      return (rawData[banned_user_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get restricted_user_count {
    try {
      return (rawData[restricted_user_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatStatisticsInviterInfo {
  late Map rawData;
  ChatStatisticsInviterInfo(this.rawData);

  factory ChatStatisticsInviterInfo.create({
    String special_type = "chatStatisticsInviterInfo",
    int? user_id,
    int? added_member_count,
  }) {
    try {
      return ChatStatisticsInviterInfo({
        "@type": special_type,
        "user_id": user_id,
        "added_member_count": added_member_count,
      });
    } catch (e) {
      return ChatStatisticsInviterInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatStatisticsInviterInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get added_member_count {
    try {
      return (rawData[added_member_count] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class ChatStatistics {
  late Map rawData;
  ChatStatistics(this.rawData);

  factory ChatStatistics.create({
    String special_type = "chatStatisticsSupergroup",
    DateRange? period,
    StatisticalValue? member_count,
    StatisticalValue? message_count,
    StatisticalValue? viewer_count,
    StatisticalValue? sender_count,
    StatisticalGraph? member_count_graph,
    StatisticalGraph? join_graph,
    StatisticalGraph? join_by_source_graph,
    StatisticalGraph? language_graph,
    StatisticalGraph? message_content_graph,
    StatisticalGraph? action_graph,
    StatisticalGraph? day_graph,
    StatisticalGraph? week_graph,
    List<ChatStatisticsMessageSenderInfo>? top_senders,
    List<ChatStatisticsAdministratorActionsInfo>? top_administrators,
    List<ChatStatisticsInviterInfo>? top_inviters,
    StatisticalValue? mean_view_count,
    StatisticalValue? mean_share_count,
    double? enabled_notifications_percentage,
    StatisticalGraph? mute_graph,
    StatisticalGraph? view_count_by_hour_graph,
    StatisticalGraph? view_count_by_source_graph,
    StatisticalGraph? message_interaction_graph,
    StatisticalGraph? instant_view_interaction_graph,
    List<ChatStatisticsMessageInteractionInfo>? recent_message_interactions,
  }) {
    try {
      return ChatStatistics({
        "@type": special_type,
        "period": (period != null) ? period.toJson() : null,
        "member_count": (member_count != null) ? member_count.toJson() : null,
        "message_count": (message_count != null) ? message_count.toJson() : null,
        "viewer_count": (viewer_count != null) ? viewer_count.toJson() : null,
        "sender_count": (sender_count != null) ? sender_count.toJson() : null,
        "member_count_graph": (member_count_graph != null) ? member_count_graph.toJson() : null,
        "join_graph": (join_graph != null) ? join_graph.toJson() : null,
        "join_by_source_graph": (join_by_source_graph != null) ? join_by_source_graph.toJson() : null,
        "language_graph": (language_graph != null) ? language_graph.toJson() : null,
        "message_content_graph": (message_content_graph != null) ? message_content_graph.toJson() : null,
        "action_graph": (action_graph != null) ? action_graph.toJson() : null,
        "day_graph": (day_graph != null) ? day_graph.toJson() : null,
        "week_graph": (week_graph != null) ? week_graph.toJson() : null,
        "top_senders": (top_senders != null)
            ? top_senders.map((e) {
                return ChatStatisticsMessageSenderInfo((e as Map)).toJson();
              }).toList()
            : null,
        "top_administrators": (top_administrators != null)
            ? top_administrators.map((e) {
                return ChatStatisticsAdministratorActionsInfo((e as Map)).toJson();
              }).toList()
            : null,
        "top_inviters": (top_inviters != null)
            ? top_inviters.map((e) {
                return ChatStatisticsInviterInfo((e as Map)).toJson();
              }).toList()
            : null,
        "mean_view_count": (mean_view_count != null) ? mean_view_count.toJson() : null,
        "mean_share_count": (mean_share_count != null) ? mean_share_count.toJson() : null,
        "enabled_notifications_percentage": enabled_notifications_percentage,
        "mute_graph": (mute_graph != null) ? mute_graph.toJson() : null,
        "view_count_by_hour_graph": (view_count_by_hour_graph != null) ? view_count_by_hour_graph.toJson() : null,
        "view_count_by_source_graph": (view_count_by_source_graph != null) ? view_count_by_source_graph.toJson() : null,
        "message_interaction_graph": (message_interaction_graph != null) ? message_interaction_graph.toJson() : null,
        "instant_view_interaction_graph": (instant_view_interaction_graph != null) ? instant_view_interaction_graph.toJson() : null,
        "recent_message_interactions": (recent_message_interactions != null)
            ? recent_message_interactions.map((e) {
                return ChatStatisticsMessageInteractionInfo((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return ChatStatistics({
        "@type": "error",
        "error": "${e}",
        "message": "error method ChatStatistics.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  DateRange? get period {
    try {
      return (rawData[period] as DateRange);
    } catch (e) {
      return null;
    }
  }

  StatisticalValue? get member_count {
    try {
      return (rawData[member_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  StatisticalValue? get message_count {
    try {
      return (rawData[message_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  StatisticalValue? get viewer_count {
    try {
      return (rawData[viewer_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  StatisticalValue? get sender_count {
    try {
      return (rawData[sender_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get member_count_graph {
    try {
      return (rawData[member_count_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get join_graph {
    try {
      return (rawData[join_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get join_by_source_graph {
    try {
      return (rawData[join_by_source_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get language_graph {
    try {
      return (rawData[language_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get message_content_graph {
    try {
      return (rawData[message_content_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get action_graph {
    try {
      return (rawData[action_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get day_graph {
    try {
      return (rawData[day_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get week_graph {
    try {
      return (rawData[week_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  List<ChatStatisticsMessageSenderInfo> get top_senders {
    try {
      return (rawData[top_senders] as List<ChatStatisticsMessageSenderInfo>);
    } catch (e) {
      return [];
    }
  }

  List<ChatStatisticsAdministratorActionsInfo> get top_administrators {
    try {
      return (rawData[top_administrators] as List<ChatStatisticsAdministratorActionsInfo>);
    } catch (e) {
      return [];
    }
  }

  List<ChatStatisticsInviterInfo> get top_inviters {
    try {
      return (rawData[top_inviters] as List<ChatStatisticsInviterInfo>);
    } catch (e) {
      return [];
    }
  }

  StatisticalValue? get mean_view_count {
    try {
      return (rawData[mean_view_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  StatisticalValue? get mean_share_count {
    try {
      return (rawData[mean_share_count] as StatisticalValue);
    } catch (e) {
      return null;
    }
  }

  double? get enabled_notifications_percentage {
    try {
      return (rawData[enabled_notifications_percentage] as double);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get mute_graph {
    try {
      return (rawData[mute_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get view_count_by_hour_graph {
    try {
      return (rawData[view_count_by_hour_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get view_count_by_source_graph {
    try {
      return (rawData[view_count_by_source_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get message_interaction_graph {
    try {
      return (rawData[message_interaction_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get instant_view_interaction_graph {
    try {
      return (rawData[instant_view_interaction_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  List<ChatStatisticsMessageInteractionInfo> get recent_message_interactions {
    try {
      return (rawData[recent_message_interactions] as List<ChatStatisticsMessageInteractionInfo>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class MessageStatistics {
  late Map rawData;
  MessageStatistics(this.rawData);

  factory MessageStatistics.create({
    String special_type = "messageStatistics",
    StatisticalGraph? message_interaction_graph,
  }) {
    try {
      return MessageStatistics({
        "@type": special_type,
        "message_interaction_graph": (message_interaction_graph != null) ? message_interaction_graph.toJson() : null,
      });
    } catch (e) {
      return MessageStatistics({
        "@type": "error",
        "error": "${e}",
        "message": "error method MessageStatistics.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  StatisticalGraph? get message_interaction_graph {
    try {
      return (rawData[message_interaction_graph] as StatisticalGraph);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Point {
  late Map rawData;
  Point(this.rawData);

  factory Point.create({
    String special_type = "point",
    double? x,
    double? y,
  }) {
    try {
      return Point({
        "@type": special_type,
        "x": x,
        "y": y,
      });
    } catch (e) {
      return Point({
        "@type": "error",
        "error": "${e}",
        "message": "error method Point.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  double? get x {
    try {
      return (rawData[x] as double);
    } catch (e) {
      return null;
    }
  }

  double? get y {
    try {
      return (rawData[y] as double);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class VectorPathCommand {
  late Map rawData;
  VectorPathCommand(this.rawData);

  factory VectorPathCommand.create({
    String special_type = "vectorPathCommandLine",
    Point? end_point,
    Point? start_control_point,
    Point? end_control_point,
  }) {
    try {
      return VectorPathCommand({
        "@type": special_type,
        "end_point": (end_point != null) ? end_point.toJson() : null,
        "start_control_point": (start_control_point != null) ? start_control_point.toJson() : null,
        "end_control_point": (end_control_point != null) ? end_control_point.toJson() : null,
      });
    } catch (e) {
      return VectorPathCommand({
        "@type": "error",
        "error": "${e}",
        "message": "error method VectorPathCommand.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  Point? get end_point {
    try {
      return (rawData[end_point] as Point);
    } catch (e) {
      return null;
    }
  }

  Point? get start_control_point {
    try {
      return (rawData[start_control_point] as Point);
    } catch (e) {
      return null;
    }
  }

  Point? get end_control_point {
    try {
      return (rawData[end_control_point] as Point);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class BotCommandScope {
  late Map rawData;
  BotCommandScope(this.rawData);

  factory BotCommandScope.create({
    String special_type = "botCommandScopeDefault",
    int? chat_id,
    int? user_id,
  }) {
    try {
      return BotCommandScope({
        "@type": special_type,
        "chat_id": chat_id,
        "user_id": user_id,
      });
    } catch (e) {
      return BotCommandScope({
        "@type": "error",
        "error": "${e}",
        "message": "error method BotCommandScope.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Update {
  late Map rawData;
  Update(this.rawData);

  factory Update.create({
    String special_type = "updateAuthorizationState",
    AuthorizationState? authorization_state,
    Message? message,
    int? chat_id,
    int? message_id,
    int? old_message_id,
    int? error_code,
    String? error_message,
    MessageContent? new_content,
    int? edit_date,
    ReplyMarkup? reply_markup,
    bool? is_pinned,
    MessageInteractionInfo? interaction_info,
    int? unread_mention_count,
    List<UnreadReaction>? unread_reactions,
    int? unread_reaction_count,
    Chat? chat,
    String? title,
    ChatPhotoInfo? photo,
    ChatPermissions? permissions,
    Message? last_message,
    List<ChatPosition>? positions,
    ChatPosition? position,
    int? last_read_inbox_message_id,
    int? unread_count,
    int? last_read_outbox_message_id,
    ChatActionBar? action_bar,
    ChatAvailableReactions? available_reactions,
    DraftMessage? draft_message,
    MessageSender? message_sender_id,
    int? message_ttl,
    ScopeNotificationSettings? notification_settings,
    ChatJoinRequestsInfo? pending_join_requests,
    int? reply_markup_message_id,
    String? theme_name,
    VideoChat? video_chat,
    bool? default_disable_notification,
    bool? has_protected_content,
    bool? has_scheduled_messages,
    bool? is_blocked,
    bool? is_marked_as_unread,
    List<ChatFilterInfo>? chat_filters,
    int? main_chat_list_position,
    int? online_member_count,
    NotificationSettingsScope? scope,
    int? notification_group_id,
    Notification? notification,
    String? type,
    int? notification_settings_chat_id,
    int? notification_sound_id,
    int? total_count,
    List<Notification>? added_notifications,
    List<int>? removed_notification_ids,
    List<NotificationGroup>? groups,
    bool? have_delayed_notifications,
    bool? have_unreceived_notifications,
    List<int>? message_ids,
    bool? is_permanent,
    bool? from_cache,
    int? message_thread_id,
    MessageSender? sender_id,
    ChatAction? action,
    int? user_id,
    UserStatus? status,
    User? user,
    BasicGroup? basic_group,
    Supergroup? supergroup,
    SecretChat? secret_chat,
    UserFullInfo? user_full_info,
    int? basic_group_id,
    BasicGroupFullInfo? basic_group_full_info,
    int? supergroup_id,
    SupergroupFullInfo? supergroup_full_info,
    MessageContent? content,
    File? file,
    int? generation_id,
    String? original_path,
    String? destination_path,
    String? conversion,
    int? total_size,
    int? downloaded_size,
    FileDownload? file_download,
    DownloadedFileCounts? counts,
    int? file_id,
    int? complete_date,
    bool? is_paused,
    Call? call,
    GroupCall? group_call,
    int? group_call_id,
    GroupCallParticipant? participant,
    int? call_id,
    String? data,
    UserPrivacySetting? setting,
    UserPrivacySettingRules? rules,
    ChatList? chat_list,
    int? unread_unmuted_count,
    int? marked_as_unread_count,
    int? marked_as_unread_unmuted_count,
    String? name,
    OptionValue? value,
    StickerSet? sticker_set,
    StickerType? sticker_type,
    List<int>? sticker_set_ids,
    TrendingStickerSets? sticker_sets,
    bool? is_attached,
    List<int>? sticker_ids,
    List<int>? animation_ids,
    List<int>? notification_sound_ids,
    bool? for_dark_theme,
    Background? background,
    List<ChatTheme>? chat_themes,
    String? localization_target,
    String? language_pack_id,
    List<LanguagePackString>? strings,
    ConnectionState? state,
    String? terms_of_service_id,
    TermsOfService? terms_of_service,
    List<ChatNearby>? users_nearby,
    List<AttachmentMenuBot>? bots,
    int? web_app_launch_id,
    List<String>? emojis,
    ReactionType? reaction_type,
    Sticker? sticker,
    String? provider,
    List<SuggestedAction>? added_actions,
    List<SuggestedAction>? removed_actions,
    int? id,
    int? sender_user_id,
    Location? user_location,
    ChatType? chat_type,
    String? query,
    String? offset,
    String? result_id,
    String? inline_message_id,
    int? chat_instance,
    CallbackQueryPayload? payload,
    String? invoice_payload,
    Address? shipping_address,
    String? currency,
    int? total_amount,
    String? shipping_option_id,
    OrderInfo? order_info,
    String? event,
    int? timeout,
    Poll? poll,
    int? poll_id,
    List<int>? option_ids,
    int? actor_user_id,
    int? date,
    ChatInviteLink? invite_link,
    ChatMember? old_chat_member,
    ChatMember? new_chat_member,
    ChatJoinRequest? request,
  }) {
    try {
      return Update({
        "@type": special_type,
        "authorization_state": (authorization_state != null) ? authorization_state.toJson() : null,
        "message": (message != null) ? message.toJson() : null,
        "chat_id": chat_id,
        "message_id": message_id,
        "old_message_id": old_message_id,
        "error_code": error_code,
        "error_message": error_message,
        "new_content": (new_content != null) ? new_content.toJson() : null,
        "edit_date": edit_date,
        "reply_markup": (reply_markup != null) ? reply_markup.toJson() : null,
        "is_pinned": is_pinned,
        "interaction_info": (interaction_info != null) ? interaction_info.toJson() : null,
        "unread_mention_count": unread_mention_count,
        "unread_reactions": (unread_reactions != null)
            ? unread_reactions.map((e) {
                return UnreadReaction((e as Map)).toJson();
              }).toList()
            : null,
        "unread_reaction_count": unread_reaction_count,
        "chat": (chat != null) ? chat.toJson() : null,
        "title": title,
        "photo": (photo != null) ? photo.toJson() : null,
        "permissions": (permissions != null) ? permissions.toJson() : null,
        "last_message": (last_message != null) ? last_message.toJson() : null,
        "positions": (positions != null)
            ? positions.map((e) {
                return ChatPosition((e as Map)).toJson();
              }).toList()
            : null,
        "position": (position != null) ? position.toJson() : null,
        "last_read_inbox_message_id": last_read_inbox_message_id,
        "unread_count": unread_count,
        "last_read_outbox_message_id": last_read_outbox_message_id,
        "action_bar": (action_bar != null) ? action_bar.toJson() : null,
        "available_reactions": (available_reactions != null) ? available_reactions.toJson() : null,
        "draft_message": (draft_message != null) ? draft_message.toJson() : null,
        "message_sender_id": (message_sender_id != null) ? message_sender_id.toJson() : null,
        "message_ttl": message_ttl,
        "notification_settings": (notification_settings != null) ? notification_settings.toJson() : null,
        "pending_join_requests": (pending_join_requests != null) ? pending_join_requests.toJson() : null,
        "reply_markup_message_id": reply_markup_message_id,
        "theme_name": theme_name,
        "video_chat": (video_chat != null) ? video_chat.toJson() : null,
        "default_disable_notification": default_disable_notification,
        "has_protected_content": has_protected_content,
        "has_scheduled_messages": has_scheduled_messages,
        "is_blocked": is_blocked,
        "is_marked_as_unread": is_marked_as_unread,
        "chat_filters": (chat_filters != null)
            ? chat_filters.map((e) {
                return ChatFilterInfo((e as Map)).toJson();
              }).toList()
            : null,
        "main_chat_list_position": main_chat_list_position,
        "online_member_count": online_member_count,
        "scope": (scope != null) ? scope.toJson() : null,
        "notification_group_id": notification_group_id,
        "notification": (notification != null) ? notification.toJson() : null,
        "type": type,
        "notification_settings_chat_id": notification_settings_chat_id,
        "notification_sound_id": notification_sound_id,
        "total_count": total_count,
        "added_notifications": (added_notifications != null)
            ? added_notifications.map((e) {
                return Notification((e as Map)).toJson();
              }).toList()
            : null,
        "removed_notification_ids": removed_notification_ids,
        "groups": (groups != null)
            ? groups.map((e) {
                return NotificationGroup((e as Map)).toJson();
              }).toList()
            : null,
        "have_delayed_notifications": have_delayed_notifications,
        "have_unreceived_notifications": have_unreceived_notifications,
        "message_ids": message_ids,
        "is_permanent": is_permanent,
        "from_cache": from_cache,
        "message_thread_id": message_thread_id,
        "sender_id": (sender_id != null) ? sender_id.toJson() : null,
        "action": (action != null) ? action.toJson() : null,
        "user_id": user_id,
        "status": (status != null) ? status.toJson() : null,
        "user": (user != null) ? user.toJson() : null,
        "basic_group": (basic_group != null) ? basic_group.toJson() : null,
        "supergroup": (supergroup != null) ? supergroup.toJson() : null,
        "secret_chat": (secret_chat != null) ? secret_chat.toJson() : null,
        "user_full_info": (user_full_info != null) ? user_full_info.toJson() : null,
        "basic_group_id": basic_group_id,
        "basic_group_full_info": (basic_group_full_info != null) ? basic_group_full_info.toJson() : null,
        "supergroup_id": supergroup_id,
        "supergroup_full_info": (supergroup_full_info != null) ? supergroup_full_info.toJson() : null,
        "content": (content != null) ? content.toJson() : null,
        "file": (file != null) ? file.toJson() : null,
        "generation_id": generation_id,
        "original_path": original_path,
        "destination_path": destination_path,
        "conversion": conversion,
        "total_size": total_size,
        "downloaded_size": downloaded_size,
        "file_download": (file_download != null) ? file_download.toJson() : null,
        "counts": (counts != null) ? counts.toJson() : null,
        "file_id": file_id,
        "complete_date": complete_date,
        "is_paused": is_paused,
        "call": (call != null) ? call.toJson() : null,
        "group_call": (group_call != null) ? group_call.toJson() : null,
        "group_call_id": group_call_id,
        "participant": (participant != null) ? participant.toJson() : null,
        "call_id": call_id,
        "data": data,
        "setting": (setting != null) ? setting.toJson() : null,
        "rules": (rules != null) ? rules.toJson() : null,
        "chat_list": (chat_list != null) ? chat_list.toJson() : null,
        "unread_unmuted_count": unread_unmuted_count,
        "marked_as_unread_count": marked_as_unread_count,
        "marked_as_unread_unmuted_count": marked_as_unread_unmuted_count,
        "name": name,
        "value": (value != null) ? value.toJson() : null,
        "sticker_set": (sticker_set != null) ? sticker_set.toJson() : null,
        "sticker_type": (sticker_type != null) ? sticker_type.toJson() : null,
        "sticker_set_ids": sticker_set_ids,
        "sticker_sets": (sticker_sets != null) ? sticker_sets.toJson() : null,
        "is_attached": is_attached,
        "sticker_ids": sticker_ids,
        "animation_ids": animation_ids,
        "notification_sound_ids": notification_sound_ids,
        "for_dark_theme": for_dark_theme,
        "background": (background != null) ? background.toJson() : null,
        "chat_themes": (chat_themes != null)
            ? chat_themes.map((e) {
                return ChatTheme((e as Map)).toJson();
              }).toList()
            : null,
        "localization_target": localization_target,
        "language_pack_id": language_pack_id,
        "strings": (strings != null)
            ? strings.map((e) {
                return LanguagePackString((e as Map)).toJson();
              }).toList()
            : null,
        "state": (state != null) ? state.toJson() : null,
        "terms_of_service_id": terms_of_service_id,
        "terms_of_service": (terms_of_service != null) ? terms_of_service.toJson() : null,
        "users_nearby": (users_nearby != null)
            ? users_nearby.map((e) {
                return ChatNearby((e as Map)).toJson();
              }).toList()
            : null,
        "bots": (bots != null)
            ? bots.map((e) {
                return AttachmentMenuBot((e as Map)).toJson();
              }).toList()
            : null,
        "web_app_launch_id": web_app_launch_id,
        "emojis": emojis,
        "reaction_type": (reaction_type != null) ? reaction_type.toJson() : null,
        "sticker": (sticker != null) ? sticker.toJson() : null,
        "provider": provider,
        "added_actions": (added_actions != null)
            ? added_actions.map((e) {
                return SuggestedAction((e as Map)).toJson();
              }).toList()
            : null,
        "removed_actions": (removed_actions != null)
            ? removed_actions.map((e) {
                return SuggestedAction((e as Map)).toJson();
              }).toList()
            : null,
        "id": id,
        "sender_user_id": sender_user_id,
        "user_location": (user_location != null) ? user_location.toJson() : null,
        "chat_type": (chat_type != null) ? chat_type.toJson() : null,
        "query": query,
        "offset": offset,
        "result_id": result_id,
        "inline_message_id": inline_message_id,
        "chat_instance": chat_instance,
        "payload": (payload != null) ? payload.toJson() : null,
        "invoice_payload": invoice_payload,
        "shipping_address": (shipping_address != null) ? shipping_address.toJson() : null,
        "currency": currency,
        "total_amount": total_amount,
        "shipping_option_id": shipping_option_id,
        "order_info": (order_info != null) ? order_info.toJson() : null,
        "event": event,
        "timeout": timeout,
        "poll": (poll != null) ? poll.toJson() : null,
        "poll_id": poll_id,
        "option_ids": option_ids,
        "actor_user_id": actor_user_id,
        "date": date,
        "invite_link": (invite_link != null) ? invite_link.toJson() : null,
        "old_chat_member": (old_chat_member != null) ? old_chat_member.toJson() : null,
        "new_chat_member": (new_chat_member != null) ? new_chat_member.toJson() : null,
        "request": (request != null) ? request.toJson() : null,
      });
    } catch (e) {
      return Update({
        "@type": "error",
        "error": "${e}",
        "message": "error method Update.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  AuthorizationState? get authorization_state {
    try {
      return (rawData[authorization_state] as AuthorizationState);
    } catch (e) {
      return null;
    }
  }

  Message? get message {
    try {
      return (rawData[message] as Message);
    } catch (e) {
      return null;
    }
  }

  int? get chat_id {
    try {
      return (rawData[chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get message_id {
    try {
      return (rawData[message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get old_message_id {
    try {
      return (rawData[old_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get error_code {
    try {
      return (rawData[error_code] as int);
    } catch (e) {
      return null;
    }
  }

  String? get error_message {
    try {
      return (rawData[error_message] as String);
    } catch (e) {
      return null;
    }
  }

  MessageContent? get new_content {
    try {
      return (rawData[new_content] as MessageContent);
    } catch (e) {
      return null;
    }
  }

  int? get edit_date {
    try {
      return (rawData[edit_date] as int);
    } catch (e) {
      return null;
    }
  }

  ReplyMarkup? get reply_markup {
    try {
      return (rawData[reply_markup] as ReplyMarkup);
    } catch (e) {
      return null;
    }
  }

  bool? get is_pinned {
    try {
      return (rawData[is_pinned] as bool);
    } catch (e) {
      return null;
    }
  }

  MessageInteractionInfo? get interaction_info {
    try {
      return (rawData[interaction_info] as MessageInteractionInfo);
    } catch (e) {
      return null;
    }
  }

  int? get unread_mention_count {
    try {
      return (rawData[unread_mention_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<UnreadReaction> get unread_reactions {
    try {
      return (rawData[unread_reactions] as List<UnreadReaction>);
    } catch (e) {
      return [];
    }
  }

  int? get unread_reaction_count {
    try {
      return (rawData[unread_reaction_count] as int);
    } catch (e) {
      return null;
    }
  }

  Chat? get chat {
    try {
      return (rawData[chat] as Chat);
    } catch (e) {
      return null;
    }
  }

  String? get title {
    try {
      return (rawData[title] as String);
    } catch (e) {
      return null;
    }
  }

  ChatPhotoInfo? get photo {
    try {
      return (rawData[photo] as ChatPhotoInfo);
    } catch (e) {
      return null;
    }
  }

  ChatPermissions? get permissions {
    try {
      return (rawData[permissions] as ChatPermissions);
    } catch (e) {
      return null;
    }
  }

  Message? get last_message {
    try {
      return (rawData[last_message] as Message);
    } catch (e) {
      return null;
    }
  }

  List<ChatPosition> get positions {
    try {
      return (rawData[positions] as List<ChatPosition>);
    } catch (e) {
      return [];
    }
  }

  ChatPosition? get position {
    try {
      return (rawData[position] as ChatPosition);
    } catch (e) {
      return null;
    }
  }

  int? get last_read_inbox_message_id {
    try {
      return (rawData[last_read_inbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get unread_count {
    try {
      return (rawData[unread_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get last_read_outbox_message_id {
    try {
      return (rawData[last_read_outbox_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  ChatActionBar? get action_bar {
    try {
      return (rawData[action_bar] as ChatActionBar);
    } catch (e) {
      return null;
    }
  }

  ChatAvailableReactions? get available_reactions {
    try {
      return (rawData[available_reactions] as ChatAvailableReactions);
    } catch (e) {
      return null;
    }
  }

  DraftMessage? get draft_message {
    try {
      return (rawData[draft_message] as DraftMessage);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get message_sender_id {
    try {
      return (rawData[message_sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  int? get message_ttl {
    try {
      return (rawData[message_ttl] as int);
    } catch (e) {
      return null;
    }
  }

  ScopeNotificationSettings? get notification_settings {
    try {
      return (rawData[notification_settings] as ScopeNotificationSettings);
    } catch (e) {
      return null;
    }
  }

  ChatJoinRequestsInfo? get pending_join_requests {
    try {
      return (rawData[pending_join_requests] as ChatJoinRequestsInfo);
    } catch (e) {
      return null;
    }
  }

  int? get reply_markup_message_id {
    try {
      return (rawData[reply_markup_message_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get theme_name {
    try {
      return (rawData[theme_name] as String);
    } catch (e) {
      return null;
    }
  }

  VideoChat? get video_chat {
    try {
      return (rawData[video_chat] as VideoChat);
    } catch (e) {
      return null;
    }
  }

  bool? get default_disable_notification {
    try {
      return (rawData[default_disable_notification] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_protected_content {
    try {
      return (rawData[has_protected_content] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get has_scheduled_messages {
    try {
      return (rawData[has_scheduled_messages] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_blocked {
    try {
      return (rawData[is_blocked] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get is_marked_as_unread {
    try {
      return (rawData[is_marked_as_unread] as bool);
    } catch (e) {
      return null;
    }
  }

  List<ChatFilterInfo> get chat_filters {
    try {
      return (rawData[chat_filters] as List<ChatFilterInfo>);
    } catch (e) {
      return [];
    }
  }

  int? get main_chat_list_position {
    try {
      return (rawData[main_chat_list_position] as int);
    } catch (e) {
      return null;
    }
  }

  int? get online_member_count {
    try {
      return (rawData[online_member_count] as int);
    } catch (e) {
      return null;
    }
  }

  NotificationSettingsScope? get scope {
    try {
      return (rawData[scope] as NotificationSettingsScope);
    } catch (e) {
      return null;
    }
  }

  int? get notification_group_id {
    try {
      return (rawData[notification_group_id] as int);
    } catch (e) {
      return null;
    }
  }

  Notification? get notification {
    try {
      return (rawData[notification] as Notification);
    } catch (e) {
      return null;
    }
  }

  String? get type {
    try {
      return (rawData[type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get notification_settings_chat_id {
    try {
      return (rawData[notification_settings_chat_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get notification_sound_id {
    try {
      return (rawData[notification_sound_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get total_count {
    try {
      return (rawData[total_count] as int);
    } catch (e) {
      return null;
    }
  }

  List<Notification> get added_notifications {
    try {
      return (rawData[added_notifications] as List<Notification>);
    } catch (e) {
      return [];
    }
  }

  List<int> get removed_notification_ids {
    try {
      return (rawData[removed_notification_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<NotificationGroup> get groups {
    try {
      return (rawData[groups] as List<NotificationGroup>);
    } catch (e) {
      return [];
    }
  }

  bool? get have_delayed_notifications {
    try {
      return (rawData[have_delayed_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get have_unreceived_notifications {
    try {
      return (rawData[have_unreceived_notifications] as bool);
    } catch (e) {
      return null;
    }
  }

  List<int> get message_ids {
    try {
      return (rawData[message_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  bool? get is_permanent {
    try {
      return (rawData[is_permanent] as bool);
    } catch (e) {
      return null;
    }
  }

  bool? get from_cache {
    try {
      return (rawData[from_cache] as bool);
    } catch (e) {
      return null;
    }
  }

  int? get message_thread_id {
    try {
      return (rawData[message_thread_id] as int);
    } catch (e) {
      return null;
    }
  }

  MessageSender? get sender_id {
    try {
      return (rawData[sender_id] as MessageSender);
    } catch (e) {
      return null;
    }
  }

  ChatAction? get action {
    try {
      return (rawData[action] as ChatAction);
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      return (rawData[user_id] as int);
    } catch (e) {
      return null;
    }
  }

  UserStatus? get status {
    try {
      return (rawData[status] as UserStatus);
    } catch (e) {
      return null;
    }
  }

  User? get user {
    try {
      return (rawData[user] as User);
    } catch (e) {
      return null;
    }
  }

  BasicGroup? get basic_group {
    try {
      return (rawData[basic_group] as BasicGroup);
    } catch (e) {
      return null;
    }
  }

  Supergroup? get supergroup {
    try {
      return (rawData[supergroup] as Supergroup);
    } catch (e) {
      return null;
    }
  }

  SecretChat? get secret_chat {
    try {
      return (rawData[secret_chat] as SecretChat);
    } catch (e) {
      return null;
    }
  }

  UserFullInfo? get user_full_info {
    try {
      return (rawData[user_full_info] as UserFullInfo);
    } catch (e) {
      return null;
    }
  }

  int? get basic_group_id {
    try {
      return (rawData[basic_group_id] as int);
    } catch (e) {
      return null;
    }
  }

  BasicGroupFullInfo? get basic_group_full_info {
    try {
      return (rawData[basic_group_full_info] as BasicGroupFullInfo);
    } catch (e) {
      return null;
    }
  }

  int? get supergroup_id {
    try {
      return (rawData[supergroup_id] as int);
    } catch (e) {
      return null;
    }
  }

  SupergroupFullInfo? get supergroup_full_info {
    try {
      return (rawData[supergroup_full_info] as SupergroupFullInfo);
    } catch (e) {
      return null;
    }
  }

  MessageContent? get content {
    try {
      return (rawData[content] as MessageContent);
    } catch (e) {
      return null;
    }
  }

  File? get file {
    try {
      return (rawData[file] as File);
    } catch (e) {
      return null;
    }
  }

  int? get generation_id {
    try {
      return (rawData[generation_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get original_path {
    try {
      return (rawData[original_path] as String);
    } catch (e) {
      return null;
    }
  }

  String? get destination_path {
    try {
      return (rawData[destination_path] as String);
    } catch (e) {
      return null;
    }
  }

  String? get conversion {
    try {
      return (rawData[conversion] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_size {
    try {
      return (rawData[total_size] as int);
    } catch (e) {
      return null;
    }
  }

  int? get downloaded_size {
    try {
      return (rawData[downloaded_size] as int);
    } catch (e) {
      return null;
    }
  }

  FileDownload? get file_download {
    try {
      return (rawData[file_download] as FileDownload);
    } catch (e) {
      return null;
    }
  }

  DownloadedFileCounts? get counts {
    try {
      return (rawData[counts] as DownloadedFileCounts);
    } catch (e) {
      return null;
    }
  }

  int? get file_id {
    try {
      return (rawData[file_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get complete_date {
    try {
      return (rawData[complete_date] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get is_paused {
    try {
      return (rawData[is_paused] as bool);
    } catch (e) {
      return null;
    }
  }

  Call? get call {
    try {
      return (rawData[call] as Call);
    } catch (e) {
      return null;
    }
  }

  GroupCall? get group_call {
    try {
      return (rawData[group_call] as GroupCall);
    } catch (e) {
      return null;
    }
  }

  int? get group_call_id {
    try {
      return (rawData[group_call_id] as int);
    } catch (e) {
      return null;
    }
  }

  GroupCallParticipant? get participant {
    try {
      return (rawData[participant] as GroupCallParticipant);
    } catch (e) {
      return null;
    }
  }

  int? get call_id {
    try {
      return (rawData[call_id] as int);
    } catch (e) {
      return null;
    }
  }

  String? get data {
    try {
      return (rawData[data] as String);
    } catch (e) {
      return null;
    }
  }

  UserPrivacySetting? get setting {
    try {
      return (rawData[setting] as UserPrivacySetting);
    } catch (e) {
      return null;
    }
  }

  UserPrivacySettingRules? get rules {
    try {
      return (rawData[rules] as UserPrivacySettingRules);
    } catch (e) {
      return null;
    }
  }

  ChatList? get chat_list {
    try {
      return (rawData[chat_list] as ChatList);
    } catch (e) {
      return null;
    }
  }

  int? get unread_unmuted_count {
    try {
      return (rawData[unread_unmuted_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get marked_as_unread_count {
    try {
      return (rawData[marked_as_unread_count] as int);
    } catch (e) {
      return null;
    }
  }

  int? get marked_as_unread_unmuted_count {
    try {
      return (rawData[marked_as_unread_unmuted_count] as int);
    } catch (e) {
      return null;
    }
  }

  String? get name {
    try {
      return (rawData[name] as String);
    } catch (e) {
      return null;
    }
  }

  OptionValue? get value {
    try {
      return (rawData[value] as OptionValue);
    } catch (e) {
      return null;
    }
  }

  StickerSet? get sticker_set {
    try {
      return (rawData[sticker_set] as StickerSet);
    } catch (e) {
      return null;
    }
  }

  StickerType? get sticker_type {
    try {
      return (rawData[sticker_type] as StickerType);
    } catch (e) {
      return null;
    }
  }

  List<int> get sticker_set_ids {
    try {
      return (rawData[sticker_set_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  TrendingStickerSets? get sticker_sets {
    try {
      return (rawData[sticker_sets] as TrendingStickerSets);
    } catch (e) {
      return null;
    }
  }

  bool? get is_attached {
    try {
      return (rawData[is_attached] as bool);
    } catch (e) {
      return null;
    }
  }

  List<int> get sticker_ids {
    try {
      return (rawData[sticker_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get animation_ids {
    try {
      return (rawData[animation_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  List<int> get notification_sound_ids {
    try {
      return (rawData[notification_sound_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  bool? get for_dark_theme {
    try {
      return (rawData[for_dark_theme] as bool);
    } catch (e) {
      return null;
    }
  }

  Background? get background {
    try {
      return (rawData[background] as Background);
    } catch (e) {
      return null;
    }
  }

  List<ChatTheme> get chat_themes {
    try {
      return (rawData[chat_themes] as List<ChatTheme>);
    } catch (e) {
      return [];
    }
  }

  String? get localization_target {
    try {
      return (rawData[localization_target] as String);
    } catch (e) {
      return null;
    }
  }

  String? get language_pack_id {
    try {
      return (rawData[language_pack_id] as String);
    } catch (e) {
      return null;
    }
  }

  List<LanguagePackString> get strings {
    try {
      return (rawData[strings] as List<LanguagePackString>);
    } catch (e) {
      return [];
    }
  }

  ConnectionState? get state {
    try {
      return (rawData[state] as ConnectionState);
    } catch (e) {
      return null;
    }
  }

  String? get terms_of_service_id {
    try {
      return (rawData[terms_of_service_id] as String);
    } catch (e) {
      return null;
    }
  }

  TermsOfService? get terms_of_service {
    try {
      return (rawData[terms_of_service] as TermsOfService);
    } catch (e) {
      return null;
    }
  }

  List<ChatNearby> get users_nearby {
    try {
      return (rawData[users_nearby] as List<ChatNearby>);
    } catch (e) {
      return [];
    }
  }

  List<AttachmentMenuBot> get bots {
    try {
      return (rawData[bots] as List<AttachmentMenuBot>);
    } catch (e) {
      return [];
    }
  }

  int? get web_app_launch_id {
    try {
      return (rawData[web_app_launch_id] as int);
    } catch (e) {
      return null;
    }
  }

  List<String> get emojis {
    try {
      return (rawData[emojis] as List<String>);
    } catch (e) {
      return [];
    }
  }

  ReactionType? get reaction_type {
    try {
      return (rawData[reaction_type] as ReactionType);
    } catch (e) {
      return null;
    }
  }

  Sticker? get sticker {
    try {
      return (rawData[sticker] as Sticker);
    } catch (e) {
      return null;
    }
  }

  String? get provider {
    try {
      return (rawData[provider] as String);
    } catch (e) {
      return null;
    }
  }

  List<SuggestedAction> get added_actions {
    try {
      return (rawData[added_actions] as List<SuggestedAction>);
    } catch (e) {
      return [];
    }
  }

  List<SuggestedAction> get removed_actions {
    try {
      return (rawData[removed_actions] as List<SuggestedAction>);
    } catch (e) {
      return [];
    }
  }

  int? get id {
    try {
      return (rawData[id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get sender_user_id {
    try {
      return (rawData[sender_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  Location? get user_location {
    try {
      return (rawData[user_location] as Location);
    } catch (e) {
      return null;
    }
  }

  ChatType? get chat_type {
    try {
      return (rawData[chat_type] as ChatType);
    } catch (e) {
      return null;
    }
  }

  String? get query {
    try {
      return (rawData[query] as String);
    } catch (e) {
      return null;
    }
  }

  String? get offset {
    try {
      return (rawData[offset] as String);
    } catch (e) {
      return null;
    }
  }

  String? get result_id {
    try {
      return (rawData[result_id] as String);
    } catch (e) {
      return null;
    }
  }

  String? get inline_message_id {
    try {
      return (rawData[inline_message_id] as String);
    } catch (e) {
      return null;
    }
  }

  int? get chat_instance {
    try {
      return (rawData[chat_instance] as int);
    } catch (e) {
      return null;
    }
  }

  CallbackQueryPayload? get payload {
    try {
      return (rawData[payload] as CallbackQueryPayload);
    } catch (e) {
      return null;
    }
  }

  String? get invoice_payload {
    try {
      return (rawData[invoice_payload] as String);
    } catch (e) {
      return null;
    }
  }

  Address? get shipping_address {
    try {
      return (rawData[shipping_address] as Address);
    } catch (e) {
      return null;
    }
  }

  String? get currency {
    try {
      return (rawData[currency] as String);
    } catch (e) {
      return null;
    }
  }

  int? get total_amount {
    try {
      return (rawData[total_amount] as int);
    } catch (e) {
      return null;
    }
  }

  String? get shipping_option_id {
    try {
      return (rawData[shipping_option_id] as String);
    } catch (e) {
      return null;
    }
  }

  OrderInfo? get order_info {
    try {
      return (rawData[order_info] as OrderInfo);
    } catch (e) {
      return null;
    }
  }

  String? get event {
    try {
      return (rawData[event] as String);
    } catch (e) {
      return null;
    }
  }

  int? get timeout {
    try {
      return (rawData[timeout] as int);
    } catch (e) {
      return null;
    }
  }

  Poll? get poll {
    try {
      return (rawData[poll] as Poll);
    } catch (e) {
      return null;
    }
  }

  int? get poll_id {
    try {
      return (rawData[poll_id] as int);
    } catch (e) {
      return null;
    }
  }

  List<int> get option_ids {
    try {
      return (rawData[option_ids] as List<int>);
    } catch (e) {
      return [];
    }
  }

  int? get actor_user_id {
    try {
      return (rawData[actor_user_id] as int);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  ChatInviteLink? get invite_link {
    try {
      return (rawData[invite_link] as ChatInviteLink);
    } catch (e) {
      return null;
    }
  }

  ChatMember? get old_chat_member {
    try {
      return (rawData[old_chat_member] as ChatMember);
    } catch (e) {
      return null;
    }
  }

  ChatMember? get new_chat_member {
    try {
      return (rawData[new_chat_member] as ChatMember);
    } catch (e) {
      return null;
    }
  }

  ChatJoinRequest? get request {
    try {
      return (rawData[request] as ChatJoinRequest);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class Updates {
  late Map rawData;
  Updates(this.rawData);

  factory Updates.create({
    String special_type = "updates",
    List<Update>? updates,
  }) {
    try {
      return Updates({
        "@type": special_type,
        "updates": (updates != null)
            ? updates.map((e) {
                return Update((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return Updates({
        "@type": "error",
        "error": "${e}",
        "message": "error method Updates.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<Update> get updates {
    try {
      return (rawData[updates] as List<Update>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LogStream {
  late Map rawData;
  LogStream(this.rawData);

  factory LogStream.create({
    String special_type = "logStreamDefault",
    String? path,
    int? max_file_size,
    bool? redirect_stderr,
  }) {
    try {
      return LogStream({
        "@type": special_type,
        "path": path,
        "max_file_size": max_file_size,
        "redirect_stderr": redirect_stderr,
      });
    } catch (e) {
      return LogStream({
        "@type": "error",
        "error": "${e}",
        "message": "error method LogStream.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get path {
    try {
      return (rawData[path] as String);
    } catch (e) {
      return null;
    }
  }

  int? get max_file_size {
    try {
      return (rawData[max_file_size] as int);
    } catch (e) {
      return null;
    }
  }

  bool? get redirect_stderr {
    try {
      return (rawData[redirect_stderr] as bool);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LogVerbosityLevel {
  late Map rawData;
  LogVerbosityLevel(this.rawData);

  factory LogVerbosityLevel.create({
    String special_type = "logVerbosityLevel",
    int? verbosity_level,
  }) {
    try {
      return LogVerbosityLevel({
        "@type": special_type,
        "verbosity_level": verbosity_level,
      });
    } catch (e) {
      return LogVerbosityLevel({
        "@type": "error",
        "error": "${e}",
        "message": "error method LogVerbosityLevel.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get verbosity_level {
    try {
      return (rawData[verbosity_level] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class LogTags {
  late Map rawData;
  LogTags(this.rawData);

  factory LogTags.create({
    String special_type = "logTags",
    List<String>? tags,
  }) {
    try {
      return LogTags({
        "@type": special_type,
        "tags": tags,
      });
    } catch (e) {
      return LogTags({
        "@type": "error",
        "error": "${e}",
        "message": "error method LogTags.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get tags {
    try {
      return (rawData[tags] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class UserSupportInfo {
  late Map rawData;
  UserSupportInfo(this.rawData);

  factory UserSupportInfo.create({
    String special_type = "userSupportInfo",
    FormattedText? message,
    String? author,
    int? date,
  }) {
    try {
      return UserSupportInfo({
        "@type": special_type,
        "message": (message != null) ? message.toJson() : null,
        "author": author,
        "date": date,
      });
    } catch (e) {
      return UserSupportInfo({
        "@type": "error",
        "error": "${e}",
        "message": "error method UserSupportInfo.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  FormattedText? get message {
    try {
      return (rawData[message] as FormattedText);
    } catch (e) {
      return null;
    }
  }

  String? get author {
    try {
      return (rawData[author] as String);
    } catch (e) {
      return null;
    }
  }

  int? get date {
    try {
      return (rawData[date] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestInt {
  late Map rawData;
  TestInt(this.rawData);

  factory TestInt.create({
    String special_type = "testInt",
    int? value,
  }) {
    try {
      return TestInt({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return TestInt({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestInt.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  int? get value {
    try {
      return (rawData[value] as int);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestString {
  late Map rawData;
  TestString(this.rawData);

  factory TestString.create({
    String special_type = "testString",
    String? value,
  }) {
    try {
      return TestString({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return TestString({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestString.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestBytes {
  late Map rawData;
  TestBytes(this.rawData);

  factory TestBytes.create({
    String special_type = "testBytes",
    String? value,
  }) {
    try {
      return TestBytes({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return TestBytes({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestBytes.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  String? get value {
    try {
      return (rawData[value] as String);
    } catch (e) {
      return null;
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestVectorInt {
  late Map rawData;
  TestVectorInt(this.rawData);

  factory TestVectorInt.create({
    String special_type = "testVectorInt",
    List<int>? value,
  }) {
    try {
      return TestVectorInt({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return TestVectorInt({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestVectorInt.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<int> get value {
    try {
      return (rawData[value] as List<int>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestVectorIntObject {
  late Map rawData;
  TestVectorIntObject(this.rawData);

  factory TestVectorIntObject.create({
    String special_type = "testVectorIntObject",
    List<TestInt>? value,
  }) {
    try {
      return TestVectorIntObject({
        "@type": special_type,
        "value": (value != null)
            ? value.map((e) {
                return TestInt((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return TestVectorIntObject({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestVectorIntObject.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<TestInt> get value {
    try {
      return (rawData[value] as List<TestInt>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestVectorString {
  late Map rawData;
  TestVectorString(this.rawData);

  factory TestVectorString.create({
    String special_type = "testVectorString",
    List<String>? value,
  }) {
    try {
      return TestVectorString({
        "@type": special_type,
        "value": value,
      });
    } catch (e) {
      return TestVectorString({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestVectorString.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<String> get value {
    try {
      return (rawData[value] as List<String>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}

class TestVectorStringObject {
  late Map rawData;
  TestVectorStringObject(this.rawData);

  factory TestVectorStringObject.create({
    String special_type = "testVectorStringObject",
    List<TestString>? value,
  }) {
    try {
      return TestVectorStringObject({
        "@type": special_type,
        "value": (value != null)
            ? value.map((e) {
                return TestString((e as Map)).toJson();
              }).toList()
            : null,
      });
    } catch (e) {
      return TestVectorStringObject({
        "@type": "error",
        "error": "${e}",
        "message": "error method TestVectorStringObject.create",
      });
    }
  }

  String? get special_type {
    try {
      return (rawData[special_type] as String);
    } catch (e) {
      return null;
    }
  }

  List<TestString> get value {
    try {
      return (rawData[value] as List<TestString>);
    } catch (e) {
      return [];
    }
  }

  Map toMap() {
    return rawData;
  }

  Map toJson() {
    return rawData;
  }

  @override
  String toString() {
    return json.encode(rawData);
  }
}
