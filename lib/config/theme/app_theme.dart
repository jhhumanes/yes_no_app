import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF5C11D4);

const List<Color> _themeColors = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0}): 
    assert(
      selectedColor >= 0 && selectedColor < _themeColors.length, 
      'Color entre 0 y ${_themeColors.length}'
    );

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _themeColors[selectedColor],
      // brightness: Brightness.dark,
    );
  }
}
