// =============================================================================
// CareSync — App Theme
// Defines the full light and dark theme for the application.
// Uses a modern indigo-to-violet gradient palette inspired by premium health apps.
// =============================================================================

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // ---------------------------------------------------------------------------
  // Brand Colors — Modern Indigo/Violet Healthcare Palette
  // ---------------------------------------------------------------------------
  static const Color primaryColor    = Color(0xFF4F46E5); // Indigo
  static const Color primaryLight    = Color(0xFF818CF8); // Light indigo
  static const Color primaryDark     = Color(0xFF3730A3); // Deep indigo
  static const Color secondaryColor  = Color(0xFF06B6D4); // Cyan accent
  static const Color accentColor     = Color(0xFF10B981); // Emerald green
  static const Color warningColor    = Color(0xFFF59E0B); // Amber
  static const Color errorColor      = Color(0xFFEF4444); // Red
  static const Color successColor    = Color(0xFF10B981); // Emerald

  // Light theme surfaces
  static const Color backgroundColor = Color(0xFFF8FAFF); // Very light blue-white
  static const Color surfaceColor    = Color(0xFFFFFFFF);
  static const Color cardColor       = Color(0xFFFFFFFF);
  static const Color dividerColor    = Color(0xFFE5E7EB);
  static const Color textPrimary     = Color(0xFF111827);
  static const Color textSecondary   = Color(0xFF6B7280);
  static const Color textHint        = Color(0xFF9CA3AF);

  // Dark theme surfaces
  static const Color darkBackground  = Color(0xFF0F172A); // Slate 900
  static const Color darkSurface     = Color(0xFF1E293B); // Slate 800
  static const Color darkCard        = Color(0xFF1E293B);
  static const Color darkDivider     = Color(0xFF334155);
  static const Color darkTextPrimary = Color(0xFFF1F5F9);
  static const Color darkTextSecond  = Color(0xFF94A3B8);

  // Role-specific accent colours
  static const Color doctorTheme     = Color(0xFF3B82F6); // Blue
  static const Color pharmacistTheme = Color(0xFF8B5CF6); // Violet
  static const Color patientTheme    = Color(0xFF4F46E5); // Indigo

  // Gradient presets
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF4F46E5), Color(0xFF7C3AED)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient patientGradient = LinearGradient(
    colors: [Color(0xFF4F46E5), Color(0xFF06B6D4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient doctorGradient = LinearGradient(
    colors: [Color(0xFF2563EB), Color(0xFF4F46E5)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient pharmacistGradient = LinearGradient(
    colors: [Color(0xFF7C3AED), Color(0xFFEC4899)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // ---------------------------------------------------------------------------
  // Light Theme
  // ---------------------------------------------------------------------------
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      scaffoldBackgroundColor: backgroundColor,
      colorScheme: const ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        surface: surfaceColor,
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: textPrimary,
      ),
      textTheme: _buildTextTheme(textPrimary, textSecondary),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: surfaceColor,
        foregroundColor: textPrimary,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.plusJakartaSans(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        iconTheme: const IconThemeData(color: textPrimary),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFFEEF2FF), width: 1),
        ),
        color: cardColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          side: const BorderSide(color: primaryColor, width: 1.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: GoogleFonts.plusJakartaSans(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFFF9FAFB),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: dividerColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: dividerColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: errorColor),
        ),
        labelStyle: GoogleFonts.plusJakartaSans(fontSize: 14, color: textSecondary),
        hintStyle: GoogleFonts.plusJakartaSans(fontSize: 14, color: textHint),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: surfaceColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: textSecondary,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      dividerTheme: const DividerThemeData(
        color: dividerColor,
        thickness: 1,
        space: 1,
      ),
      chipTheme: ChipThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Dark Theme
  // ---------------------------------------------------------------------------
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryLight,
      scaffoldBackgroundColor: darkBackground,
      colorScheme: const ColorScheme.dark(
        primary: primaryLight,
        secondary: secondaryColor,
        tertiary: accentColor,
        surface: darkSurface,
        error: errorColor,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: darkTextPrimary,
      ),
      textTheme: _buildTextTheme(darkTextPrimary, darkTextSecond),
      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: darkSurface,
        foregroundColor: darkTextPrimary,
        surfaceTintColor: Colors.transparent,
        titleTextStyle: GoogleFonts.plusJakartaSans(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: darkTextPrimary,
        ),
        iconTheme: const IconThemeData(color: darkTextPrimary),
      ),
      cardTheme: CardThemeData(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Color(0xFF334155), width: 1),
        ),
        color: darkCard,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryLight,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          textStyle: GoogleFonts.plusJakartaSans(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF1E293B),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: darkDivider),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: darkDivider),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: primaryLight, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: errorColor),
        ),
        labelStyle: GoogleFonts.plusJakartaSans(fontSize: 14, color: darkTextSecond),
        hintStyle: GoogleFonts.plusJakartaSans(fontSize: 14, color: darkTextSecond),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: darkSurface,
        selectedItemColor: primaryLight,
        unselectedItemColor: darkTextSecond,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
      ),
      dividerTheme: const DividerThemeData(
        color: darkDivider,
        thickness: 1,
        space: 1,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primaryLight,
        foregroundColor: Colors.white,
        elevation: 4,
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // Shared Text Theme Builder
  // ---------------------------------------------------------------------------
  static TextTheme _buildTextTheme(Color primary, Color secondary) {
    return GoogleFonts.plusJakartaSansTextTheme(
      TextTheme(
        displayLarge:  TextStyle(fontSize: 32, fontWeight: FontWeight.w800, color: primary),
        displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w700, color: primary),
        displaySmall:  TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: primary),
        headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w700, color: primary),
        headlineMedium:TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: primary),
        headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: primary),
        titleLarge:    TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: primary),
        titleMedium:   TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: primary),
        titleSmall:    TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: primary),
        bodyLarge:     TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: primary),
        bodyMedium:    TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: secondary),
        bodySmall:     TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: secondary),
        labelLarge:    TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: primary),
        labelMedium:   TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: secondary),
        labelSmall:    TextStyle(fontSize: 11, fontWeight: FontWeight.w500, color: secondary),
      ),
    );
  }
}
