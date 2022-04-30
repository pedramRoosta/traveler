import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveler/bases/base_view.dart';
import 'package:traveler/screen/home/home_m.dart';
import 'package:traveler/screen/home/home_vm.dart';
import 'package:traveler/widgets/text.dart';

class HomeView extends BaseView<HomeViewModel> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget buildBody(BuildContext context) {
    return BlocBuilder<HomeViewModel, HomeModel>(
      bloc: viewModel,
      builder: (context, state) {
        return const Center(
          child: AppText(text: 'Home screen'),
        );
      },
    );
  }
}
