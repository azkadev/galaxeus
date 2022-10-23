// ignore_for_file: empty_catches

part of galaxeus_lib;

Future<Response> fetch(
  String url, {
  Map<String, dynamic>? options,
  Encoding? encoding,
}) async {
  options ??= {};
  Map<String, String> headers = {};
  Object? body;
  if (options["headers"] is Map) {
    try {
      headers = (options["headers"] as Map).cast<String, String>();
    } catch (e) {}
  }
  if (options.containsKey("body")) {
    try {
      body = options["body"];
    } catch (e) {}
  }
  var method = "get";
  if (options.containsKey("method") && options["method"] is String) {
    method = options["method"].toString().toLowerCase();
  }
  late Response response;
  if (method == "get") {
    response = await get(Uri.parse(url), headers: headers);
  } else if (method == "post") {
    response = await post(Uri.parse(url), body: body, headers: headers, encoding: encoding);
  } else if (method == "put") {
    response = await put(Uri.parse(url), body: body, headers: headers, encoding: encoding);
  } else if (method == "patch") {
    response = await patch(Uri.parse(url), body: body, headers: headers, encoding: encoding);
  } else if (method == "delete") {
    response = await delete(Uri.parse(url), body: body, headers: headers, encoding: encoding);
  } else if (method == "head") {
    response = await head(Uri.parse(url), headers: headers);
  } else {
    response = await get(Uri.parse(url), headers: headers);
  }
  return response;
}

extension OnFetch on Response {
  get text {
    return body;
  }

  Map? get jsonData {
    try {
      return json.decode(body);
    } catch (e) {
      print(e);
      return null;
    }

    return null;
  }
}

class FetchOption {
  late String method;
  late Map<String, String>? headers;
  late Object? body;
  FetchOption({
    required this.method,
    this.headers,
    this.body,
  });

  Map toJson() {
    return {
      "method": method,
      "headers": headers,
      "body": body,
    };
  }
}
