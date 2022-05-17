import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traveler/cubit/app_cubit.dart';
import 'package:traveler/routers/main_page.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);
  final items = <String>[
    'Home',
    'Destination',
    'About',
  ];
  final assetsAddress = 'assets/images/';
  final itemBackground = <String>[
    'welcome-one.png',
    'welcome-two.png',
    'welcome-three.png',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Lato',
      ),
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(),
        child: const MainPage(),
      ),
    );
  }
}
