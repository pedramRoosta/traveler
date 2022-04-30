import 'package:flutter/material.dart';
import 'package:traveler/bases/base_view.dart';
import 'package:traveler/widgets/text.dart';

class About extends BaseView {
  About({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: AppText(text: 'About Page'),
    );
  }
}
