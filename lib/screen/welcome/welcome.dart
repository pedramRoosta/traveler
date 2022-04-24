import 'package:flutter/material.dart';
import 'package:traveler/constants/assets.dart';
import 'package:traveler/widgets/button.dart';
import 'package:traveler/widgets/text.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  final imageList = <String>[
    Assets.welcomeImageOne,
    Assets.welcomeImageTwo,
    Assets.welcomeImageThree,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imageList.length,
        itemBuilder: (_, pageIndex) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(Assets.assetsRoot + imageList[pageIndex]),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const AppText(
                          text: 'Trips',
                          isBold: true,
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 40),
                          child: const AppText(
                            text: 'Discover a new world with us',
                            color: Colors.black54,
                          ),
                        ),
                        const AppButton(
                          text: 'Mehr infos',
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: List.generate(
                      3,
                      (index) => Container(
                        margin: const EdgeInsets.only(top: 4),
                        height: index == pageIndex ? 30 : 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
