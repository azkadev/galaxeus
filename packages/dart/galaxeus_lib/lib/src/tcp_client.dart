// ignore_for_file: non_constant_identifier_names, unused_local_variable, empty_catches

part of galaxeus_lib;

class TcpSocketClient {
  late EventEmitter emitter = EventEmitter();
  late Socket socket;
  late dynamic host;
  late int port;
  late dynamic sourceAddress;
  late int sourcePort = 0;
  late Duration? timeout;
  late bool isConnect = false;
  late Map connect_data = {};
  late Duration ping_interval;
  late String event_socket_invoke;
  late String event_socket_connection;
  late String event_socket_update;
  TcpSocketClient({
    required this.host,
    required this.port,
    this.sourceAddress,
    this.sourcePort = 0,
    this.timeout,
    Map? connectData,
    EventEmitter? eventEmitter,
    Duration? pingInterval,
    this.event_socket_invoke = "socket_invoke",
    this.event_socket_connection = "socket_connection",
    this.event_socket_update = "socket_update",
  }) {
    pingInterval ??= Duration(seconds: 1);
    ping_interval = pingInterval;
    if (connectData != null) {
      connect_data.addAll(connect_data);
    }
    if (eventEmitter != null) {
      emitter = eventEmitter;
    }
  }
  Listener on(String typeUpdate, dynamic Function(dynamic update) callback, Object? context) {
    return emitter.on(typeUpdate, context, (ev, context) {
      if (ev.eventData != null) {
        callback.call(ev.eventData);
        return;
      }
    });
  }

  Future<void> connect({
    void Function(dynamic data)? onDataUpdate,
    void Function(Map data)? onDataConnection,
  }) async {
    while (true) {
      await Future.delayed(Duration(milliseconds: 500));
      if (isConnect == false) {
        try {
          socket = await Socket.connect(
            host,
            port,
            sourceAddress: sourceAddress,
            sourcePort: sourcePort,
            timeout: timeout,
          );
          StreamSubscription<Uint8List> listen = socket.listen(
            (List<int> event) {
              if (onDataUpdate != null) {
                onDataUpdate.call(event);
              } else {
                return emitter.emit(event_socket_update, null, event);
              }
            },
            onError: (a, b) {
              isConnect = false;
            },
            onDone: () async {
              if (onDataConnection != null) {
                onDataConnection.call({"@type": "connection", "status": "disconnect"});
              } else {
                emitter.emit(event_socket_connection, null, {"@type": "connection", "status": "disconnect"});
              }
              isConnect = false;
              // await socket.done;
              // await socket.close();
              // await connect(
              //   onConnect: onConnect,
              //   onError: onError,
              //   onDone: onDone,
              // );
              Timer.periodic(ping_interval, (timer) async {
                if (onDataConnection != null) {
                  onDataConnection.call({
                    "@type": "connection",
                    "status": "reconnect",
                  });
                } else {
                  emitter.emit(event_socket_connection, null, {"@type": "connection", "status": "reconnect"});
                }
                try {
                  await connect(
                    onDataConnection: onDataConnection,
                    onDataUpdate: onDataUpdate,
                  );
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
            onDataConnection.call({"@type": "connection", "status": "connected"});
          } else {
            emitter.emit(event_socket_connection, null, {"@type": "connection", "status": "connected"});
          }
          break;
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
              emitter.emit(event_socket_connection, null, {
                "@type": "connection",
                "status": "reconnection",
              });
            }
            await connect(
              onDataConnection: onDataConnection,
              onDataUpdate: onDataUpdate,
            );
          } catch (e) {
            if (onDataConnection != null) {
              onDataConnection.call({
                "@type": "connection",
                "status": "reconnection",
              });
            } else {
              emitter.emit(event_socket_connection, null, {
                "@type": "connection",
                "status": "reconnection",
              });
            }
          }
        }
      }
    }
  }

  void send(List<int> data) {
    return socket.send(data);
  }

  void sendString(
    String data, {
    bool is_compress = false,
  }) {
    if (is_compress) {
      return send(gzip.encode(utf8.encode(data)));
    }
    return send(utf8.encode(data));
  }

  void sendJson(
    Map data, {
    bool is_compress = false,
  }) {
    if (is_compress) {
      return send(gzip.encode(utf8.encode(json.encode(data))));
    }
    return send(utf8.encode(json.encode(data)));
  }
}
