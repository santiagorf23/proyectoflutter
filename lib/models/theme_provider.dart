import 'package:flutter/foundation.dart';
import 'theme_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemePreference _theme = ThemePreference.LIGHT;

  ThemePreference get theme => _theme;

  set theme(ThemePreference theme) {
    _theme = theme;
    notifyListeners();
  }

  bool get isDarkTheme => _theme == ThemePreference.DARK;

  void toggleTheme() {
    if (_theme == ThemePreference.LIGHT) {
      _theme = ThemePreference.DARK;
    } else {
      _theme = ThemePreference.LIGHT;
    }
    notifyListeners();
  }
}
