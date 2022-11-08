part of galaxeus_lib;

extension TcpSendDataSocket on Socket {
  void send(List<int> data) {
    return add(data);
  }

  void sendString(
    String data, {
    bool isCompress = false,
  }) {
    if (isCompress) {
      return add(gzip.encode(utf8.encode(data)));
    }
    return add(utf8.encode(data));
  }

  void sendJson(
    Map data, {
    bool isCompress = false,
  }) {
    return sendString(json.encode(data), isCompress: isCompress);
  }
}
