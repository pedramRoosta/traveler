import 'package:flutter/material.dart';
import 'package:traveler/widgets/app_card.dart';
import 'package:traveler/widgets/app_text.dart';
import 'package:traveler/widgets/rating_stars.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AppCard(
            title: 'title',
            description: 'description',
            heigth: 200,
            descriptionIcon: Icons.location_on,
            backgroundImage: 'assets/images/card_image/2.png',
            textColor: Colors.white,
          ),
          AppCard(
            hasElevation: false,
            title: 'title',
            description: 'description',
            heigth: 200,
            descriptionIcon: Icons.location_on,
            backgroundImage: 'assets/images/card_image/3.png',
            textColor: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),
          AppText(
            text: 'Description',
            fontSize: 40,
            fontStyle: FontStyle.italic,
          ),
          RatingStars(maxRating: 5, currentRating: 2),
        ],
      ),
    );
  }
}
