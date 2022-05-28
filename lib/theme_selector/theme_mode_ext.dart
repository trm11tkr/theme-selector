import 'package:flutter/material.dart';

// extension 拡張クラス名 on 既存クラス
// extendsと異なり、外部から既存クラス自体を拡張
extension ThemeModeExt on ThemeMode {
  String get subtitle {
    switch (this) {
      case ThemeMode.system:
        return '端末のシステム設定';
      case ThemeMode.light:
        return '明るいテーマ';
      case ThemeMode.dark:
        return '暗いテーマ';
    }
  }

  IconData get iconData {
    switch (this) {
      case ThemeMode.system:
        return Icons.settings;
      case ThemeMode.light:
        return Icons.sunny;
      case ThemeMode.dark:
        return Icons.shield_moon;
    }
  }
}