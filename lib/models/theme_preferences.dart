enum ThemePreference { LIGHT, DARK }

class ThemePreferences {
  static ThemePreference _currentTheme = ThemePreference.LIGHT;

  static ThemePreference get theme => _currentTheme;

  static set theme(ThemePreference theme) {
    _currentTheme = theme;
  }
}
