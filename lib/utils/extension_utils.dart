extension SaveMap on Map<String, dynamic> {
  addKeyWithObject(String key, dynamic value) {
    if (value != null) {
      this.addAll({key: value});
    }
  }
}

extension SaveList on List {
  addObject(dynamic obj) {
    if (obj != null) {
      this.add(obj);
    }
  }
}

extension SMHBool2String on bool {
  String smhToString() {
    return this ? '1' : '0';
  }
}

extension SMHSizeFormart on int {
  String sizeFormart() {
    int unit = 0;
    List formarts = ["B", "KB", "MB", "GB", "TB", "PB"];
    double size = this * 1.0;

    while (size >= 1024) {
      size = size / 1024;
      unit++;
    }
    return size.toStringAsFixed(2) + formarts[unit];
  }
}
