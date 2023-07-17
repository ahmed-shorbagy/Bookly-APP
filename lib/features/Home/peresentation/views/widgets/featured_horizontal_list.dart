import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import 'featured_list_item.dart';

class FeaturedHorizontalList extends StatelessWidget {
  const FeaturedHorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 47,
      ),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 22,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const FeaturedHorizontalListItem();
          },
        ),
      ),
    );
  }
}
