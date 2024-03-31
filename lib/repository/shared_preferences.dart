import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences.getInstance()が非同期でそのままだとFutureProviderを利用する必要がある
/// Providerで扱うために、main()でoverrideWithValueを呼び出して初期化を行う
/// ```
/// sharedPreferencesProvider.overrideWithValue(
///     await SharedPreferences.getInstance(),
///  )
///  ```
final sharedPreferencesProvider = Provider<SharedPreferences>((_) =>
    throw UnimplementedError('SharedPreferences has not been initialized.'));

enum PreferenceKey { selectedStationName }
