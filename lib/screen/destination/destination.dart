import 'package:flutter/material.dart';
import 'package:traveler/bases/base_view.dart';
import 'package:traveler/widgets/text.dart';

class Destination extends BaseView {
  Destination({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: AppText(text: 'Destination Page'),
    );
  }
}
