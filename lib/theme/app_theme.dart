import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 63, 147, 78);
  static const Color textColor = Colors.white;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 30,
      ),
      iconTheme: IconThemeData(color: textColor),
    ),

    //TextButtonTheme
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary)),
    //FloatingActionButtons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 5,
        shape: StadiumBorder(),
        foregroundColor: textColor),

    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
        elevation: 5,
      ),
    ),

    listTileTheme: const ListTileThemeData(iconColor: primary),

    scaffoldBackgroundColor: const Color.fromARGB(255, 214, 207, 207),

    //InputDecoraion
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
