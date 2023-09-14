import 'package:flutter/material.dart';

class Menus {
  String name;
  String icon;
  Color color;
  Color? textColor = Colors.black;


  Menus(
      {
      required this.name,
      required this.color,
      required this.icon,
      this.textColor});
}