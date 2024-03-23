enum DayType {
  weekday,
  saturday,
  holiday,
}

extension DayTypeExtension on DayType {
  String get stringValue {
    switch (this) {
      case DayType.weekday:
        return '平日';
      case DayType.saturday:
        return '土曜';
      case DayType.holiday:
        return '日曜/祝日';
    }
  }
}
