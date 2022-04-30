import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.grey.shade900,
      unselectedItemColor: Colors.grey.shade500,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: buildItem(),
    );
  }

  List<BottomNavigationBarItem> buildItem() {
    final items = <BottomNavigationBarItem>[];
    const icons = <IconData>[
      Icons.apps,
      Icons.search,
      Icons.book,
      Icons.gavel,
    ];
    const labels = <String>[
      'Icons.apps',
      'Icons.search',
      'Icons.book',
      'Icons.gavel',
    ];
    for (var i = 0; i < icons.length; i++) {
      items.add(
        BottomNavigationBarItem(
          label: labels[i],
          icon: Icon(icons[i]),
        ),
      );
    }
    return items;
  }
}
