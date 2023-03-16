import 'package:flutter/material.dart';

ThemeData themeData1 = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor:Color.fromARGB(47, 247, 247, 247),
    primarySwatch: Colors.blue,
    colorScheme: colorScheme,
    textTheme: textTheme,
    iconTheme: IconThemeData(color: colorScheme.onPrimary),
    cardTheme: cardTheme);

CardTheme cardTheme = CardTheme(
    surfaceTintColor: Colors.transparent,
    shadowColor: colorScheme.primary,
    color: colorScheme.secondary,
    elevation: 20,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ));

TextTheme textTheme = TextTheme(
  bodySmall: TextStyle(fontSize: 12, color: colorScheme.onSecondary),
  bodyMedium: TextStyle(fontSize: 15, color: colorScheme.onPrimary),
  titleSmall: TextStyle(fontSize: 13, color: colorScheme.onPrimary),
  titleMedium: TextStyle(
      fontSize: 16, fontWeight: FontWeight.bold, color: colorScheme.onPrimary),
);

ColorScheme colorScheme = const ColorScheme.light(
  primary: Color.fromARGB(162, 0, 0, 0),
  onPrimary: Color.fromARGB(255, 0, 0, 0),
  secondary: Color.fromARGB(170, 255, 255, 255),
  onSecondary: Colors.black,
  tertiary: Color.fromARGB(147, 252, 252, 252),
);
