// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ThemeChangeProvider with ChangeNotifier {
  var _themeMode = ThemeMode.dark;
  ThemeMode get themeMode => _themeMode;

  void setTheme(themeMode) {
    _themeMode = themeMode;
    notifyListeners();
  }
}
