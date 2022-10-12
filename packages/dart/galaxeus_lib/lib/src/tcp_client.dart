// ignore_for_file: non_constant_identifier_names, unused_local_variable, empty_catches

part of galaxeus_lib;

class TcpClient {
  late EventEmitter emitter = EventEmitter();
  late Socket socket;
  late dynamic host;
  late int port;
  late dynamic sourceAddress;
  late int sourcePort = 0;
  late Duration? timeout;
  late bool isConnect = false;
  late Map connect_data = {};
  TcpClient(
      {required this.host,
      required this.port,
      this.sourceAddress,
      this.sourcePort = 0,
      this.timeout,
      Map? connectData,
      EventEmitter? eventEmitter}) {
    if (connectData != null) {
      connect_data.addAll(connect_data);
    }
    if (eventEmitter != null) {
      emitter = eventEmitter;
    }
  }
  Listener on(
    String typeUpdate,
    Function(SocketData update) callback,
  ) {
    return emitter.on(typeUpdate, null, (ev, context) {
      if (ev.eventData is List<int>) {
        SocketData updateSocket =
            SocketData((ev.eventData as List<int>), type: "");
        callback(updateSocket);
        return;
      }
    });
  }

  Future<void> connect({
    required Function(Socket socket, EventEmitter emitter) onConnect,
    required Function(Object error, EventEmitter emitter) onError,
    required Function(EventEmitter emitter) onDone,
  }) async {
    late Socket socket;
    Listener listener = emitter.on("client_send", null, (ev, context) {
      if (ev.eventData is List<int>) {
        socket.add((ev.eventData as List<int>));
        return;
      }
    });
    while (true) {
      await Future.delayed(Duration(milliseconds: 500));
      if (isConnect == false) {
        try {
          socket = await Socket.connect(host, port);
          StreamSubscription<Uint8List> listen = socket.listen(
            (List<int> event) {
              return emitter.emit("update", null, event);
            },
            onError: (a, b) {
              isConnect = false;
            },
            onDone: () async {
              onDone(emitter);
              isConnect = false;
              emitter.off(listener);
              await socket.done;
              await socket.close();
              await connect(
                onConnect: onConnect,
                onError: onError,
                onDone: onDone,
              );
            },
            cancelOnError: true,
          );
          isConnect = true;
          onConnect(socket, emitter);
          break;
        } catch (e) {
          if (e is SocketException) {
            isConnect = false;
          }
          onError(e, emitter);
        }
      }
    }
  }

  void emit(
    String typeUpdate,
    List<int> data, {
    String event = "client_send",
  }) {
    return emitter.emit(event, null, data);
  }
}

class SocketData {
  late List<int> raw;
  late String type;
  SocketData(
    this.raw, {
    required this.type,
  });

  String get text {
    late String text = "";
    try {
      text = utf8.decode(raw);
    } catch (e) {}
    return text;
  }

  Map get toJson {
    late Map jsonData = {};
    try {
      jsonData = json.decode(utf8.decode(raw));
    } catch (e) {}
    return jsonData;
  }
}
