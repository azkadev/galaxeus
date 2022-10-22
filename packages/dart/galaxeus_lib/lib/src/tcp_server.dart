// ignore_for_file: non_constant_identifier_names

part of galaxeus_lib;

class TcpSocketServer { 
  late List<SocketClientData> sockets = [];
  EventEmitter emitter = EventEmitter();
  late String event_update;
  TcpSocketServer({
    this.event_update = "tcp_socket_update"

  });
  Listener on(String typeUpdate,
      Function(Object data, SocketClientData socket) callback) {
    return emitter.on(typeUpdate, null, (ev, context) {
      if (ev.eventData != null) {
        List data = ev.eventData as List;
        callback(data[0], data[1]);
        return;
      }
    });
  }

  Future<void> listen({
    required String host,
    required int port,
    required Function(SocketClientData socket, EventEmitter emitter) onConnect,
    required Function(SocketClientData socket, EventEmitter emitter) onDone,
  }) async {
    ServerSocket server = await ServerSocket.bind(host, port, shared: true);

    server.listen((Socket socket) async {
      try {
        late String socketId = "";
        Map stateData = {};
        //   while (true) {
        // await Future.delayed(Duration(milliseconds: 1));
        String randomId = getUuid(25);
        //   if (idExist(randomId) == false) {
        socketId = randomId;
        //  break;
        //}
        //}
        SocketClientData socketClient = SocketClientData(
          socket: socket,
          socket_id: socketId,
          stateData: stateData,
        );
        //sockets.add(socketClient);
        onConnect(socketClient, emitter);
        socket.listen(
          (List<int> event) async {
            if (event.isNotEmpty) {
              emitter.emit(event_update, null, [event, socketClient]);
            }
          },
          onDone: () async {
            onDone(socketClient, emitter);
            await socket.done;
            removeId(socketId);
          },
        );
      } catch (e) {
        print(e);
      }
    });
  }

  // invoke(String method, {Map? parameters, required Socket socketClient}) async {
  //   parameters ??= {};
  //   String uuid = getRandom(15);
  //   parameters["@extra"] = uuid;
  //   emit(socketClient, method, parameters);
  //   late Map result = {};
  //   on("update", (update, socketClient) {
  //     if (update["@extra"] == uuid) {
  //       result = update;
  //     }
  //   });
  //   while (true) {
  //     await Future.delayed(Duration(milliseconds: 1));
  //     if (result.isNotEmpty) {
  //       return result;
  //     }
  //   }
  // }

  bool idExist(String id) {
    for (var i = 0; i < sockets.length; i++) {
      SocketClientData loopData = sockets[i];
      if (loopData.socket_id == id) {
        return true;
      }
    }
    return false;
  }

  Future<bool> removeId(String id, {bool withClose = false}) async {
    for (var i = 0; i < sockets.length; i++) {
      SocketClientData loopData = sockets[i];
      if (loopData.socket_id == id) {
        if (withClose) {
          await loopData.socket.close();
        }
        sockets.removeAt(i);
        return true;
      }
    }
    return false;
  }

  SocketClientData? getSocketId(String socketId) {
    for (var i = 0; i < sockets.length; i++) {
      SocketClientData loopData = sockets[i];
      if (loopData.socket_id == socketId) {
        return loopData;
      }
    }
    return null;
  }
}

class SocketClientData {
  late Socket socket;
  late String socket_id;
  late Map stateData = {};
  SocketClientData({
    required this.socket,
    required this.socket_id,
    required this.stateData,
  });
}
