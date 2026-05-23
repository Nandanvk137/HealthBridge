// =============================================================================
// CareSync — Theme Provider
// Manages dark/light mode state across the app via ChangeNotifier.
// =============================================================================

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../constants/app_constants.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;
  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  ThemeProvider() {
    _loadThemeFromPrefs();
  }

  /// Load saved theme preference from shared preferences
  Future<void> _loadThemeFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool(AppConstants.keyIsDarkMode) ?? false;
    notifyListeners();
  }

  /// Toggle between dark and light mode and persist the choice
  Future<void> toggleTheme() async {
    _isDarkMode = !_isDarkMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(AppConstants.keyIsDarkMode, _isDarkMode);
    notifyListeners();
  }
}
