import 'package:conversores/Useful/colorpalette.dart';
import 'package:conversores/screens/home.dart';
import 'package:flutter/material.dart';

final ThemeData temaPadrao = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: ColorPalette.corPrimaria,
    onPrimary: Colors.white,
    // Colors that are not relevant to AppBar in LIGHT mode:
    primaryVariant: ColorPalette.corPrimaria,
    secondary: ColorPalette.corDestaque,
    secondaryVariant: ColorPalette.corDestaque,
    onSecondary: Colors.white,
    background: Colors.grey,
    onBackground: Colors.grey,
    surface: Colors.grey,
    onSurface: Colors.grey,
    error: Colors.grey,
    onError: Colors.grey,
  ),
);

void main() {
  runApp( MaterialApp(
    title: "Conversores",
    debugShowCheckedModeBanner: false,
    theme: temaPadrao,
    //home: Home(),
    home: const Home(),
  ));
}