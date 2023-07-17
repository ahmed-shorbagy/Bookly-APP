import 'package:flutter/cupertino.dart';

import '../../../../Home/peresentation/views/widgets/best_seller_list_item.dart';

class SearchResultListVIew extends StatelessWidget {
  const SearchResultListVIew({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSellerListITem(),
        );
      },
      itemCount: 6,
    );
  }
}
