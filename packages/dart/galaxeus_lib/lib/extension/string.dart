part of galaxeus_lib;

extension GalaxeusExtensionString on String {
  String hideData({int start = 2, int end = 2}) {
    var message = "";
    var numStart = start;
    var numEnd = length - end;
    for (int i = 0; i < length; i++) {
      var loopData = this[i];
      if (i == numEnd) {
        numEnd--;
        message += loopData;
      } else if (i == numStart) {
        numStart++;
        message += "*";
      } else {
        message += loopData;
      }
    }
    return message;
  }
}
