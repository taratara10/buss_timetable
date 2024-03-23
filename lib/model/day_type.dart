import 'package:clock/clock.dart';

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

extension ClockExtension on Clock {
  DayType get dayType {
    switch (this.now().weekday) {
      case DateTime.sunday:
        return DayType.holiday;
      case DateTime.saturday:
        return DayType.saturday;
      default:
        return DayType.weekday;
    }
  }
}
