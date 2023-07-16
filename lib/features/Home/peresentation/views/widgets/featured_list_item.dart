import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedHorizontalListItem extends StatelessWidget {
  const FeaturedHorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.testPhoto))),
        ),
      ),
    );
  }
}
