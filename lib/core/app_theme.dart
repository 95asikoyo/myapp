import 'package:flutter/material.dart';

class AppTheme {
  // 🎨 Define your brand colors
  static const Color pureRed = Color(0xFFFF0000); // Pure red
  static const Color pureBlack = Color(0xFF000000); // Pure black
  static const Color lightGrey = Color(0xFFF5F5F5); // Background grey
  static const Color darkGrey = Color(0xFF444444); // Secondary text

  /// 🌞 Light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: pureRed,
    scaffoldBackgroundColor: Colors.white,

    colorScheme: const ColorScheme.light(
      primary: pureRed,
      secondary: pureBlack,
      background: Colors.white,
      surface: Colors.white,
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: pureBlack,
      foregroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: pureBlack,
      ),
      bodyMedium: TextStyle(fontSize: 16, color: pureBlack),
      bodySmall: TextStyle(fontSize: 14, color: darkGrey),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: pureRed,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: pureRed),
    ),

    cardTheme: CardThemeData(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      shadowColor: pureBlack.withOpacity(0.1),
    ),
  );

  /// 🌙 Dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: pureRed,
    scaffoldBackgroundColor: pureBlack,

    colorScheme: const ColorScheme.dark(
      primary: pureRed,
      secondary: Colors.white,
      background: pureBlack,
      surface: Color(0xFF121212), // typical dark surface
    ),

    appBarTheme: const AppBarTheme(
      backgroundColor: pureBlack,
      foregroundColor: Colors.white,
      elevation: 0,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),

    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyMedium: TextStyle(fontSize: 16, color: Colors.white),
      bodySmall: TextStyle(fontSize: 14, color: lightGrey),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: pureRed,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: pureRed),
    ),

    cardTheme: CardThemeData(
      color: Color(0xFF1E1E1E),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.3),
    ),
  );
}
