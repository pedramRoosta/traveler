import 'package:flutter/material.dart';
import 'package:traveler/bases/base_view_model.dart';
import 'package:traveler/components/nav_bar/nav_bar_v.dart';
import 'package:traveler/setup.dart';

abstract class BaseView<T extends BaseViewModel> extends StatelessWidget {
  BaseView({Key? key}) : super(key: key) {
    viewModel = locateService<T>();
  }
  late final T viewModel;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: const NavBar(),
        body: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context);
}
