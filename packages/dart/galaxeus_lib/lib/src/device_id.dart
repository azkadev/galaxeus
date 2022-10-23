part of galaxeus_lib;

DeviceId? getDeviceId({bool isGetProductId = false}) {
  if (Platform.isAndroid) {
    ProcessResult res = Process.runSync("settings", ["get", "secure", "android_id"]);
    return DeviceId(res);
  }

  if (Platform.isWindows) {
    ProcessResult res = Process.runSync("wmic", ["os", "get", "serialnumber"]);
    return DeviceId(res);
  }
  
  if (Platform.isLinux) {
    if (isGetProductId) {
      ProcessResult res = Process.runSync("dmidecode", ["-s", "system-uuid"]);
      return DeviceId(res);
    } else { 
      ProcessResult res = Process.runSync("cat", ["/etc/machine-id"]);
      return DeviceId(res);
    }
  }
  return null;
}

class DeviceId {
  late ProcessResult data;
  DeviceId(this.data);

  bool get isError {
    if (data.exitCode != 0) {
      return true;
    }
    return false;
  }

  String get errorMessage {
    return data.stderr.toString().replaceAll(RegExp(r"\n"), "");
  }

  String get deviceId {
    if (Platform.isWindows) {
      return RegExp(r"([a-z0-9]+)-([a-z0-9]+)-([a-z0-9]+)-([a-z0-9]+)", caseSensitive: false).stringMatch(data.stdout.toString().replaceAll(RegExp(r"\n"), "")) ?? "";
    }
    return data.stdout.toString().replaceAll(RegExp(r"\n"), "");
  }

  Map toJson() {
    if (!isError) {
      return {
        "@type": "device",
        "device_id": deviceId,
      };
    } else {
      return {"@type": "error", "message": errorMessage};
    }
  }
}
