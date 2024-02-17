import 'package:buss_timetable/clock/clock_ui_state.dart';
import 'package:buss_timetable/model/timetable.dart';
import 'package:clock/clock.dart';
import 'package:fake_async/fake_async.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Timetable sampleTimetable = Timetable(
    rows: [
      TimetableRow(hour: 9, minute: [5, 30]),
      TimetableRow(hour: 10, minute: [20, 30]),
    ],
    dayType: DayType.weekday,
  );

  test('foo', () {
    fakeAsync(initialTime: DateTime(2024, 3, 3, 9, 0), (_) {
      var result = sampleTimetable.toTimelineState(
        now: clock.now(),
        numberOfResult: 3,
      );
      expect(
        result,
        [
          TimelineState(departureTime: '09:05発', remainingTime: '5分後'),
          TimelineState(departureTime: '09:30発', remainingTime: '30分後'),
          TimelineState(departureTime: '10:20発', remainingTime: '1時間20分後'),
        ],
      );
    });
  });
}
