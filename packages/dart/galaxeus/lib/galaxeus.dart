// ignore_for_file: non_constant_identifier_names, void_checks, unnecessary_brace_in_string_interps

library galaxeus;

import 'dart:async';
import 'dart:convert';

import 'package:galaxeus_core_apis/galaxeus_core_apis.dart';
import 'package:galaxeus_lib/galaxeus_lib.dart';

export 'package:galaxeus_core_apis/galaxeus_core_apis.dart';

enum GalaxeusProtocolType { http, tcp, websocket }

class Galaxeus {
  late EventEmitter event_mitter = EventEmitter();
  late GalaxeusClient galaxeus_client;
  Galaxeus({
    EventEmitter? eventEmitter,
    required GalaxeusClient galaxeusClient,
  }) {
    if (eventEmitter != null) {
      event_mitter = eventEmitter;
    }
    galaxeus_client = galaxeusClient;
  }

  Listener on(
    String event,
    context,
    Function(dynamic data) callback,
  ) {
    return event_mitter.on(event, context, (ev, context) {
      if (ev.eventData != null) {
        return callback(ev.eventData);
      }
    });
  }

  Future<void> initIsolate({
    GalaxeusClient? galaxeusClient,
  }) async {
    galaxeusClient ??= galaxeus_client;
    if (galaxeusClient.galaxeusServer.protocolType == GalaxeusProtocolType.websocket) {
      await galaxeusClient.webSocketClient.connect(
        onDataUpdate: (data) {
          if (data is String && data.isNotEmpty) {
            try {
              Map update = json.decode(data);
              if (update.containsKey("@extra")) {
                return event_mitter.emit(galaxeusClient!.webSocketClient.event_name_invoke, null, update);
              } else {
                return event_mitter.emit(galaxeusClient!.webSocketClient.event_name_update, null, update);
              }
            } catch (e) {}
          }
        },
        onDataConnection: (data) {
          print(data);
        },
      );
    }
    return;
  }

  Future<AppApiResponse> request({
    String? method,
    Map? parameters,
    String? extra,
    GalaxeusClient? galaxeusClient,
    bool isThrowError = false,
    bool isVoid = false,
  }) async {
    parameters ??= {};
    galaxeusClient ??= galaxeus_client;
    if (method != null) {
      parameters["@type"] = method;
    }
    if (parameters["@type"] is String == false || (parameters["@type"] is String && (parameters["@type"] as String).isEmpty)) {
      return AppApiResponse(data: {
        "@type": "error",
        "message": "@type_must_be_add",
      });
    }

    if (galaxeusClient.galaxeusServer.protocolType == GalaxeusProtocolType.http) {
      if (galaxeusClient.token.isEmpty) {
        return AppApiResponse(
          data: {
            "@type": "error",
            "message": "token_must_be_not_empty",
          },
        );
      }
      String url = "${galaxeusClient.galaxeusServer.url_host}/";
      if (galaxeusClient.productionType == ProductionType.sandbox) {
        url += "sandbox";
      } else {
        url += "api";
      }
      String body = json.encode(parameters);
      Map<String, dynamic> option = {
        "method": "post",
        "headers": {
          'Accept': 'application/json',
          "Access-Control-Allow-Origin": "*",
          "Content-Type": "application/json",
          "token": galaxeusClient.token,
        },
        "body": body
      };
      Response response = await fetch(url, options: option);
      return AppApiResponse(data: response.jsonData ?? {});
    }

    if (galaxeusClient.galaxeusServer.protocolType == GalaxeusProtocolType.tcp) {}

    if (galaxeusClient.galaxeusServer.protocolType == GalaxeusProtocolType.websocket) {
      if (isVoid) {
        galaxeusClient.webSocketClient.clientSendJson(parameters);
        return AppApiResponse(data: {"@type": "ok"});
      }
      late String extra = getUuid(15);
      if (parameters["@extra"] is String == false) {
        parameters["@extra"] = extra;
      } else {
        if ((parameters["@extra"] as String).isEmpty) {
          parameters["@extra"] = extra;
        }
        extra = parameters["@extra"];
      }
      DateTime dateTime = DateTime.now().add(galaxeusClient.invoke_time_out);
      late Map json_result = {};
      Listener listener = on(galaxeusClient.webSocketClient.event_name_invoke, null, (update) {
        if (update is Map) {
          if (update["@extra"] == extra) {
            json_result = update;
          }
        }
      });
      galaxeusClient.webSocketClient.clientSendJson(parameters);
      while (true) {
        await Future.delayed(Duration(milliseconds: 1));
        if (json_result.isNotEmpty) {
          event_mitter.off(listener);
          return AppApiResponse(data: json_result);
        } else {
          if (dateTime.isBefore(DateTime.now())) {
            event_mitter.off(listener);
            return AppApiResponse(data: {"@type": "error", "@extra": extra, "error_key": "request_api_time_out"});
          }
        }
      }
    }

    return AppApiResponse(data: {
      "@type": "error",
      "message": "protocol_not_found",
    });
  }

  Future<AppApiResponse> callApi({
    required AppApiRequest appApiRequest,
    String? extra,
    GalaxeusClient? galaxeusClient,
    bool isThrowError = false,
  }) async {
    if (appApiRequest.rawData["@type"] == "error") {
      if (isThrowError == false) {
        return AppApiResponse(data: appApiRequest.rawData);
      }
      return Future.error(AppApiResponse(data: appApiRequest.rawData));
    }
    return await request(
      parameters: appApiRequest.rawData,
      extra: extra,
      galaxeusClient: galaxeusClient,
      isThrowError: isThrowError,
    );
  }
}

class GalaxeusResponse {
  final Map data;
  GalaxeusResponse({required this.data});
}

class GalaxeusClient {
  late ProductionType productionType;
  late GalaxeusServer galaxeusServer;
  late String token;
  late WebSocketClient webSocketClient;
  late Duration invoke_time_out;
  GalaxeusClient({this.token = "", required this.productionType, required this.galaxeusServer, required this.webSocketClient, Duration? invokeTimeOut}) {
    invokeTimeOut ??= Duration(seconds: 10);
    invoke_time_out = invokeTimeOut;
  }

  factory GalaxeusClient.http({
    required String token,
    ProductionType productionType = ProductionType.live,
    Iterable<String>? protocols,
    Map<String, dynamic>? headers,
    Duration? pingInterval,
    EventEmitter? eventEmitter,
    String eventNameUpdate = "update",
    String eventNameConnection = "connection",
  }) {
    GalaxeusServer galaxeusServer = GalaxeusServer.http(productionType: productionType);
    return GalaxeusClient(
      token: token,
      productionType: productionType,
      galaxeusServer: galaxeusServer,
      webSocketClient: WebSocketClient(
        galaxeusServer.url_host,
        protocols: protocols,
        headers: headers,
        pingInterval: pingInterval,
        eventEmitter: eventEmitter,
        eventNameUpdate: eventNameUpdate,
        eventNameConnection: eventNameConnection,
      ),
    );
  }

  factory GalaxeusClient.tcp({
    ProductionType productionType = ProductionType.live,
    Iterable<String>? protocols,
    Map<String, dynamic>? headers,
    Duration? pingInterval,
    EventEmitter? eventEmitter,
    String eventNameUpdate = "update",
    String eventNameConnection = "connection",
  }) {
    return GalaxeusClient(
      productionType: productionType,
      galaxeusServer: GalaxeusServer.tcp(productionType: productionType),
      webSocketClient: WebSocketClient(
        GalaxeusServer.tcp().url_host,
        protocols: protocols,
        headers: headers,
        pingInterval: pingInterval,
        eventEmitter: eventEmitter,
        eventNameUpdate: eventNameUpdate,
        eventNameConnection: eventNameConnection,
      ),
    );
  }

  factory GalaxeusClient.websocket({
    Duration? invokeTimeOut,
    ProductionType productionType = ProductionType.live,
    Iterable<String>? protocols,
    Map<String, dynamic>? headers,
    Duration? pingInterval,
    EventEmitter? eventEmitter,
    String eventNameUpdate = "update",
    String eventNameConnection = "connection",
  }) {
    GalaxeusServer galaxeusServer = GalaxeusServer.websocket(
      productionType: productionType,
    );
    return GalaxeusClient(
      productionType: productionType,
      galaxeusServer: galaxeusServer,
      invokeTimeOut: invokeTimeOut,
      webSocketClient: WebSocketClient(
        galaxeusServer.url_host,
        protocols: protocols,
        headers: headers,
        pingInterval: pingInterval,
        eventEmitter: eventEmitter,
        eventNameUpdate: eventNameUpdate,
        eventNameConnection: eventNameConnection,
      ),
    );
  }
}

class GalaxeusServer {
  late String url_host;
  late GalaxeusProtocolType protocolType;
  GalaxeusServer({
    required this.url_host,
    required this.protocolType,
  });
  factory GalaxeusServer.http({
    ProductionType productionType = ProductionType.live,
  }) {
    late String url = "https://galaxeus-api.up.railway.app";
    if (productionType == ProductionType.dev) {
      url = "http://127.0.0.1:8080";
    }
    return GalaxeusServer(
      url_host: url,
      protocolType: GalaxeusProtocolType.http,
    );
  }
  factory GalaxeusServer.tcp({
    ProductionType productionType = ProductionType.live,
  }) {
    late String url = "https://galaxeus-api.up.railway.app";
    if (productionType == ProductionType.dev) {
      url = "http://127.0.0.1:8080";
    }
    return GalaxeusServer(
      url_host: url,
      protocolType: GalaxeusProtocolType.tcp,
    );
  }
  factory GalaxeusServer.websocket({
    ProductionType productionType = ProductionType.live,
  }) {
    late String url = "wss://galaxeus-api.up.railway.app/app";
    if (productionType == ProductionType.dev) {
      url = "ws://0.0.0.0:8080/app";
    }
    return GalaxeusServer(
      url_host: url,
      protocolType: GalaxeusProtocolType.websocket,
    );
  }
}
