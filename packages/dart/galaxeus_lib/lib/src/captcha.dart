part of galaxeus_lib;

class Captcha {
  List<Map<String, String>> animalEmoji = [
    {"emoji": "🦊️", "name": "fox"},
    {"emoji": "🐒️", "name": "monkey"},
    {"emoji": "🦍️", "name": "gorilla"},
    {"emoji": "🐯️", "name": "tiger"},
    {"emoji": "🦖️", "name": "dinosaur"},
    {"emoji": "🐝️", "name": "bee"},
    {"emoji": "🐘️", "name": "elephant"},
    {"emoji": "🐷️", "name": "pig"},
    {"emoji": "🐍️", "name": "snake"},
    {"emoji": "🦂️", "name": "scorpion"}
  ];

  Captcha();

  CaptchaResult animalCaptcha({List<Map>? emojis, int captchaLength = 5}) {
    emojis ??= animalEmoji;
    if (captchaLength > emojis.length) {
      throw "captchaLength melebihi emojis length";
    }
    Map jsonKey = emojis[Random().nextInt(emojis.length)];
    late List<Map> result = [jsonKey];

    while (true) {
      if (result.length == captchaLength) {
        return CaptchaResult(
          answer: jsonKey,
          captchas: result,
        );
      }
      Map randomEmoji = emojis[Random().nextInt(emojis.length)];
      if (!DeepCollectionEquality().equals(randomEmoji, jsonKey)) {
        late bool isNotFoundSame = true;
        for (var index = 0; index < result.length; index++) {
          if (DeepCollectionEquality().equals(randomEmoji, result[index])) {
            isNotFoundSame = false;
          }
        }
        if (isNotFoundSame) {
          result.add(randomEmoji);
          result.shuffle();
        }
      }
    }
  }
}

class CaptchaResult {
  final Map answer;
  final List captchas;
  CaptchaResult({
    required this.answer,
    required this.captchas,
  });
  Map toJson() {
    return {
      "answer": answer,
      "captchas": captchas,
    };
  }
}
