import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    Key? key,
    required String text,
    bool isBold = false,
    double fontSize = 30,
    Color color = Colors.black,
  })  : _text = text,
        _isBold = isBold,
        _fontSize = fontSize,
        _color = color,
        super(key: key);
  final String _text;
  final bool _isBold;
  final double _fontSize;
  final Color _color;
  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
        fontWeight: _isBold ? FontWeight.bold : null,
        fontSize: _fontSize,
        color: _color,
      ),
    );
  }
}
