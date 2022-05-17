import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required String title,
    String? backgroundImage,
    String? description,
    double? width,
    double? heigth,
    IconData? descriptionIcon,
    Color? textColor,
    bool hasElevation = true,
    Key? key,
  })  : _title = title,
        _backgroundImage = backgroundImage,
        _description = description,
        _width = width,
        _heigth = heigth,
        _descriptionIcon = descriptionIcon,
        _textColor = textColor,
        _hasElevation = hasElevation,
        super(key: key);
  final String _title;
  final String? _backgroundImage;
  final String? _description;
  final double? _width;
  final double? _heigth;
  final IconData? _descriptionIcon;
  final Color? _textColor;
  final bool _hasElevation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: _hasElevation ? 20 : 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: _backgroundImage != null
              ? DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    _backgroundImage!,
                  ),
                )
              : null,
        ),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 5),
                child: Text(
                  _title,
                  style: TextStyle(
                      color: _textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
              if (_description != null)
                Row(
                  children: [
                    if (_descriptionIcon != null)
                      Flexible(
                        child: Icon(
                          _descriptionIcon!,
                          color: _textColor,
                        ),
                      ),
                    Flexible(
                      child: Text(
                        _description!,
                        softWrap: false,
                        style: TextStyle(
                          color: _textColor,
                        ),
                      ),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
