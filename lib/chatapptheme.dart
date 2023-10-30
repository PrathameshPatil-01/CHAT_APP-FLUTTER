import 'package:flutter/material.dart';

class ChatAppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData().copyWith(
    // General
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),

    // AppBar
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 255, 46, 99),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
    ),

    // Color Scheme
    colorScheme: const ColorScheme.light(
      background: Color.fromARGB(255, 231, 180, 209),
      primary: Color.fromARGB(255, 255, 209, 218),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      primaryContainer: Color.fromARGB(255, 255, 255, 255),
      onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
      secondary: Color.fromARGB(233, 255, 255, 255),
      onSecondary: Color.fromARGB(255, 0, 0, 0),
      tertiary: Color.fromARGB(255, 255, 46, 99),
      onTertiary: Color.fromARGB(255, 255, 254, 255),
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
      ),
      titleMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      titleSmall: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      bodyLarge: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 18.0,
      ),
      bodyMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 17.0,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 14.0,
      ),
      labelLarge: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      labelMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 16.0,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 40, 40, 40),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      elevation: 10,
      iconSize: 30,
      shape: CircleBorder(),
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData().copyWith(
    // General
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 50, 50, 50),

    // AppBar
    appBarTheme: AppBarTheme(
      color: Colors.black,
      foregroundColor: Colors.grey[100],
    ),

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      background: Color.fromARGB(255, 65, 65, 65),
      primary: Color.fromARGB(255, 218, 0, 55),
      onPrimary: Color.fromARGB(255, 253, 253, 253),
      primaryContainer: Color.fromARGB(255, 80, 80, 80),
      onPrimaryContainer: Color.fromARGB(255, 255, 255, 255),
      secondary: Color.fromARGB(255, 0, 0, 0),
      onSecondary: Color.fromARGB(255, 255, 255, 255),
      tertiary: Color.fromARGB(255, 218, 0, 55),
      onTertiary: Color.fromARGB(255, 255, 255, 255),
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontWeight: FontWeight.bold,
        fontSize: 22.0,
      ),
      titleMedium: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 18.0,
      ),
      bodyLarge: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 18.0,
      ),
      bodyMedium: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 17.0,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 14.0,
      ),
      labelLarge: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
      labelMedium: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 16.0,
      ),
      labelSmall: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      displayLarge: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      displayMedium: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      displaySmall: TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),

    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 218, 0, 55),
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      elevation: 10,
      iconSize: 30,
      shape: CircleBorder(),
    ),

    // Add more properties as needed for specific elements
  );
}
