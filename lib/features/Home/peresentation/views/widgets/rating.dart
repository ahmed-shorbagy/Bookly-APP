import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Color(0xffFFDD4F),
              size: 14,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Text(
              '4.8',
              style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          const Opacity(
              opacity: .7,
              child: Text(
                '(2390)',
                style: Styles.textStyle14,
              ))
        ],
      ),
    );
  }
}
