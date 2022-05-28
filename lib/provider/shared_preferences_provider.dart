import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 初期値にはエラーを投げているが、アプリ起動時に初期化されるため問題なし
final sharedPreferencesProvider =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());
