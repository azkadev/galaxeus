// ignore_for_file: non_constant_identifier_names

part of galaxeus_lib;

class TcpSocketServer {
  EventEmitter emitter = EventEmitter();
  late String event_update;
  late ServerSocket server;
  late SecureServerSocket server_secure;

  TcpSocketServer({this.event_update = "tcp_socket_update"});
  Future<void> listen({
    required String host,
    required int port,
    required Function(Socket socket, Uint8List data) onMessage,
    required Function(Socket socket) onOpen,
    required Function(Socket socket) onClose,
  }) async {
    server = await ServerSocket.bind(host, port, shared: true);
    server.listen(
      (Socket socket) async {
        onOpen.call(socket);
        socket.listen(
          (Uint8List data) async {
            onMessage.call(socket, data);
          },
          onDone: () async {
            onClose.call(socket);
          },
          cancelOnError: true,
        );
      },
      cancelOnError: true,
    );
  }

  Future<void> listenSecure({
    required String host,
    required int port,
    SecurityContext? context,
    required Function(SecureSocket socket, Uint8List data) onMessage,
    required Function(SecureSocket socket) onOpen,
    required Function(SecureSocket socket) onClose,
  }) async {
    server_secure = await SecureServerSocket.bind(host, port, context);

    server_secure.listen(
      (SecureSocket socket) async {
        onOpen.call(socket);
        socket.listen(
          (Uint8List data) async {
            onMessage.call(socket, data);
          },
          onDone: () async {
            onClose.call(socket);
          },
        );
      },
      cancelOnError: true,
    );
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

}
