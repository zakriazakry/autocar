// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProviderTheme with ChangeNotifier {
  late ColorScheme _themeData;

  ProviderTheme(bool isDark) {
    _themeData = isDark ? const ColorScheme.dark() : const ColorScheme.light();
  }

  ColorScheme getTheme() {
    return _themeData;
  }

  void setTheme(ColorScheme theme) {
    _themeData = theme;
    notifyListeners();
  }
}
