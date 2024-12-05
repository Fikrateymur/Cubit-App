import 'package:flutter/material.dart';

class ColorChoosed {
  ColorChoosed({
    required this.color,
    required this.name,
  });
  Color color;
  String name;
}

List<ColorChoosed> productColors = [
  ColorChoosed(
    color: Colors.amber,
    name: 'Amber',
  ),
  ColorChoosed(
    color: Colors.red,
    name: 'Red',
  ),
  ColorChoosed(
    color: Colors.brown,
    name: 'Brown',
  ),
  ColorChoosed(
    color: Colors.blue,
    name: 'Blue',
  ),
];
