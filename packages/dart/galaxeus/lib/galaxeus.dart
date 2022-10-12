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

  on(
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

  initIsolate({GalaxeusClient? galaxeusClient}) async {
    galaxeusClient ??= galaxeus_client;
  }

  Future<AppApiResponse> request({
    String? method,
    Map? parameters,
    String? extra,
    GalaxeusClient? galaxeusClient,
    bool isThrowError = false,
  }) async {
    parameters ??= {};
    galaxeusClient ??= galaxeus_client;
    if (method != null) {
      parameters["@type"] = method;
    }
    if (parameters["@type"] is String == false ||
        (parameters["@type"] is String &&
            (parameters["@type"] as String).isEmpty)) {
      return AppApiResponse(
          data: {"@type": "error", "message": "@type_must_be_add"});
    }

    if (galaxeusClient.galaxeusServer.protocolType ==
        GalaxeusProtocolType.http) {
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

    if (galaxeusClient.galaxeusServer.protocolType ==
        GalaxeusProtocolType.tcp) {}

    if (galaxeusClient.galaxeusServer.protocolType ==
        GalaxeusProtocolType.websocket) {}

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
  GalaxeusClient({
    this.token = "",
    required this.productionType,
    required this.galaxeusServer,
  });

  factory GalaxeusClient.http({
    required String token,
    ProductionType productionType = ProductionType.live,
  }) {
    return GalaxeusClient(
      token: token,
      productionType: productionType,
      galaxeusServer: GalaxeusServer.http(productionType: productionType),
    );
  }

  factory GalaxeusClient.tcp({
    ProductionType productionType = ProductionType.live,
  }) {
    return GalaxeusClient(
        productionType: productionType, galaxeusServer: GalaxeusServer.tcp());
  }

  factory GalaxeusClient.websocket({
    ProductionType productionType = ProductionType.live,
  }) {
    return GalaxeusClient(
        productionType: productionType,
        galaxeusServer: GalaxeusServer.websocket());
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
    late String url = "https://galaxeus-api.up.railway.app";
    if (productionType == ProductionType.dev) {
      url = "http://127.0.0.1:8080";
    }
    return GalaxeusServer(
      url_host: url,
      protocolType: GalaxeusProtocolType.websocket,
    );
  }
}
