import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class FeaturedHorizontalListItem extends StatelessWidget {
  const FeaturedHorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: AspectRatio(
        aspectRatio: 2.7 / 4.5,
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Color(0xff707070)),
              borderRadius: BorderRadius.circular(16),
              image: const DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(AssetsData.testPhoto))),
        ),
      ),
    );
  }
}
