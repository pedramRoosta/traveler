import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: const [
            Positioned(
              left: 20,
              top: 20,
              child: Icon(
                Icons.menu,
              ),
            ),
            Positioned(
              right: 20,
              top: 20,
              child: Icon(Icons.person_outline),
            )
          ],
        ),
      ),
    );
  }
}
