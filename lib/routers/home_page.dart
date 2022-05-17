import 'dart:math';

import 'package:flutter/material.dart';
import 'package:traveler/widgets/app_card.dart';
import 'package:traveler/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const sizedBox40 = SizedBox(
  height: 30,
);

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final randomColors = [
    Colors.amber.shade200,
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.grey.shade200,
    Colors.yellow.shade200,
    Colors.red.shade200,
  ];
  final randomIcon = [
    Icons.track_changes,
    Icons.traffic,
    Icons.gamepad,
    Icons.dangerous,
    Icons.home,
    Icons.door_back_door,
  ];
  final randomString = [
    'track changes',
    'traffic',
    'gamepad',
    'dangerous',
    'home',
    'door back',
  ];
  final rnd = Random();
  @override
  Widget build(BuildContext context) {
    final _tabCtrl = TabController(length: 6, vsync: this);
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.menu),
                  Icon(Icons.person_outline),
                ],
              ),
              sizedBox40,
              const AppText(
                text: 'Description',
                fontSize: 25,
              ),
              sizedBox40,
              Container(
                child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator:
                      CircularTabIndicator(color: Colors.blue, radius: 4),
                  controller: _tabCtrl,
                  tabs: const [
                    Tab(
                      text: 'Inpiration',
                    ),
                    Tab(
                      text: 'Amusement',
                    ),
                    Tab(
                      text: 'Parks',
                    ),
                    Tab(
                      text: 'Parks',
                    ),
                    Tab(
                      text: 'Parks',
                    ),
                    Tab(
                      text: 'Parks',
                    )
                  ],
                ),
              ),
              sizedBox40,
              Container(
                height: 300,
                width: double.maxFinite,
                child: TabBarView(
                  controller: _tabCtrl,
                  children: [
                    ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: ((context, index) {
                        return AppCard(
                          width: 300,
                          heigth: 300,
                          title: 'title',
                          backgroundImage: 'assets/images/card_image/3.png',
                          hasElevation: false,
                        );
                      }),
                    ),
                    AppText(text: 'Second Tab'),
                    AppText(text: 'Third Tab'),
                    AppText(text: 'Forth Tab'),
                    AppText(text: 'Fifth Tab'),
                    AppText(text: 'Sixth Tab'),
                  ],
                ),
              ),
              sizedBox40,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  AppText(
                    text: 'Explore more',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  AppText(text: 'See all')
                ],
              ),
              sizedBox40,
              Container(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: randomColors[rnd.nextInt(6)]),
                            child: Icon(
                              randomIcon[rnd.nextInt(6)],
                              color: const Color.fromARGB(255, 121, 109, 214),
                            ),
                          ),
                          AppText(text: randomString[rnd.nextInt(6)]),
                        ],
                      );
                    })),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CircularTabIndicator extends Decoration {
  const CircularTabIndicator({
    required Color color,
    required double radius,
  })  : _color = color,
        _radius = radius;
  final Color _color;
  final double _radius;
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: _color, radius: _radius);
  }
}

class _CirclePainter extends BoxPainter {
  _CirclePainter({
    required Color color,
    required double radius,
  })  : _color = color,
        _radius = radius;
  final Color _color;
  final double _radius;
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final _paint = Paint();
    _paint.color = _color;
    _paint.isAntiAlias = true;
    final paintOffset = Offset(configuration.size!.width / 2 - _radius / 2,
        configuration.size!.height - 6);
    canvas.drawCircle(offset + paintOffset, _radius, _paint);
  }
}
