import 'package:flutter/material.dart';

import 'about_page.dart';
import 'bar_page.dart';
import 'home_page.dart';
import 'search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var pageIndex = 0;
  final pages = const [
    HomePage(),
    SearchPage(),
    BarPage(),
    AboutPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.shade400,
        onTap: onTap,
        currentIndex: pageIndex,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            label: 'Home Page',
            icon: Icon(Icons.mail_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Bar Page',
            icon: Icon(Icons.bar_chart_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Search Page',
            icon: Icon(Icons.search_outlined),
          ),
          BottomNavigationBarItem(
            label: 'about Page',
            icon: Icon(Icons.person_outline),
          ),
        ],
      ),
    );
  }

  void onTap(int index) {
    setState(() {
      pageIndex = index;
    });
  }
}
