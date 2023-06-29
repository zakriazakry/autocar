import 'package:autocars/main.dart';
import 'package:flutter/material.dart';

class ProvideLang extends ChangeNotifier {
  String lang = language;
  getLangauge() {
    return lang;
  }

  setlagauge(String lange) {
    lang = lange;
    notifyListeners();
  }
}
