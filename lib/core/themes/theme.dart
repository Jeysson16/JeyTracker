import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade900,
    secondary: Colors.grey.shade700,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade600,
  ),
);
