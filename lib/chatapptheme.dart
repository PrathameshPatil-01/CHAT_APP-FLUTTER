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
      foregroundColor: Color.fromARGB(255, 0, 0, 0),
    ),

    // Color Scheme
    colorScheme: const ColorScheme.light(
      background: Color.fromARGB(255, 180, 219, 231),
      primary: Color.fromARGB(223, 8, 217, 214),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      primaryContainer: Color.fromARGB(255, 255, 255, 255),
      onPrimaryContainer: Color.fromARGB(255, 0, 0, 0),
      secondary: Color.fromARGB(255, 255, 255, 255),
      onSecondary: Color.fromARGB(255, 0, 0, 0),
      tertiary: Color.fromARGB(255, 255, 46, 99),
      onTertiary: Color.fromARGB(255, 255, 254, 255),
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 24.0,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 22.0,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 20.0,
      ),
      bodyLarge: TextStyle(
        color: Color.fromARGB(179, 0, 0, 0),
        fontSize: 18.0,
      ),
      bodyMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 16.0,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 14.0,
      ),
    ),
    

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 8, 217, 214),
      elevation: 20,
      iconSize: 40,
      shape: CircleBorder(),
    ),

  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData().copyWith(
    // General
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.black,

    // AppBar
    appBarTheme: const AppBarTheme(
      color: Colors.black,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 0, 173, 181),
      ),
    ),

    // Color Scheme
    colorScheme: const ColorScheme.dark(
      background: Colors.cyan,
      primary: Color.fromARGB(255, 61, 63, 67),
      onPrimary: Color.fromARGB(255, 253, 253, 253),
      primaryContainer: Color.fromARGB(255, 61, 57, 57),
      onPrimaryContainer: Colors.tealAccent,
      secondary: Color.fromARGB(255, 0, 173, 181),
      onSecondary: Color.fromARGB(255, 0, 173, 181),
      tertiary: Color.fromARGB(255, 17, 18, 18),
      onTertiary: Colors.lightBlue,
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
        fontSize: 24.0,
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 22.0,
      ),
      titleSmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 20.0,
      ),
      bodyLarge: TextStyle(
        color: Color.fromARGB(179, 0, 0, 0),
        fontSize: 18.0,
      ),
      bodyMedium: TextStyle(
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 16.0,
      ),
      bodySmall: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 14.0,
      ),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(31, 77, 62, 62),
      elevation: 20,
      iconSize: 40,
      shape: CircleBorder(),
    ),

    // Add more properties as needed for specific elements
  );
}
