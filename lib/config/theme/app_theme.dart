import 'package:flutter/material.dart';

const List<Color> colosList = [
  Colors.blue,
  Colors.red,
  Colors.amber,
  Colors.purple,
  Colors.teal,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0, 'Selected color must be greater then 0'),
        assert(selectedColor < colosList.length,
            'Selected color must be less or equal than ${colosList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colosList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));
}
