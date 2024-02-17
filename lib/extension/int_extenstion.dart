extension IntExtenstion on int {
  /// 0埋めをして2桁の文字列に変換する
  String toTwoDigit() {
    return toString().padLeft(2, '0');
  }
}
