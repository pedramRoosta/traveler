import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    required String text,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    Key? key,
  })  : _text = text,
        _fontSize = fontSize,
        _fontWeight = fontWeight,
        _fontStyle = fontStyle,
        super(key: key);

  final String _text;
  final double? _fontSize;
  final FontWeight? _fontWeight;
  final FontStyle? _fontStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontSize: _fontSize,
        fontWeight: _fontWeight,
        fontStyle: _fontStyle,
      ),
    );
  }
}
