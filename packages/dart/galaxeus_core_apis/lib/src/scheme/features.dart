// ignore_for_file: non_constant_identifier_names

part of galaxeus_core_apis;

class Features {
  late Map rawData;

  Features(this.rawData);

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

  Content? get content {
    try {
      if (rawData["content"] is Map == false) {
        return null;
      }
      return Content(rawData["content"] as Map);
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

class Content {
  late Map rawData;

  Content(this.rawData);

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

  bool? get is_media_group {
    try {
      if (rawData["is_media_group"] is bool == false) {
        return null;
      }
      return rawData["is_media_group"] as bool;
    } catch (e) {
      return null;
    }
  }

  List<Medias?>? get medias {
    try {
      if (rawData["medias"] is List == false) {
        return null;
      }
      return (rawData["medias"] as List)
          .map((e) => Medias(e as Map))
          .toList()
          .cast<Medias>();
    } catch (e) {
      return null;
    }
  }

  ContentVideo? get video {
    try {
      if (rawData["video"] is Map == false) {
        return null;
      }
      return ContentVideo(rawData["video"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentAudio? get audio {
    try {
      if (rawData["audio"] is Map == false) {
        return null;
      }
      return ContentAudio(rawData["audio"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentVoice? get voice {
    try {
      if (rawData["voice"] is Map == false) {
        return null;
      }
      return ContentVoice(rawData["voice"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentDocument? get document {
    try {
      if (rawData["document"] is Map == false) {
        return null;
      }
      return ContentDocument(rawData["document"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentPhoto? get photo {
    try {
      if (rawData["photo"] is Map == false) {
        return null;
      }
      return ContentPhoto(rawData["photo"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentSticker? get sticker {
    try {
      if (rawData["sticker"] is Map == false) {
        return null;
      }
      return ContentSticker(rawData["sticker"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentContact? get contact {
    try {
      if (rawData["contact"] is Map == false) {
        return null;
      }
      return ContentContact(rawData["contact"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentLocation? get location {
    try {
      if (rawData["location"] is Map == false) {
        return null;
      }
      return ContentLocation(rawData["location"] as Map);
    } catch (e) {
      return null;
    }
  }

  ContentText? get text {
    try {
      if (rawData["text"] is Map == false) {
        return null;
      }
      return ContentText(rawData["text"] as Map);
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

class Medias {
  late Map rawData;

  Medias(this.rawData);

  Content? get content {
    try {
      if (rawData["content"] is Map == false) {
        return null;
      }
      return Content(rawData["content"] as Map);
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

class ContentVideo {
  late Map rawData;

  ContentVideo(this.rawData);

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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      if (rawData["duration"] is int == false) {
        return null;
      }
      return rawData["duration"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get file_size {
    try {
      if (rawData["file_size"] is int == false) {
        return null;
      }
      return rawData["file_size"] as int;
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

class ContentAudio {
  late Map rawData;

  ContentAudio(this.rawData);

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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      if (rawData["file_name"] is String == false) {
        return null;
      }
      return rawData["file_name"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_title {
    try {
      if (rawData["file_title"] is String == false) {
        return null;
      }
      return rawData["file_title"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      if (rawData["duration"] is int == false) {
        return null;
      }
      return rawData["duration"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get file_size {
    try {
      if (rawData["file_size"] is int == false) {
        return null;
      }
      return rawData["file_size"] as int;
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

class ContentVoice {
  late Map rawData;

  ContentVoice(this.rawData);

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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      if (rawData["duration"] is int == false) {
        return null;
      }
      return rawData["duration"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get file_size {
    try {
      if (rawData["file_size"] is int == false) {
        return null;
      }
      return rawData["file_size"] as int;
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

class ContentDocument {
  late Map rawData;

  ContentDocument(this.rawData);

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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get file_name {
    try {
      if (rawData["file_name"] is String == false) {
        return null;
      }
      return rawData["file_name"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get duration {
    try {
      if (rawData["duration"] is int == false) {
        return null;
      }
      return rawData["duration"] as int;
    } catch (e) {
      return null;
    }
  }

  int? get file_size {
    try {
      if (rawData["file_size"] is int == false) {
        return null;
      }
      return rawData["file_size"] as int;
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

class ContentPhoto {
  late Map rawData;

  ContentPhoto(this.rawData);

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

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
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

class ContentSticker {
  late Map rawData;

  ContentSticker(this.rawData);

  String? get emoji {
    try {
      if (rawData["emoji"] is String == false) {
        return null;
      }
      return rawData["emoji"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get set_name {
    try {
      if (rawData["set_name"] is String == false) {
        return null;
      }
      return rawData["set_name"] as String;
    } catch (e) {
      return null;
    }
  }

  bool? get is_animated {
    try {
      if (rawData["is_animated"] is bool == false) {
        return null;
      }
      return rawData["is_animated"] as bool;
    } catch (e) {
      return null;
    }
  }

  String? get file_id {
    try {
      if (rawData["file_id"] is String == false) {
        return null;
      }
      return rawData["file_id"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get file_unique_id {
    try {
      if (rawData["file_unique_id"] is String == false) {
        return null;
      }
      return rawData["file_unique_id"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get file_size {
    try {
      if (rawData["file_size"] is int == false) {
        return null;
      }
      return rawData["file_size"] as int;
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

class ContentContact {
  late Map rawData;

  ContentContact(this.rawData);

  String? get phone_number {
    try {
      if (rawData["phone_number"] is String == false) {
        return null;
      }
      return rawData["phone_number"] as String;
    } catch (e) {
      return null;
    }
  }

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

  String? get last_name {
    try {
      if (rawData["last_name"] is String == false) {
        return null;
      }
      return rawData["last_name"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get vcard {
    try {
      if (rawData["vcard"] is String == false) {
        return null;
      }
      return rawData["vcard"] as String;
    } catch (e) {
      return null;
    }
  }

  int? get user_id {
    try {
      if (rawData["user_id"] is int == false) {
        return null;
      }
      return rawData["user_id"] as int;
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

class ContentLocation {
  late Map rawData;

  ContentLocation(this.rawData);

  String? get latitude {
    try {
      if (rawData["latitude"] is String == false) {
        return null;
      }
      return rawData["latitude"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get longitude {
    try {
      if (rawData["longitude"] is String == false) {
        return null;
      }
      return rawData["longitude"] as String;
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

class ContentText {
  late Map rawData;

  ContentText(this.rawData);

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

  String? get text {
    try {
      if (rawData["text"] is String == false) {
        return null;
      }
      return rawData["text"] as String;
    } catch (e) {
      return null;
    }
  }

  String? get caption {
    try {
      if (rawData["caption"] is String == false) {
        return null;
      }
      return rawData["caption"] as String;
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
