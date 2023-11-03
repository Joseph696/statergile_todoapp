import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: ColorScheme.light(
    primary: Colors.purple ,
    background: Color.fromARGB(255, 242, 240, 243)
  ),
  brightness: Brightness.light);

ThemeData darkMode = ThemeData(
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade800,
    background: Colors.grey.shade900,
  brightness: Brightness.dark));
