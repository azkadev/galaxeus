// ignore_for_file: unused_local_variable, non_constant_identifier_names

part of galaxeus_lib;

class WebSocketClient {
  late String url;
  late Iterable<String>? protocols;
  late Map<String, dynamic>? headers;
  late Duration? pingInterval;
  late bool isConnect = false;
  late EventEmitter event_emitter = EventEmitter();
  late List clients = [];
  late WebSocket socket;
  WebSocketClient(this.url, {this.protocols, this.headers, this.pingInterval, EventEmitter? eventEmitter}) {
    if (eventEmitter != null) {
      event_emitter = eventEmitter;
    }
  }

  String createClientId() {
    String randomString = getUuid(15);
    return randomString;
  }

  Future<void> connect() async {
    while (true) {
      await Future.delayed(Duration(milliseconds: 500));
      if (isConnect == false) {
        try {
          socket = await WebSocket.connect(
            url,
            protocols: protocols,
            headers: headers,
          );
          socket.pingInterval = pingInterval;
          StreamSubscription scoketListen = socket.listen(
            (event) {
              print(event);
              if (event is String && event.isNotEmpty) {
                try {
                  return event_emitter.emit(
                    "update",
                    null,
                    event,
                  );
                } catch (e) {
                  return;
                }
              }
            },
            onError: (a, b) {
              isConnect = false;
              print("error");
            },
            onDone: () async {
              isConnect = false;
              Timer.periodic(pingInterval ?? Duration(seconds: 2), (timer) async {
                try {
                  await connect();
                } catch (e) {}
                if (isConnect) {
                  timer.cancel();
                }
              });
              event_emitter.emit("update", null, {
                "@type": "connection",
                "status": "disconnect",
              });
            },
            cancelOnError: true,
          );
          isConnect = true;
          return;
        } catch (e) {
          print(e);
          if (e is SocketException) {
            isConnect = false;
          }
          try {
            await socket.done;
            await socket.close();
            event_emitter.emit("update", null, {
              "@type": "connection",
              "status": "disconnect",
            });
            await connect();
          } catch (e) {
            print(e);
          }
        }
      }
    }
  }

  Listener on(String name, Function(dynamic update) callback) {
    return event_emitter.on(name, null, (ev, context) {
      if (ev.eventData != null) {
        callback(ev.eventData);
        return;
      }
    });
  }

  void clientSend(String name, [data]) {
    return socket.add(data);
  }

  void clientSendJson(String name, [Map? data]) {
    data ??= {};
    return socket.add(json.encode(data));
  }
}
