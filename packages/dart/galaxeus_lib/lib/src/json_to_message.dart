// ignore_for_file: unnecessary_brace_in_string_interps, empty_catches
part of galaxeus_lib;

String jsonToMessage(
  Map data, {
  bool isHtml = false,
  required Map jsonFullMedia,
  bool isRoot = true,
  String space = "",
}) {
  if (!isRoot && space.isEmpty) {
    space = "  ";
  }
  String parseHtmlLink(String text, String links) {
    return "<a href='$links'>$text</a>";
  }

  String parseHtmlCode(String text) {
    return "<code>$text</code>";
  }

  late String message = "";
  data.forEach((key, loopData) {
    try {
      if (loopData is Map) {
        message += "\n${space}${key}: ${jsonToMessage(
          loopData,
          isHtml: isHtml,
          jsonFullMedia: jsonFullMedia,
          isRoot: false,
          space: space * 8,
        )}";
      } else if (loopData is List) {
        message += "\n${space}${key}: ";
        String listToMessage({
          required List datas,
        }) {
          late String message = "";
          for (var i = 0; i < datas.length; i++) {
            var loop_data = datas[i];
            if (loop_data is Map) {
              message += jsonToMessage(
                loop_data,
                isHtml: isHtml,
                jsonFullMedia: jsonFullMedia,
                isRoot: false,
                space: space * 8,
              );
            } else if (loop_data is List) {
              message += "\n${listToMessage(datas: loop_data)}";
            } else {
              message += "\n${loop_data}";
            }
          }
          return message;
        }
        message += listToMessage(datas: loopData);
      } else {
        if (loopData is bool) {
          loopData = (jsonFullMedia[loopData] ?? loopData);
        } else if (loopData is int) {
          if (isHtml) {
            loopData = parseHtmlCode(loopData.toString());
          }
        } else {
          if (isHtml) {
            loopData = parseHtmlCode(loopData.toString());
          }
        }
        if (key == "id") {
          if (isHtml) {
            loopData = parseHtmlCode(loopData.toString());
          }
        }
        if (key == "username") {
          loopData = ("@${data[key]}");
        }
        if (key == "first_name") {
          if (data["last_name"] is String) {
            loopData = (data[key] + " " + data["last_name"]);
          }
          if (isHtml) {
            loopData = (parseHtmlLink(data[key].toString(), "tg://user?id=${data["id"].toString()}"));
          }
        }
        if (key == "language_code") {
          loopData = (jsonFullMedia["language_code_${data[key]}"] ?? loopData.toString());
        }
        message += "\n${space}${(jsonFullMedia[key] != null) ? jsonFullMedia[key] : key}: $loopData";
      }
    } catch (e) {}
  });
  return message;
}
