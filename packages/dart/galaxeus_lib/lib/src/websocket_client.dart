// ignore_for_file: unused_local_variable, non_constant_identifier_names

part of galaxeus_lib;

class WebSocketClient {
  late String url;
  late Iterable<String>? protocols;
  late Map<String, dynamic>? headers;
  late Duration? pingInterval;
  late bool isConnect = false;
  late EventEmitter event_emitter;
  late List clients = [];
  late WebSocket socket;
  late String event_name_update;
  late String event_name_connection;
  WebSocketClient(
    this.url, {
    this.protocols,
    this.headers,
    this.pingInterval,
    EventEmitter? eventEmitter,
    String eventNameUpdate = "update",
    String eventNameConnection = "connection",
  }) {
    eventEmitter ??= EventEmitter();
    event_emitter = eventEmitter;
    event_name_update = eventNameUpdate;
    event_name_connection = eventNameConnection;
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
                    event_name_update,
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
              event_emitter.emit(event_name_connection, null, {
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
            event_emitter.emit(event_name_connection, null, {
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

  Listener on(String name, Function(dynamic update) callback, {bool isThrowError = false}) {
    return event_emitter.on(name, null, (ev, context) {
      try {
        if (ev.eventData != null) {
          callback.call(ev.eventData);
          return;
        }
      } catch (e) {
        if (isThrowError == false) {
          rethrow;
        }
      }
    });
  }

  void clientSend(value) {
    return socket.add(value);
  }

  void clientSendJson(Map value) {
    return socket.add(json.encode(value));
  }
}
