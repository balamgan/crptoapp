// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constant/colorGenarator.dart';
import '../constant/colorpalates.dart';


ThemeData theme1(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Palettes.primary,
    primarySwatch: generateMaterialColor(Palettes.primary),
    highlightColor:Palettes.black,
    primaryColorLight: Palettes.greenlight,
    backgroundColor:Palettes.primary,
    secondaryHeaderColor:Palettes.white,

    fontFamily:
        'HelveticaNow', //HelveticaNow,SEGOEUIL,ayar,Ordina-WideThin,Celias-Medium*,
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),

    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Palettes.primary),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
            shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            backgroundColor: MaterialStateProperty.all<Color>(
                Palettes.primary.withOpacity(1)),
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(color: Colors.white, fontFamily: 'Segoe')))),

    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Palettes.primary),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Palettes.primary),
      ),
    ),

    iconTheme: IconThemeData(color: Colors.white),
  );
}

ThemeData theme2(BuildContext context) {
  return ThemeData(
    brightness: Brightness.light,
    primaryColor: Palettes.black,
    primarySwatch: generateMaterialColor(Palettes.black),
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Palettes.black),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)))),
    textTheme: TextTheme(
      displaySmall: TextStyle(fontFamily: 'Segoe'),
      displayLarge: TextStyle(fontFamily: 'Segoe'),
      displayMedium: TextStyle(fontFamily: 'Segoe'),
      headlineMedium: TextStyle(fontFamily: 'Segoe'),
      headlineSmall: TextStyle(fontFamily: 'Segoe'),
      titleLarge: TextStyle(fontFamily: 'Segoe'),
      bodyLarge: TextStyle(
        fontFamily: 'Segoe',
      ),
      bodyMedium: TextStyle(fontFamily: 'Segoe'),
      titleMedium: TextStyle(fontFamily: 'Segoe'),
      titleSmall: TextStyle(fontFamily: 'Segoe'),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Palettes.black),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Palettes.black),
      ),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );
}


//DARK
ThemeData darkTheme(BuildContext context) {
  return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: generateMaterialColor(Palettes.primary),
      primaryColorDark:
          Palettes.primary, //generateMaterialColor(Palette.primary),
      primaryColor: Palettes.primary,
      appBarTheme: AppBarTheme(
        backgroundColor: Palettes.primary,
        // foregroundColor: Colors.red,
      ),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Palettes.primary),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.symmetric(
                vertical: 10,
              ) //horizontal: 30
                  ),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Palettes.primary),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              // overlayColor:  MaterialStateProperty.all<Color>(Colors.black26),
              textStyle: MaterialStateProperty.all<TextStyle>(
                  TextStyle(color: Colors.white, fontFamily: 'Segoe')))),
      textTheme: TextTheme(
        displaySmall: TextStyle(fontFamily: 'Segoe'),
        displayLarge: TextStyle(fontFamily: 'Segoe'),
        displayMedium: TextStyle(fontFamily: 'Segoe'),
        headlineMedium: TextStyle(fontFamily: 'Segoe'),
        headlineSmall: TextStyle(fontFamily: 'Segoe'),
        titleLarge: TextStyle(fontFamily: 'Segoe'),
        bodyLarge: TextStyle(fontFamily: 'Segoe'),
        bodyMedium: TextStyle(fontFamily: 'Segoe'),
        titleMedium: TextStyle(fontFamily: 'Segoe'),
        titleSmall: TextStyle(fontFamily: 'Segoe'),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Palettes.primary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Palettes.primary),
        ),
      ),
      switchTheme: SwitchThemeData(
          trackColor: MaterialStateProperty.all<Color>(Colors.grey),
          thumbColor: MaterialStateProperty.all<Color>(Colors.white)),
      primaryIconTheme: IconThemeData(color: Colors.amber),
      iconTheme: IconThemeData(color: Colors.white));
}
