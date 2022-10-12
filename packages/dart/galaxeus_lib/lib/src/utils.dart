part of galaxeus_lib;

String convertToAgo(int? timestamp) {
  try {
    Duration diff = DateTime.now().difference(
        DateTime.fromMillisecondsSinceEpoch(
            timestamp ?? DateTime.now().millisecondsSinceEpoch));
    if (diff.inDays >= 1) {
      return '${diff.inDays} day(s) ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hour(s) ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minute(s) ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} second(s) ago';
    } else if (diff.inMilliseconds >= 1) {
      return '${diff.inMilliseconds} millisecond(s) ago';
    } else if (diff.inMicroseconds >= 1) {
      return '${diff.inMicroseconds} microsecond(s) ago';
    } else {
      return "just now";
    }
  } catch (e) {
    return 'just now';
  }
}
