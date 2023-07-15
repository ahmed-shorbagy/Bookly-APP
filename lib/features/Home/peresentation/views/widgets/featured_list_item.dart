import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/size_config.dart';

class FeaturedHorizontalListItem extends StatelessWidget {
  const FeaturedHorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AssetsData.testPhoto))),
        ),
      ),
    );
  }
}
