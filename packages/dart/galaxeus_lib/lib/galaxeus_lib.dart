library galaxeus_lib;

import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:http/http.dart';
import 'package:universal_io/io.dart';
export 'package:http/http.dart';
import 'package:collection/collection.dart';

part 'extension/list.dart';
part 'extension/map.dart';
part 'extension/string.dart';
part 'extension/tcp.dart';

part 'src/captcha.dart';
part 'src/device_id.dart';
part 'src/event_emitter.dart';
part 'src/fetch.dart';
part 'src/json_to_dart.dart';
part "src/json_to_message.dart";
part 'src/json_to_update.dart';
part 'src/production.dart';
part 'src/tcp_client.dart';
part 'src/tcp_server.dart';
part 'src/utils.dart';
part 'src/websocket_client.dart';

/// getRandom uuid for parameters @extra
String getUuid(int length, {String? text}) {
  var ch = '0123456789abcdefghijklmnopqrstuvwxyz';
  if (text != null && text.isNotEmpty) {
    ch = text;
  }
  Random r = Random();
  return String.fromCharCodes(
      Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
}

T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}
