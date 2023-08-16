import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF037E2E);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.pinkAccent,
  Colors.yellow,
  Colors.orange,
  Colors.greenAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Los Colores deben ser seleccionados entre el 0 y ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: _colorThemes[selectedColor],
        // brightness: Brightness.dark
    );
  }
}
