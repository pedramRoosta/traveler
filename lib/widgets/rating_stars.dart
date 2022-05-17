import 'package:flutter/material.dart';
import 'package:traveler/widgets/app_text.dart';

class RatingStars extends StatelessWidget {
  const RatingStars(
      {required int maxRating, required int currentRating, Key? key})
      : assert(
          currentRating <= maxRating,
        ),
        assert(currentRating >= 0),
        _maxRating = maxRating,
        _currentRating = currentRating,
        super(key: key);

  final int _currentRating;
  final int _maxRating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: _createStars(),
    );
  }

  List<Widget> _createStars() {
    final List<Widget> stars = List.generate(
      _maxRating,
      (index) {
        return Icon(
          Icons.star_outlined,
          color: index < _currentRating ? Colors.yellow : Colors.grey.shade300,
        );
      },
    );
    stars.add(
      Container(
        margin: const EdgeInsets.only(left: 4),
        child: AppText(
          text: '( $_currentRating )',
          fontSize: 17,
        ),
      ),
    );
    return stars;
  }
}
