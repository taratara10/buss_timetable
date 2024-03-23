import 'package:buss_timetable/model/day_type.dart';
import 'package:clock/clock.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('2024/1/1(月)は平日', () {
    fakeAsync(initialTime: DateTime(2024, 1, 1, 0, 0), (_) {
      expect(
        clock.dayType,
        DayType.weekday,
      );
    });
  });

  test('2024/1/6(土)は土曜', () {
    fakeAsync(initialTime: DateTime(2024, 1, 6, 0, 0), (_) {
      expect(
        clock.dayType,
        DayType.saturday,
      );
    });
  });

  test('2024/1/7(日)は祝日', () {
    fakeAsync(initialTime: DateTime(2024, 1, 7, 0, 0), (_) {
      expect(
        clock.dayType,
        DayType.holiday,
      );
    });
  });
}
