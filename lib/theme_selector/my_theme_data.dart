import 'package:flutter/material.dart';

final myLightThemeData = ThemeData.from(
  // 色の指定は `ColorScheme` を使用することが推奨されている。
  // `DarkTheme` の方は `ColorScheme.dark()` を使用を推奨します。
  colorScheme: const ColorScheme.light().copyWith(
    primary: const Color(0xFFF0BC1B),
    onPrimary: Colors.white,
    onSecondary: Colors.white,
  ),
  textTheme: const TextTheme(
    button: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  ),
).copyWith(
  scaffoldBackgroundColor: const Color(0xFFF6F3F0),
  appBarTheme: const AppBarTheme(color: Color(0xFF76EEC6)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 2,
  ),
);

final myDarkThemeData = ThemeData.from(
  // 色の指定は `ColorScheme` を使用することが推奨されている。
  // `DarkTheme` の方は `ColorScheme.dark()` を使用を推奨します。
  colorScheme: const ColorScheme.dark().copyWith(
    primary: const Color(0xFFF3F3F3),
    onPrimary: Colors.black,
    onSecondary: Colors.black,
  ),
  textTheme: const TextTheme(
    button: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
  ),
).copyWith(
  scaffoldBackgroundColor: const Color(0xFF010612),
  appBarTheme: const AppBarTheme(color: Color(0xFF01392E)),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    elevation: 2,
  ),
);