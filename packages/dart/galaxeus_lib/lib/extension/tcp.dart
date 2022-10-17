part of galaxeus_lib;

extension TcpSendDataSocket on Socket {
  void send(List<int> data) {
    return add(data);
  }
  void sendString(String data) {
    return add(utf8.encode(data));
  }
  void sendJson(Map data) {
    return add(utf8.encode(json.encode(data)));
  }

}
