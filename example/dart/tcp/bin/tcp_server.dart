// import 'package:galaxeus_lib/galaxeus_lib.dart';
// import 'dart:async';
// import 'dart:core';
// import 'dart:io';

// void main(List<String> args) async {
//   TcpServer server = TcpServer(Platform.environment["HOST"] ?? "0.0.0.0", int.parse(Platform.environment["PORT"] ?? "8080"));
//   print("server on");
//   server.on("update", (Map update, SocketClientData socket) async {
//     await Future.delayed(Duration(milliseconds: 500));
//     print("update: ${DateTime.now().millisecondsSinceEpoch}");
//     print(update);
//     update["from"] = {
//       "id": "server",
//     };
//     update["socket_id"] = socket.socket_id;
//     socket.socket.send("update", update);
//     print("send: ${DateTime.now().millisecondsSinceEpoch}");
//   });

//   // Timer.periodic(Duration(seconds: 2), (tim) {
//   //   if (server.sockets.isNotEmpty) {
//   //     if (server.idExist(server.sockets[0].id)) {
//   //       try {
//   //         server.sockets[0].socket.send("update", {
//   //           "@type": "ping",
//   //           "from": {"id": "server"}
//   //         });
//   //       } catch (e) {}
//   //     }
//   //   }
//   // });
// }
