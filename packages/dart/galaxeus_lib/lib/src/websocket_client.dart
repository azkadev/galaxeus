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
  late String event_name_invoke;
  WebSocketClient(
    this.url, {
    this.protocols,
    this.headers,
    this.pingInterval,
    EventEmitter? eventEmitter,
    String eventNameUpdate = "update",
    String eventNameConnection = "connection",
    String eventNameInvoke = "invoke",
  }) {
    eventEmitter ??= EventEmitter();
    event_emitter = eventEmitter;
    event_name_update = eventNameUpdate;
    event_name_connection = eventNameConnection;
    event_name_invoke = eventNameInvoke;
  }

  String createClientId() {
    String randomString = getUuid(15);
    return randomString;
  }

  Future<void> connect({
    void Function(dynamic data)? onDataUpdate,
    void Function(Map data)? onDataConnection,
  }) async {
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
              if (onDataUpdate != null) {
                return onDataUpdate.call(event);
              } else {
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
              }
            },
            onError: (a, b) {
              isConnect = false;
            },
            onDone: () async {
              isConnect = false;
              if (onDataConnection != null) {
                onDataConnection.call({
                  "@type": "connection",
                  "status": "disconnect",
                });
              } else {
                event_emitter.emit(event_name_connection, null, {
                  "@type": "connection",
                  "status": "disconnect",
                });
              }
              Timer.periodic(pingInterval ?? Duration(seconds: 2),
                  (timer) async {
                try {
                  await connect(
                      onDataUpdate: onDataUpdate,
                      onDataConnection: onDataConnection);
                } catch (e) {}
                if (isConnect) {
                  timer.cancel();
                }
              });
            },
            cancelOnError: true,
          );
          isConnect = true;

          if (onDataConnection != null) {
            onDataConnection.call({
              "@type": "connection",
              "status": "connected",
            });
          } else {
            event_emitter.emit(event_name_connection, null, {
              "@type": "connection",
              "status": "connected",
            });
          }
          return;
        } catch (e) {
          if (e is SocketException) {
            isConnect = false;
          }
          try {
            await socket.done;
            await socket.close();
            if (onDataConnection != null) {
              onDataConnection.call({
                "@type": "connection",
                "status": "reconnection",
              });
            } else {
              event_emitter.emit(event_name_connection, null, {
                "@type": "connection",
                "status": "reconnection",
              });
            }
            await connect(
                onDataUpdate: onDataUpdate, onDataConnection: onDataConnection);
          } catch (e) {
            if (onDataConnection != null) {
              onDataConnection.call({
                "@type": "connection",
                "status": "reconnection",
              });
            } else {
              event_emitter.emit(event_name_connection, null, {
                "@type": "connection",
                "status": "reconnection",
              });
            }
          }
        }
      }
    }
  }

  Listener on(String name, Function(dynamic update) callback,
      {bool isThrowError = false}) {
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

  void clientSend(
    Object value, {
    bool is_compress = false,
  }) {
    if (is_compress) {
      if (value is String) {
        value = gzip.encode(utf8.encode(value));
      }
    }
    return socket.add(value);
  }

  void clientSendJson(
    Map value, {
    bool is_compress = false,
  }) {
    return clientSend(json.encode(value), is_compress: is_compress);
  }
}
