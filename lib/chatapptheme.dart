import 'package:flutter/material.dart';

class ChatAppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData().copyWith(
    // General
    useMaterial3: true,
    scaffoldBackgroundColor: const Color.fromARGB(255, 252, 236, 221),

    // AppBar
    appBarTheme: const AppBarTheme(
      color: Color.fromARGB(232, 226, 148, 148),
      foregroundColor: Colors.teal,
      iconTheme: IconThemeData(
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ),

    // Color Scheme
    colorScheme: const ColorScheme.light(
      background: Colors.cyan,
      primary: Color.fromARGB(255, 255, 194, 136),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      primaryContainer: Color.fromARGB(255, 77, 76, 76),
      onPrimaryContainer: Colors.amberAccent,
      secondary: Color.fromARGB(255, 0, 0, 0),
      onSecondary: Color.fromARGB(255, 255, 140, 46),
      tertiary: Color.fromARGB(255, 239, 48, 48),
      onTertiary: Colors.purple,
    ),

    // Card Theme
    cardTheme: const CardTheme(
      shape: LinearBorder(),
      margin: EdgeInsets.all(5),
      surfaceTintColor: Colors.pinkAccent,
      elevation: 15,
      color: Color.fromARGB(255, 242, 189, 114),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 0, 0, 0),
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromRGBO(0, 0, 0, 1),
        fontSize: 22.0,
      ),
      bodyMedium: TextStyle(
        color: Colors.black,
        fontSize: 16.0,
      ),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 254, 167, 47)),
    )),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      elevation: 20,
      iconSize: 40,
      shape: CircleBorder(),
    ),

    // Add more properties as needed for specific elements
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

    // Card Theme
    cardTheme: const CardTheme(
      shape: LinearBorder(),
      margin: EdgeInsets.all(5),
      surfaceTintColor: Colors.pinkAccent,
      elevation: 15,
      color: Color.fromARGB(255, 242, 189, 114),
    ),

    // Icon Theme
    iconTheme: const IconThemeData(
      color: Color.fromARGB(255, 0, 173, 181),
    ),

    // Text Theme
    textTheme: const TextTheme(
      titleMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 22.0,
      ),
      bodyMedium: TextStyle(
        color: Color.fromARGB(179, 255, 255, 255),
        fontSize: 16.0,
      ),
    ),

    // Elevated Button Theme
    elevatedButtonTheme: const ElevatedButtonThemeData(
        style: ButtonStyle(
      backgroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 0, 173, 181)),
    )),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Color.fromARGB(31, 77, 62, 62),
      elevation: 20,
      iconSize: 40,
      shape: CircleBorder(),
    ),

    // Add more properties as needed for specific elements
  );
}
