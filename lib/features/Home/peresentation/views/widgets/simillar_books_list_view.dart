import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/size_config.dart';
import 'featured_list_item.dart';

class SimillarBooksListView extends StatelessWidget {
  const SimillarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomBookImage(
            imageUrl: 'https://loremflickr.com/640/360',
          );
        },
      ),
    );
  }
}
