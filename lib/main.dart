import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_selector/provider/shared_preferences_provider.dart';
import 'package:theme_selector/theme_selector/theme_selector_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(
    // 初期化によりエラー回避
    overrides: [
      sharedPreferencesProvider
          .overrideWithValue(await SharedPreferences.getInstance())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ref.watch(themeSelectorProvider),
      // 現在のテーマモード設定を監視
      home: const HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // <StateNotifier>ThemeSelectorのインスタンスを監視
    final themeSelector = ref.watch(themeSelectorProvider.notifier);
    // 現在選択されているThemeModeを監視
    final currentThemeMode = ref.watch(themeSelectorProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemCount: ThemeMode.values.length,
          itemBuilder: (_, index) {
            final themeMode = ThemeMode.values[index];
            return RadioListTile<ThemeMode>(
              value: themeMode, // ラジオボタンのvalue(ThemeModeのenum)
              groupValue: currentThemeMode, // 現在選択されているボタン
              onChanged: (newTheme) => themeSelector.changeAndSave(newTheme!),
              title: Text(describeEnum(themeMode)),
            );
          },
        ),
      ),
    );
  }
}
