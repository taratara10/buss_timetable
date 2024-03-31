import 'package:buss_timetable/buss_theme_data.dart';
import 'package:buss_timetable/clock/clock_screen.dart';
import 'package:buss_timetable/repository/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  // `runApp` 関数が終わる前に何か処理を実行する場合はこのメソッドを呼び出す
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(
          await SharedPreferences.getInstance(),
        )
      ],
      child: const BussApp(),
    ),
  );
}

class BussApp extends StatelessWidget {
  const BussApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: bussThemeData,
      home: const ClockRoute(),
    );
  }
}
