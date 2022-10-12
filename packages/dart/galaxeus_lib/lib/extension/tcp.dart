part of galaxeus_lib;

extension SendDataSocket on Socket {
  send(List<int> data) {
    return add(data);
  }
}
