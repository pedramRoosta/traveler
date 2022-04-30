import 'package:flutter/material.dart';
import 'package:traveler/widgets/text.dart';

class AppButton extends StatelessWidget {
  const AppButton({String? text, Key? key})
      : _text = text,
        super(key: key);

  final String? _text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _text != null
              ? AppText(
                  text: _text!,
                  color: Colors.white,
                )
              : Container(),
          const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
